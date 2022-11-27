package com.example.jpa_web_cnpm;

import com.example.data.TransactionAccount_DAO;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Date;

@WebServlet(name = "payment", value = "/payment")
public class Payment extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        HttpSession session = req.getSession();
        String url = "";

        if(action.equals("payment")){
            String account_src = req.getParameter("account-number-source");
            String available_amount = req.getParameter("available-amount");
            String service = req.getParameter("service");
            String provider = req.getParameter("provider");
            String customer_code = req.getParameter("customer-code");
            String payments = req.getParameter("payments");
            String content = "";
            String account_dist = "";
            Date now = new Date();
            String name_transaction= "";

            TransferEntity transfer = new TransferEntity();

            if(service.equals("1")==true && provider.equals("1")==true){
                content = customer_code + "_Dong_Tien_Dien";
                transfer.setName("Thanh toán tiền điện");
                account_dist = "1111111111";
            } else if (service.equals("2")==true && provider.equals("2")==true) {
                content = customer_code + "_Dong_Tien_Nuoc";
                transfer.setName("Thanh toán tiền nước");
                account_dist = "2222222222";
            }

            if(service.equals("1")){
                service = "Điện";
            } else if (service.equals("2")) {
                service = "Nước";
            }

            if(provider.equals("1")){
                provider = "Điện lực TPHCM";
            } else if (provider.equals("2")) {
                provider = "Nhà máy cung cấp nước TPHCM";
            }

            req.setAttribute("account_src", account_src);
            req.setAttribute("available_amount", available_amount);
            req.setAttribute("service", service);
            req.setAttribute("provider", provider);
            req.setAttribute("customer_code", customer_code);
            req.setAttribute("content", content);
            req.setAttribute("payments", payments);

            transfer.setCreateTime(new Timestamp(now.getTime()));
            transfer.setAccountSrc(account_src);
            transfer.setAccountDist(account_dist);
            transfer.setFee(Double.valueOf(0));
            transfer.setAmount(Double.valueOf(payments));
            transfer.setContent(content);
            session.setAttribute("transfer", transfer);

            url = "/views/customer/transaction/payment/payment-detail.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else if (action.equals("payment-detail")){
            System.out.println(session.getAttribute("transfer"));
            Transfer_detail transfer_detail = new Transfer_detail();
            transfer_detail.Transfer_Money(req, resp);

            resp.sendRedirect("/payment");
        } else if (action.equals("cancel")) {
            resp.sendRedirect("/home");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String action = req.getParameter("action");

        if(session.getAttribute("username") == null){
            String url = "/home";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/views/customer/transaction/payment/payment.jsp";
            DecimalFormat df = new DecimalFormat("#,###.##");
            String account = session.getAttribute("username").toString();
            TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account);

            Double tmp = (Double) transactionAccountEntity.getBalance();
            req.setAttribute("balance", df.format(tmp));
            req.setAttribute("transaction", transactionAccountEntity);

            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
}

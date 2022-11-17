package com.example.jpa_web_cnpm;

import com.example.data.TransactionAccount_DAO;
import com.example.data.Transfer_DAO;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "Tranfer", value = "/transfer")
public class Transfer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        Cookie[] c = cookies;

        if(c == null || c.length == 1){
            String url = "/home";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/WEB-INF/account.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
//        String url = "/WEB-INF/account.jsp";
//
//        getServletContext().getRequestDispatcher(url)
//                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = ""; // Error page
        String cardNumber = req.getParameter("cardNumber");
        String action = req.getParameter("action");

        // Thông tin mẫu
        String name_Transfer = "def";
        Double amount_Transfer = new Double(1000000);
        String state_Transfer = "def";
        String content_Transfer = "Goi tien cho Dong";
        String charge_option_Transfer = "1";
        Double fee_Tansfer = new Double(2000);
        Date now = new Date();
        Timestamp create_time_Transfer = new Timestamp( now.getTime());
        String account_src_Transfer = "0382255077";
        String account_dist_Transfer = "0382255011";
        // Thông tin mẫu


        TransferEntity transfer = new TransferEntity();
        transfer.setName(name_Transfer);
        transfer.setAmount(amount_Transfer);
        transfer.setState(state_Transfer);
        transfer.setContent(content_Transfer);
        transfer.setChargeOption(charge_option_Transfer);
        transfer.setFee(fee_Tansfer);
        transfer.setCreateTime(create_time_Transfer);
        transfer.setAccountSrc(account_src_Transfer);
        transfer.setAccountDist(account_dist_Transfer);

//        Đoạn code để khi chuyển khoản từ tài khoản đích tới tài khoản nguồn

        TransactionAccountEntity check_account_src = TransactionAccount_DAO.getTransactionAccountEntity(account_src_Transfer);
        TransactionAccountEntity check_account_dist = TransactionAccount_DAO.getTransactionAccountEntity(account_dist_Transfer);

        float result_DES = check_account_src.getBalance().floatValue();
        float tmp_amount = transfer.getAmount().floatValue();
        float tmp_fee = transfer.getFee().floatValue();
        result_DES = result_DES - tmp_fee - tmp_amount;
        if(check_account_dist !=null && check_account_src !=null && result_DES > 0){
            Transfer_DAO.Insert_Transfer(transfer);

            // Cập nhật số tiền trong tài khoản của người chuyen tien

            check_account_src.setBalance(Double.valueOf(result_DES));
            TransactionAccount_DAO.Update_Des_TransactonAccount(check_account_src);
            System.out.println(check_account_dist);

            // Cập nhật số tiền trong tài khoản của người nhận tiên
            float result_INC = check_account_dist.getBalance().floatValue();
            result_INC = result_INC + tmp_amount;
            check_account_dist.setBalance(Double.valueOf(result_INC));
            TransactionAccount_DAO.Update_Inc_TransactonAccount(check_account_dist);
            System.out.println(check_account_src);
        }

//        -------------------------------------------------------------------------------------------------------

        if(action == null){
            action = "transfer";
        }

        if(action == "transfer"){
            url = "/index.jsp";
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(req, resp);
    }
}

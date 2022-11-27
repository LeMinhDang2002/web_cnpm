package com.example.jpa_web_cnpm;

import com.example.data.TransactionAccount_DAO;
import com.example.data.Transfer_DAO;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;

@WebServlet(name = "transfer-detail", value = "/transfer-detail")
public class Transfer_detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String action = req.getParameter("action");
        if(action == null){
            action = "transfer-detail";
        }
        if(session.getAttribute("username") == null){
            String url = "/home";
            resp.sendRedirect(url);
        }
        else
        {
            if(action.equals("transfer-detail")) {
                String url = "/views/customer/transaction/transfer/transfer-detail.jsp";
                DecimalFormat df = new DecimalFormat("#,###.##");
                String account = session.getAttribute("username").toString();
                TransferEntity transfer = (TransferEntity) session.getAttribute("transfer");
                TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account);

                Double tmp = (Double) transactionAccountEntity.getBalance();
                req.setAttribute("balance", df.format(tmp));
                req.setAttribute("transfer", transfer);

                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
            else if(action.equals("return-transfer")){
                resp.sendRedirect("/home");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String action = req.getParameter("action");
        if(action.equals("transfer-detail")){
            Transfer_Money(req, resp);
            resp.sendRedirect("/transfer");
        }
        else if (action.equals("return-transfer")){
            resp.sendRedirect("/transfer");
        }
    }
    public void Transfer_Money(HttpServletRequest req, HttpServletResponse resp){
        HttpSession session = req.getSession();
        TransferEntity transfer = (TransferEntity) session.getAttribute("transfer");

        TransactionAccountEntity account_src = TransactionAccount_DAO.getTransactionAccountEntity(transfer.getAccountSrc());
        TransactionAccountEntity account_dist = TransactionAccount_DAO.getTransactionAccountEntity(transfer.getAccountDist());

        Double balance_src = Double.valueOf(account_src.getBalance());
        Double balance_dist = Double.valueOf(account_dist.getBalance());

        Double fee = Double.valueOf(transfer.getFee());
        Double amount = Double.valueOf(transfer.getAmount());

        balance_src = balance_src - amount -fee;
        balance_dist = balance_dist + amount;

        account_src.setBalance(balance_src);
        account_dist.setBalance(balance_dist);

        TransactionAccount_DAO.Update_Inc_TransactonAccount(account_dist);
        TransactionAccount_DAO.Update_Des_TransactonAccount(account_src);
        Transfer_DAO.Insert_Transfer(transfer);
    }
}

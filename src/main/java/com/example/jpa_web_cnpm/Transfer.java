package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.data.TransactionAccount_DAO;
import com.example.data.Transfer_DAO;
import com.example.entity.AccountEntity;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.*;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.function.DoubleUnaryOperator;

@WebServlet(name = "Transfer", value = "/transfer")
public class Transfer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String action = req.getParameter("action");
        if(action == null){
            action = "transfer";
        }
        if(session.getAttribute("username") == null){
            String url = "/home";
            resp.sendRedirect(url);
        }
        else
        {
            if(action.equals("transfer")) {
                String url = "/views/customer/transaction/transfer/transfer.jsp";
                DecimalFormat df = new DecimalFormat("#,###.##");
                String account = session.getAttribute("username").toString();
                TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account);

                Double tmp = (Double) transactionAccountEntity.getBalance();
                req.setAttribute("balance", df.format(tmp));
                req.setAttribute("transaction", transactionAccountEntity);

                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
            else if(action.equals("cancel")){
                resp.sendRedirect("/home");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
//        session.setMaxInactiveInterval(300);
        String action = req.getParameter("action");
        if(action.equals("transfer")){
            String url = "/views/customer/transaction/transfer/transfer-detail.jsp";
            Date now = new Date();

            TransferEntity transfer = new TransferEntity();
            transfer.setAccountSrc(req.getParameter("account-number-source"));
            transfer.setAccountDist(req.getParameter("account-number-destination"));
            transfer.setAmount(Double.valueOf(req.getParameter("amount")));
            transfer.setContent(req.getParameter("content"));
            transfer.setCreateTime(new Timestamp(now.getTime()));
            transfer.setFee(Double.valueOf(req.getParameter("amount"))*0.003);
            transfer.setName("Transfer");

            TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(transfer.getAccountDist());
//            System.out.println(transfer);
            if(TransactionAccount_DAO.check_Transaction_account(transfer.getAccountDist())){
                session.setAttribute("transfer", transfer);
                DecimalFormat df = new DecimalFormat("#,###.##");
                TransactionAccountEntity SRC = TransactionAccount_DAO.getTransactionAccountEntity(transfer.getAccountSrc().toString());
                Double tmp = (Double) SRC.getBalance();
                req.setAttribute("balance", df.format(tmp));
                resp.sendRedirect("/transfer-detail");
//                url = "/views/customer/transaction/transfer/transfer-detail.jsp";
            }
            else {
                url = "/views/customer/transaction/transfer/transfer.jsp";
                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
        }
    }
    private void Transfer_Money(HttpServletRequest req, HttpServletResponse resp){
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

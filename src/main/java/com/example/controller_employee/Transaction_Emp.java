package com.example.controller_employee;

import com.example.data.AccountDAO;
import com.example.data.TransactionAccount_DAO;
import com.example.data.Transfer_DAO;
import com.example.entity.AccountEntity;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Date;

@WebServlet(name = "transaction_emp", value = "/transaction_emp")
public class Transaction_Emp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/views/employee/transaction/tran-identify.jsp";
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action.equals("cancel")){
            resp.sendRedirect("/home");
        } else if (action.equals("tran-identify")) {
            String url = "/views/employee/transaction/tran-info-customer.jsp";
            String identify = req.getParameter("identify");
            AccountEntity account = AccountDAO.getIdentify(identify);
            TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account.getNumberPhone());
            if (account == null){
                resp.sendRedirect("/transaction_emp");
            }
            else {
                DecimalFormat df = new DecimalFormat("#,###.##");
                req.setAttribute("account", account);
                req.setAttribute("balance",df.format((Double) transactionAccountEntity.getBalance()) );
                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
        }
        else if (action.equals("tran-info-customer")) {
            String url = "/views/employee/transaction/tran-transfer.jsp";
            String account = req.getParameter("account");
            String balance = req.getParameter("balance");

            req.setAttribute("account", account);
            req.setAttribute("balance", balance);
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        } else if (action.equals("tran-transfer")) {
            TransferEntity transfer = new TransferEntity();

            String account_src = req.getParameter("account");
            String balance = req.getParameter("balance");
            String account_dist = req.getParameter("account-dist");
            String value = req.getParameter("select_money");
            Double amount = Double.valueOf(0);
            String content = req.getParameter("content");

            if(value.equals("7")){
                amount = Double.valueOf(req.getParameter("differ-money"));
            } else if (value.equals("1")) {
                amount = Double.valueOf(100000);
            }else if (value.equals("2")) {
                amount = Double.valueOf(200000);
            }else if (value.equals("3")) {
                amount = Double.valueOf(500000);
            }else if (value.equals("4")) {
                amount = Double.valueOf(1000000);
            }else if (value.equals("5")) {
                amount = Double.valueOf(2000000);
            }else if (value.equals("6")) {
                amount = Double.valueOf(5000000);
            }

            Double fee = amount*0.01;
            Date now = new Date();

            TransactionAccountEntity transactionAccount_SRC = TransactionAccount_DAO.getTransactionAccountEntity(account_src);
            TransactionAccountEntity transactionAccount_DIST = TransactionAccount_DAO.getTransactionAccountEntity(account_dist);

            Double balance_src = transactionAccount_SRC.getBalance();
            Double balance_dist = transactionAccount_DIST.getBalance();

            balance_src = balance_src - amount - fee;
            balance_dist = balance_dist + amount;

            transactionAccount_SRC.setBalance(balance_src);
            transactionAccount_DIST.setBalance(balance_dist);

            TransactionAccount_DAO.Update_Inc_TransactonAccount(transactionAccount_DIST);
            TransactionAccount_DAO.Update_Des_TransactonAccount(transactionAccount_SRC);

            transfer.setName("Chuyển khoản");
            transfer.setCreateTime(new Timestamp(now.getTime()));
            transfer.setAmount(amount);
            transfer.setFee(fee);
            transfer.setContent(content);
            transfer.setAccountSrc(account_src);
            transfer.setAccountDist(account_dist);
            Transfer_DAO.Insert_Transfer(transfer);

            resp.sendRedirect("/transaction_emp");
        }
    }
}

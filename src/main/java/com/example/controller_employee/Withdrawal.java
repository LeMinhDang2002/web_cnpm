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
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Date;

@WebServlet(name = "withdrawal", value = "/withdrawal")
public class Withdrawal extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/views/employee/withdrawal/withdrawal-identify.jsp";
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action.equals("cancel")){
            resp.sendRedirect("/home");
        }
        else if (action.equals("continue")){
            String url = "/views/employee/withdrawal/withdrawal-info-customer.jsp";
            String identify = req.getParameter("identify");

            AccountEntity account = AccountDAO.getIdentify(identify);
            TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account.getNumberPhone());
            if (account == null){
                resp.sendRedirect("/withdrawal");
            }
            else {
                DecimalFormat df = new DecimalFormat("#,###.##");
                req.setAttribute("account", account);
                req.setAttribute("balance",df.format((Double) transactionAccountEntity.getBalance()) );
                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
        } else if (action.equals("withdrawal-info-customer")) {
            String url = "/views/employee/withdrawal/withdrawal.jsp";

            String account = req.getParameter("account");
            String balance = req.getParameter("balance");
            req.setAttribute("account", account);
            req.setAttribute("balance", balance);

            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        } else if (action.equals("withdrawal")) {
            DecimalFormat df = new DecimalFormat("#,###.##");
            String account = req.getParameter("account");
            String value = req.getParameter("select_money");
            Double amount = Double.valueOf(0);
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
            TransactionAccountEntity transactionAccountEntity = TransactionAccount_DAO.getTransactionAccountEntity(account);
            Double result = Double.valueOf(transactionAccountEntity.getBalance()) - amount;
            transactionAccountEntity.setBalance(result);
            TransactionAccount_DAO.Update_Des_TransactonAccount(transactionAccountEntity);
            TransferEntity transfer = new TransferEntity();

            Date now = new Date();
            transfer.setCreateTime(new Timestamp(now.getTime()));
            transfer.setName("Rút tiền");
            transfer.setAmount(amount);
            transfer.setAccountSrc(account);

            Transfer_DAO.Insert_Transfer(transfer);

            resp.sendRedirect("/withdrawal");
        }
    }
}

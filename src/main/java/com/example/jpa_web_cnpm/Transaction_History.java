package com.example.jpa_web_cnpm;

import com.example.data.TransactionAccount_DAO;
import com.example.data.Transfer_DAO;
import com.example.entity.TransactionAccountEntity;
import com.example.entity.TransferEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

@WebServlet(name = "transaction-history", value = "/transaction-history")
public class Transaction_History extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        if(session.getAttribute("username") == null){
            String url = "/home";
            resp.sendRedirect(url);
        }
        else {
            String url = "/views/customer/transaction-history/transaction-history.jsp";
            String account = session.getAttribute("username").toString();
            List<TransferEntity> list_Transfer = Transfer_DAO.List_Transfer();

            req.setAttribute("list_transfer", list_Transfer);

            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

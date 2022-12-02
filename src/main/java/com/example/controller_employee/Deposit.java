package com.example.controller_employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deposit_emp", value = "/deposit_emp")
public class Deposit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/views/employee/deposit/deposit.jsp";
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action.equals("cancel")){
            resp.sendRedirect("/home");
        } else if (action.equals("create-report")) {
            String url = "/views/employee/deposit/deposit-identify.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        } else if (action.equals("deposit-identify")) {
            String url = "/views/employee/deposit/deposit-info-customer.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else if (action.equals("deposit-info-customer")) {
            String url = "/views/employee/deposit/deposit-create-request.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
}

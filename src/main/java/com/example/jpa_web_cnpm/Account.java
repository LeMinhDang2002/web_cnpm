package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;


public class Account extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "update_account";
        }

        if(action.equals("update_account")){
            Cookie[] cookies = req.getCookies();
            Cookie[] c = cookies;

            if(c == null || c.length ==1){
                resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/home");
            }
            else {
                String url = "/WEB-INF/info_account.jsp";

                String number_phone = c[1].getValue().toString();
                System.out.println(number_phone);
                AccountEntity account = AccountDAO.getAccount(number_phone);
                req.setAttribute("user", account);

                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
        }
        if(action.equals("cancel")){
            resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        String action = req.getParameter("action");

        if(action == null) {
            System.out.println(action);
            url = "/WEB-INF/info_account.jsp";
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(req, resp);
        } else if (action.equals("update_account")) {
            AccountEntity account = AccountDAO.getAccount(req.getParameter("number_phone"));

            int id = account.getId();
            String firstname = req.getParameter("fname");
            String lastname = req.getParameter("lname");
            String address = req.getParameter("address");
            String dob = req.getParameter("dob");
            String number_phone = req.getParameter("number_phone");
            String email = req.getParameter("email");
            String password = account.getPassword();

            AccountEntity accountUpdate = new AccountEntity();
            accountUpdate.setId(id);
            accountUpdate.setFirstname(firstname);
            accountUpdate.setLastname(lastname);
            accountUpdate.setAddress(address);
            accountUpdate.setDob(dob);
            accountUpdate.setNumberPhone(number_phone);
            accountUpdate.setEmail(email);
            accountUpdate.setPassword(password);

            AccountDAO.Update_Account(accountUpdate);
        }
        resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/infor_account");
    }
}

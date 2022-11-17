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
//        String url = "/WEB-INF/info_account.jsp";
//
//        getServletContext().getRequestDispatcher(url)
//                .forward(req, resp);
//        doPost(req,resp);
        Cookie[] cookies = req.getCookies();
        Cookie[] c = cookies;

        if(c == null || c.length == 2){
            String url = "/home";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/WEB-INF/info_account.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        HttpSession session = req.getSession();
        String action = req.getParameter("action");
        System.out.println(action);

        if(action == null) {
            List<AccountEntity> accounts = AccountDAO.getAccount();
//        System.out.println(accounts);
            session.setAttribute("accounts", accounts);
            System.out.println(action);
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

//            List<AccountEntity> accounts = AccountDAO.getAccount();
//            session.setAttribute("accounts", accounts);
        }

        url = "/WEB-INF/info_account.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(req, resp);
    }
}

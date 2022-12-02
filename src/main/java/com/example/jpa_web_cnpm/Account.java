package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "information account", value = "/information_account")
public class Account extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "update_account";
        }
        if(action.equals("update_account")){
            HttpSession session = req.getSession();

            if(session.getAttribute("username") == null){
                resp.sendRedirect("/home");
            }
            else {
                String url = "/views/customer/customer-information/change-information.jsp";

                String number_phone = session.getAttribute("username").toString();
                AccountEntity account = AccountDAO.getAccount(number_phone);
                req.setAttribute("user", account);

                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
        }
        if(action.equals("cancel")){
            resp.sendRedirect("/home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        String action = req.getParameter("action");
        System.out.println(action);
        HttpSession session = req.getSession();

        if(action == null) {
            System.out.println(action);
            url = "/views/customer/change-information.jsp";
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(req, resp);
        } else if (action.equals("update_account")) {
            AccountEntity account = AccountDAO.getAccount(session.getAttribute("username").toString());
            System.out.println(account);

            int id = account.getId();
            String firstname = req.getParameter("firstname");
            String lastname = req.getParameter("lastname");
            String address = req.getParameter("address");
            String dob = req.getParameter("dob");
            String number_phone = req.getParameter("phone-number");
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
            resp.sendRedirect("/information_account");
        }
        else {
            resp.sendRedirect("/home");
        }

    }
}

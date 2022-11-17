package com.example.jpa_web_cnpm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "signup", value = "/signup")
public class SignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/WEB-INF/guest/sign-up/input-basic-information.jsp";
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if(action == null){
            action = "input-basic-information";
        }
        System.out.println(action);
        if(action.equals("input-basic-information") ){

            String url = "/WEB-INF/guest/sign-up/input-email-phone-number.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else if (action.equals("input-email-phone-number")){
            String email = req.getParameter("email");
            String number_phone = req.getParameter("phone-number");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String retype_password = req.getParameter("retype-password");

            System.out.println(email);
            System.out.println(number_phone);
            System.out.println(username);
            System.out.println(password);
            System.out.println(retype_password);

            String firsname = req.getParameter("lastname");
            String lastname = req.getParameter("firstname");
            String dob = req.getParameter("dob");
            String address = req.getParameter("address");
            String district = req.getParameter("district");
            String province = req.getParameter("province");

            System.out.println(firsname);
            System.out.println(lastname);
            System.out.println(dob);
            System.out.println(address);
            System.out.println(district);
            System.out.println(province);

            String url = "/WEB-INF/guest/sign-up/input-basic-information.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
}

package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "signin", value = "/signin")
public class SignIn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if(AccountDAO.check_Acc_Pass(username,password)){
            HttpSession session = req.getSession();
            session.setMaxInactiveInterval(1800);
            session.setAttribute("username", username);
        }
        else {
            out.print("Sorry UserName or Password Error!");
        }
//        getServletContext().getRequestDispatcher(url)
//                .forward(req, resp);
        resp.sendRedirect("/home");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/views/guest/sign-in.jsp";

        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    private void setcookies(HttpServletRequest req,
                                HttpServletResponse resp){
        String username = req.getParameter("username");
//        String password = req.getParameter("password");
        String url = "";

        Cookie c1 = new Cookie("username", username);
        c1.setMaxAge(60*30*365); //1 year
        c1.setPath("/");
        c1.setValue(username);
        resp.addCookie(c1);
    }
}

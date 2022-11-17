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
        HttpSession session = req.getSession();
        String url = "";
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if(AccountDAO.check_Acc_Pass(username,password)){
            AccountEntity account = AccountDAO.getAccount(username);

            session.setAttribute("user", account);

            url = setcookies(req,resp);
        }
        else {
            out.print("Sorry UserName or Password Error!");
            url = "/WEB-INF/guest/sign-in.jsp";
        }
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/WEB-INF/guest/sign-in.jsp";

        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
    }

    private String setcookies(HttpServletRequest req,
                                HttpServletResponse resp){
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String url = "";

        Cookie c1 = new Cookie("username", username);
        c1.setMaxAge(60*30*365); //1 year
        c1.setPath("/");
        resp.addCookie(c1);

        Cookie c2 = new Cookie("password", password);
        c2.setMaxAge(60*30*265);
        c2.setPath("/");
        resp.addCookie(c2);
        url = "/WEB-INF/customer/main-page.jsp";

        return url;
    }
}

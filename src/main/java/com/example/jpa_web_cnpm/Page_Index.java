package com.example.jpa_web_cnpm;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/home")
public class Page_Index extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] c = req.getCookies();
        if(c == null || c.length==1){
            String url = "/home.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/WEB-INF/customer/main-page.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
}

package com.example.jpa_web_cnpm;

import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "signout", value = "/signout")
public class SignOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] c = req.getCookies();
        System.out.println(c.length);
        String url = deleteCookie(req,resp);
//        HttpSession session = req.getSession();
//
//        System.out.println(session.getAttribute("user"));
        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);
//        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Cookie[] c = req.getCookies();
//        System.out.println(c.length);
//        String url = deleteCookie(req,resp);
//        HttpSession session = req.getSession();
//
//        System.out.println(session);
//        getServletContext().getRequestDispatcher(url)
//                .forward(req, resp);
    }
    private String deleteCookie(HttpServletRequest req, HttpServletResponse resp){
        Cookie[] cookies = req.getCookies();
        Cookie[] tmp = cookies;
        int count =cookies.length;

        for (int i = 0; i < count; ++i) {
            Cookie cookie = tmp[i];
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            resp.addCookie(cookie);
        }
        String url = "/home";
        return url;
    }
}

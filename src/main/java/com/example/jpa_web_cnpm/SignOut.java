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
        String url = deleteCookie(req,resp);
        resp.sendRedirect(url);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
        String url = "/JPA_WEB_CNPM_war_exploded/home";
        return url;
    }
}

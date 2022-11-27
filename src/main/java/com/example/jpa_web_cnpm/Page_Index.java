package com.example.jpa_web_cnpm;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "home" ,value = "/home")
public class Page_Index extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        System.out.println(session.getAttribute("username"));

        if(session.getAttribute("username") == null){
            String url = "/views/guest/main-page.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/views/customer/main-page.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
//        Random theRandom = new Random();
//        theRandom.nextInt(999999);
//        System.out.println(theRandom.toString());
//        String myHash = DigestUtils.md5Hex("" +	theRandom);
    }
}

package com.example.jpa_web_cnpm;

import com.example.data.TimeDeposit_DAO;
import com.example.entity.DepositEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet(name = "deposit", value = "/deposit")
public class Deposit extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "";
        String action = req.getParameter("action");

        System.out.println(action);

        int id = 2;
        Date now = new Date();
        Timestamp create_time = new Timestamp(now.getTime());
        String state = "mệt mỏi";
        String name = "ể oải";
        Double amount = new Double(28888880);
        Double rolled_over = new Double(1);
        Double interest = new Double(1.3);
        Double penalty_interest = new Double(0.5);
        Timestamp maturity_date = new Timestamp(now.getTime());
        Timestamp end_date = new Timestamp(now.getTime());
        String account_src = "0382255077";

        DepositEntity timedepositEntity = new DepositEntity();
        timedepositEntity.setId(id);
        timedepositEntity.setCreateTime(create_time);
        timedepositEntity.setState(state);
        timedepositEntity.setName(name);
        timedepositEntity.setAmount(amount);
//        timedepositEntity.setRolledOver(rolled_over);
        timedepositEntity.setInterest(interest);
        timedepositEntity.setPenaltyInterest(penalty_interest);
        timedepositEntity.setMaturityDate(maturity_date);
        timedepositEntity.setEndDate(end_date);
        timedepositEntity.setAccountSrc(account_src);

        System.out.println(timedepositEntity);

        TimeDeposit_DAO.Delete_TimeDeposit(timedepositEntity);

        url = "/";

        getServletContext()
                .getRequestDispatcher(url)
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String url = "/WEB-INF/timedeposit.jsp";
//
//        getServletContext().getRequestDispatcher(url)
//                .forward(req, resp);
        Cookie[] cookies = req.getCookies();
        Cookie[] c = cookies;

        if(c == null || c.length ==1){
            String url = "/home";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            String url = "/WEB-INF/timedeposit.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
}

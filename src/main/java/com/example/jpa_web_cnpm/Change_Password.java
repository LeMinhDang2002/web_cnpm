package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.entity.AccountEntity;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.Convert;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

@WebServlet(name = "change_password", value = "/change-password")
public class Change_Password extends HttpServlet {
    private int code = 0;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "/WEB-INF/update_password.jsp";
        HttpSession session = req.getSession();
        AccountEntity account = (AccountEntity) session.getAttribute("user");
        String username = account.getNumberPhone();
        String password = account.getPassword();

        String oldpassword = req.getParameter("oldpassword");
        String newpassword = req.getParameter("newpassword");
        String confirm_newpassword = req.getParameter("confirm_newpassword");
        String code_verify = req.getParameter("code_verify");
        String verify = String.valueOf(code);

        if(oldpassword.equals(password) == false){
            url = "/WEB-INF/update_password.jsp";
            System.out.println("Old password error!");
        } else if (oldpassword.equals(newpassword)) {
            url = "/WEB-INF/update_password.jsp";
            System.out.println("...");
        } else if (newpassword.equals(confirm_newpassword) == false) {
            url = "/WEB-INF/update_password.jsp";
            System.out.println("...");
        } else if (code_verify.equals(code_verify ) == false) {
            url = "/WEB-INF/update_password.jsp";
            System.out.println("Code_verify error!");
        } else{
            AccountEntity accountEntity = AccountDAO.getAccount(username);
            accountEntity.setPassword(newpassword);

            AccountDAO.Update_Account(accountEntity);
            session.setAttribute("user",accountEntity);
            url = "/WEB-INF/customer/main-page.jsp";
        }

        getServletContext().getRequestDispatcher(url)
                .forward(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        Cookie[] c = cookies;

        if(c == null || c.length == 2){
            String url = "/home";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        else {
            sendEmail();
            System.out.println(code);
            String url = "/WEB-INF/update_password.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
    }
    private void sendEmail(){
        code = (int)(((Math.random())*10000)+1);

        Properties props = new Properties();
//        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("20133034@student.hcmute.edu.vn", "cctnak11");
            }
        };

        Session session = Session.getDefaultInstance(props, auth);

        try {
            Message mgs = new MimeMessage(session);
            mgs.setFrom(new InternetAddress("20133034@student.hcmute.edu.vn"));
            mgs.addRecipient(Message.RecipientType.TO, new InternetAddress("lmd16032002@gmail.com"));
            mgs.setSubject("Test send mail");
            mgs.setText("Your code verify is "+code);
            Transport.send(mgs);
            System.out.println("Gui gmail r a");
        }
        catch (AddressException e){
            System.out.println("Truyen kh dc 1");
        }
        catch (MessagingException e){
            System.out.println(e);
            System.out.println("truyen kh dc 2");
        }
    }
}
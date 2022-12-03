package com.example.jpa_web_cnpm;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Email {
    public static int sendEmail(String email_dist){
        int code = (int)(((Math.random())*10000)+1);

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("20133034@student.hcmute.edu.vn", "aimacho");
            }
        };

        Session session = Session.getDefaultInstance(props, auth);

        try {
            Message mgs = new MimeMessage(session);
            mgs.setFrom(new InternetAddress("20133034@student.hcmute.edu.vn"));
            mgs.addRecipient(Message.RecipientType.TO, new InternetAddress(email_dist));
            mgs.setSubject("Test send mail");
            mgs.setText("Your code verify is "+code);
            Transport.send(mgs);
            System.out.println("Gui gmail r a");
            System.out.println(code);
        }
        catch (AddressException e){
            System.out.println("Truyen kh dc 1");
        }
        catch (MessagingException e){
            System.out.println(e);
            System.out.println("truyen kh dc 2");
        }
        return code;
    }
}

package com.example.jpa_web_cnpm;

import com.example.data.AccountDAO;
import com.example.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
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
        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(300);// Set 5'

        if(action == null){
            action = "input-basic-information";
        }
        System.out.println(action);
        if(action.equals("input-basic-information") ){

            String firstname = req.getParameter("firstname");
            String lastname = req.getParameter("lastname");
            String dob = req.getParameter("dob");
            String address = req.getParameter("address");
            String district = req.getParameter("district");
            String province = req.getParameter("province");

            session.setAttribute("firstname", firstname);
            session.setAttribute("lastname", lastname);
            session.setAttribute("dob", dob);
            session.setAttribute("address", address);
            session.setAttribute("district", district);
            session.setAttribute("province", province);

            String url = "/WEB-INF/guest/sign-up/input-email-phone-number.jsp";
            getServletContext().getRequestDispatcher(url)
                    .forward(req, resp);
        }
        if (action.equals("input-email-phone-number")){

            String email = req.getParameter("email");
            String number_phone = req.getParameter("phone-number");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String retype_password = req.getParameter("retype-password");
            String firstname = (String) session.getAttribute("firstname");
            String lastname = (String) session.getAttribute("lastname");
            String dob = (String) session.getAttribute("dob");
            String address = (String) session.getAttribute("address");
            String district = (String) session.getAttribute("district");
            String province = (String) session.getAttribute("province");


            if(     password.equals(retype_password) == false ||
                    AccountDAO.check_exists_Number_Phone(number_phone) == true ||
                    AccountDAO.check_exists_Email(email) == true ||
                    AccountDAO.isValid(email) == false){
                String url = "/WEB-INF/guest/sign-up/input-email-phone-number.jsp";
                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);
            }
            else{
                AccountEntity account = new AccountEntity();
                account.setFirstname(firstname);
                account.setLastname(lastname);
                account.setEmail(email);
                account.setDob(dob);
                account.setNumberPhone(number_phone);
                account.setAddress(address);
                account.setPassword(password);
                int code_verify = Email.sendEmail(email);
                int tmp = 0;
                session.setAttribute("account", account);
                session.setAttribute("code_verify", code_verify);
                session.setAttribute("check_number_try", tmp);

                String url = "/WEB-INF/guest/sign-up/code_verify.jsp";
                getServletContext().getRequestDispatcher(url)
                        .forward(req, resp);

//                AccountDAO.Insert_Account(account);
//                setcookies(req,resp,number_phone);
//
//                resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/home");
            }
        }
        if(action.equals("input-code-verify")){
            String input_code_verify = req.getParameter("code-verify");
            String code_verify = session.getAttribute("code_verify").toString();
            int check_number_try = Integer.parseInt(session.getAttribute("check_number_try").toString());
            check_number_try = check_number_try + 1;
            session.setAttribute("check_number_try", check_number_try);

            System.out.println(input_code_verify);
            System.out.println(code_verify);
            System.out.println(check_number_try);

            if (input_code_verify.equals(code_verify) == false)
            {
                if(check_number_try == 3){
                    resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/home");
                }
                else {
                    String url = "/WEB-INF/guest/sign-up/code_verify.jsp";
                    getServletContext().getRequestDispatcher(url)
                            .forward(req, resp);
                }
            }
            else {
                AccountEntity account = (AccountEntity) session.getAttribute("account");
                AccountDAO.Insert_Account(account);
                setcookies(req,resp,account.getNumberPhone());

                resp.sendRedirect("/JPA_WEB_CNPM_war_exploded/home");
            }

        }
    }
    private void setcookies(HttpServletRequest req,
                            HttpServletResponse resp, String username){

        Cookie c1 = new Cookie("username", username);
        c1.setMaxAge(60*30*365); //1 year
        c1.setPath("/");
        c1.setValue(username);
        resp.addCookie(c1);
    }
}

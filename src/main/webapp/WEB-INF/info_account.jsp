<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/13/2022
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>DOB</th>
            <th>Number_Phone</th>
            <th>Email</th>
            <th>PassWord</th>
        </tr>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="account" items="${accounts}">
            <tr>
                <td>${account.firstname}</td>
                <td>${account.lastname}</td>
                <td>${account.address}</td>
                <td>${account.dob}</td>
                <td>${account.numberPhone}</td>
                <td>${account.email}</td>
                <td>${account.password}</td>
            </tr>
        </c:forEach>
    </table>

    <form action="infor_account" method="post">
        <input type="hidden" name="action" value="update_account">
        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname" value="${user.firstname}"><br>
        <label for="lname">Last name:</label><br>
        <input type="text" id="lname" name="lname" value="${user.lastname}"><br><br>
        <label for="address">Address</label><br>
        <input type="text" id="address" name="address" value="${user.address}"><br><br>
        <label for="dob">DOB</label><br>
        <input type="text" id="dob" name="dob" value="${user.dob}"><br><br>
        <label for="number_phone">Number Phone</label><br>
        <input type="text" id="number_phone" name="number_phone" value="${user.numberPhone}"><br><br>
        <label for="email">Email</label><br>
        <input type="text" id="email" name="email" value="${user.email}"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>

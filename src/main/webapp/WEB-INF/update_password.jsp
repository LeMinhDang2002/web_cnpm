<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/14/2022
  Time: 12:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="change-password" method="post">
        <input type="hidden" name="action", value="update_password">
        <label for="oldpassword">Mật Khẩu Cũ</label><br>
        <input type="text" id="oldpassword" name="oldpassword"><br>
        <label for="newpassword">Mật Khẩu Mới</label><br>
        <input type="text" id="newpassword" name="newpassword"><br>
        <label for="confirm_newpassword">Xác Nhận Mật Khẩu</label><br>
        <input type="text" id="confirm_newpassword" name="confirm_newpassword"><br>
        <label for="code_verify">Xác Nhận Mã Xác Thực</label><br>
        <input type="text" id="code_verify" name="code_verify"><br>
        <input type="submit" value="Sua">
    </form>
</body>
</html>

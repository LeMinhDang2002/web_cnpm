<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch sử giao dịch</title>

    <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">

    <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body class="bg-light">
<nav class="navbar navbar-expand-md sticky-top shadow bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">[LOGO]</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="/home" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="#" class="nav-link">CSKH</a></li>
                <li class="nav-item"><a href="/transfer" class="nav-link">Chuyển khoản</a></li>
                <li class="nav-item"><a href="/payment" class="nav-link">Thanh toán hoá đơn</a></li>
                <li class="nav-item"><a href="/saving" class="nav-link">Gửi tiết kiệm</a></li>
                <li class="nav-item"><a href="/loan" class="nav-link">Tạo khoản vay</a></li>
                <li class="nav-item"><a href="/transaction-history" class="nav-link">Lịch sử</a></li>
            </ul>
            <div class="d-md-flex justify-content-md-end flex-grow-1">
                <div class="d-md-inline d-none dropdown-center">
                    <div class="codicon codicon-account fs-2 d-none d-md-block" data-bs-toggle="dropdown"></div>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a href="/information_account" class="dropdown-item">Thông tin cá nhân</a></li>
                        <li><a href="/change-password" class="dropdown-item">Đổi mật khẩu</a></li>
                        <li><a href="/signout" class="dropdown-item">Đăng xuất</a></li>
                    </ul>
                </div>
                <div class="d-md-none d-inline">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a href="/information_account" class="nav-link">Thông tin cá nhân</a></li>
                        <li class="nav-item"><a href="/change-password" class="nav-link">Đổi mật khẩu</a></li>
                        <li class="nav-item"><a href="/signout" class="nav-link">Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>


<section id="transaction-history-table">
    <div class="mx-5 my-4">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Loại giao dịch</th>
                <th scope="col">Ngày giao dịch</th>
                <th scope="col">Tài khoản nguồn</th>
                <th scope="col">Tài khoản đích</th>
                <th scope="col">Số tiền</th>
                <th scope="col">Thông tin chi tiết</th>
            </tr>
            </thead>
            <tbody>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:forEach var="tran" items="${list_transfer}">
                <tr>
                    <td>${tran.id}</td>
                    <td>${tran.name}</td>
                    <td>${tran.createTime}</td>
                    <td>${tran.accountSrc}</td>
                    <td>${tran.accountDist}</td>
                    <td>${tran.amount}</td>
                    <td>${tran.content}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>

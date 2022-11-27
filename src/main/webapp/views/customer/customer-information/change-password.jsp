<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin cá nhân</title>

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

<section id="change-password">
    <div class="d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-3">
                <span class="h3">Đổi mật khẩu</span>
            </div>

            <form action="change-password" method="post">

                <div class="mb-2">
                    <label name="old-password" class="form-label">Mật khẩu cũ</label>
                    <div class="input-group">
                        <input type="password" name="old-password" id="old-password" class="form-control">
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

                <div class="mb-2">
                    <label name="new-password" class="form-label">Mật khẩu mới</label>
                    <div class="input-group">
                        <input type="password" name="new-password" id="" class="form-control">
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

                <div class="mb-2">
                    <label for="retype-new-password" class="form-label">Nhập lại mật khẩu</label>
                    <div class="input-group">
                        <input type="password" name="retype-new-password" id="" class="form-control" >
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

                <div class="mb-2">
                    <label for="retype-new-password" class="form-label">Nhập Mã Xác Nhận</label>
                    <div class="input-group">
                        <input type="password" name="code-verify" id="" class="form-control" >
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

<%--                <div class="d-flex justify-content-sm-end justify-content-center mt-3">--%>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit"><input type="hidden" name="action" value="update_password">Sửa</button>
                </div>
            </form>
            <form action="change-password" method="post">
                <div class="d-grid gap-2">
                    <button class="btn btn-primary"><input type="hidden" name="action" value="cancel">Hủy</button>
                </div>
            </form>

        </div>
    </div>
</section>
</body>
</html>

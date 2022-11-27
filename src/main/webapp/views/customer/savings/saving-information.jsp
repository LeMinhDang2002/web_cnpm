<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gửi tiết kiệm</title>

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

<section id="savings-information" class="bg-light">
    <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-3">
                <span class="h3">Thông tin khoản gửi tiết kiệm</span>
            </div>

            <form action="" method="">

                <div class="mb-2">
                    <label for="savings-name" class="form-label">Tên sổ tiết kiệm</label>
                    <input type="text" name="savings-name" id="" class="form-control" disabled>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label for="amount" class="form-label">Số tiền</label>
                            <input type="number" name="amount" id="amount" class="form-control" step="1000" disabled>
                        </div>

                        <div class="col-sm-6">
                            <label for="available-amount" class="form-label">Số dư khả dụng</label>
                            <input type="text" name="available-amount" id="available-amount"" class=" form-control text-success" disabled value="123456789">
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label for="term" class="form-label">Kỳ hạn</label>
                            <select name="term" id="term" class="form-select" disabled></select>
                        </div>

                        <div class="col-sm-6">
                            <label for="interest-rate" class="form-label">Lãi suất</label>
                            <input type="text" name="interest-rate" id="interest-rate" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label for="create-date" class="form-label">Ngày mở sổ</label>
                            <input type="date" name="create-date" id="create-date" class="form-control" disabled>
                        </div>

                        <div class="col-sm-6">
                            <label for="maturity-date" class="form-label">Ngày đáo hạn</label>
                            <input type="date" name="maturity-date" id="maturity-date" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <label for="renew" class="form-label">Tự động tái tục</label>
                    <select name="renew" id="" class="form-select" disabled>
                        <option value="1" selected>Không</option>
                        <option value="2">Tái tục gốc</option>
                        <option value="3">Tái tục gốc và lãi</option>
                    </select>
                </div>

                <div class="d-flex justify-content-sm-end justify-content-center mt-3">
                    <button class="btn btn-primary me-2" formaction="./savings.html">Trở vè</button>
                    <button class="btn btn-primary" formaction="./savings.html">Rút trước hạn</button>
                </div>
            </form>

        </div>
    </div>
</section>

</body>
</html>

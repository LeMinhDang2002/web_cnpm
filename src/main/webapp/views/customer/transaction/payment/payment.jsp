<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán hóa đơn</title>

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

<section id="payment" class="bg-light">
    <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-3">
                <span class="h3">Thanh toán hóa đơn</span>
            </div>

            <form action="payment" method="post" onsubmit="">
                <input name="action" type="hidden" value="payment">
                <div id="source">
                    <p class="h5 mb-3">Bên thanh toán</p>


                    <div class="mb-2">
                        <div class="row">
                            <div class="col-sm-6">
                                <label for="account-number-source" class="form-label">Số tài khoản thanh toán</label>
                                <select name="account-number-source" class="form-control" id="">
                                    <option value="${transaction.accountNumber}" selected>${transaction.accountNumber}</option>
                                </select>
                            </div>

                            <div class="col-sm-6">
                                <label for="available-amount" class="form-label">Số dư khả dụng</label>
                                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="${balance}" disabled>
                            </div>

                        </div>
                    </div>
                </div>

                <hr>

                <div id="destination">
                    <p class="h5 mb-3">Bên cung cấp dịch vụ</p>

                    <div class="mb-2">
                        <label for="service" class="form-label">Loại dịch vụ</label>
                        <select name="service" id="service" class="form-control">
                            <option value="1">Điện</option>
                            <option value="2">Nước</option>
                        </select>
                    </div>

                    <div class="mb-2">
                        <label for="provider" class="form-label">Nhà cung cấp</label>
                        <select name="provider" id="provider" class="form-control">
                            <option value="1">Điện lực TPHCM</option>
                            <option value="2">Nhà máy cung cấp nước TPHCM</option>
                        </select>
                    </div>

                    <div class="mb-2">
                        <label for="customer-code" class="form-label">Mã khách hàng</label>
                        <input type="text" name="customer-code" id="customer-code" class="form-control">
                    </div>

                    <div class="mb-2">
                        <label for="payments" class="form-label">Số tiền</label>
                        <input type="text" name="payments" id="payments" class="form-control">
                    </div>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit">Tiếp tục</button>
                </div>
            </form>
            <form action="payment" method="post">
                <div class="d-grid gap-2">
                    <input type="hidden" name="action" value="cancel">
                    <button class=" btn btn-primary" >Hủy</button>
                </div>
            </form>
        </div>
    </div>
</section>

</body>
</html>

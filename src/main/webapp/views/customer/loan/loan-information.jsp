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
    <title>Tạo khoản vay</title>

    <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">

    <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/scripts/another/customer/savings/savings.js" defer></script>
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

<section id="create-loan" class="bg-light">
    <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-3">
                <span class="h3">Thông tin khoản vay</span>
            </div>

            <form action="" method="">

                <div class="mb-2">
                    <label for="loan-name" class="form-label">Tên khoản vay</label>
                    <input type="text" name="loan-name" id="" class="form-control" disabled>
                </div>

                <div class="mb-2">
                    <label for="loan-purpose" class="form-label">Mục đích vay</label>
                    <input type="text" name="loan-purpose" id="" class="form-control" disabled>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label for="loan-total-amount" class="form-label">Tổng số vốn thực hiện</label>
                            <input type="text" name="loan-total-amount" id="" class="form-control" disabled>
                        </div>

                        <div class="col-sm-6">
                            <label for="loan-amount" class="form-label">Đề nghị ngân hàng cho vay</label>
                            <input type="text" name="loan-amount" id="" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label for="amount" class="form-label">Vốn tự có</label>
                            <input type="text" name="amount" id="" class="form-control" disabled>
                        </div>

                        <div class="col-sm-6">
                            <label for="available-amount" class="form-label">Số dư khả dụng</label>
                            <input type="text" name="available-amount" id="" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <label for="loan-purpose" class="form-label">Thời hạn vay</label>
                    <input type="text" name="loan-purpose" id="" class="form-control" disabled >
                </div>

                <div class="d-flex justify-content-sm-end justify-content-center mt-3">
                    <button class="btn btn-primary" formaction="./loan.html">Trờ về</button>
                </div>

            </form>

        </div>
    </div>
</section>
</body>
</html>

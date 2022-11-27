<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chuyển khoản</title>

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

<section id="transfer" class="bg-light">
    <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-3">
                <span class="h3">Chuyển tiền</span>
            </div>

            <form action="transfer" method="post" onsubmit="">

                <div id="source">
                    <p class="h5 mb-3">Bên chuyển</p>


                    <div class="mb-2">
                        <div class="row">
                            <div class="col-sm-6">
                                <label for="account-number-source" class="form-label">Số tài khoản chuyển</label>
                                <select name="account-number-source" class="form-control" id="" >
                                    <option selected>${username}</option>
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
                    <p class="h5 mb-3">Bên nhận</p>

                    <div class="mb-2">
                        <label for="bank" class="form-label">Ngân hàng</label>
                        <select name="bank" id="bank" class="form-control">
                            <option value="1">CON MEO</option>
                        </select>
                    </div>

                    <div class="mb-2">
                        <label for="account-number-destination" class="form-label">Số tài khoản nhận</label>
                        <input type="text" name="account-number-destination" id="account-number-destination" class="form-control">
                    </div>

                    <div class="mb-2">
                        <div class="row">
                            <div class="col-sm-6">
                                <label for="amount" class="form-label">Số tiền</label>
                                <input type="number" name="amount" id="amount" class="form-control" step="1000" min="0">
                            </div>
                            <div class="col-sm-6">
                                <label for="limit-amount" class="form-label">Hạn mức</label>
                                <input type="text" name="limit-amount" id="limit-amount"" class=" form-control text-success" value="10000000" disabled>
                            </div>


                        </div>
                    </div>

                    <div class="mb-2">
                        <label for="content" class="form-label">Nội dung chuyển</label>
                        <textarea name="content" id="content" class="form-control"></textarea>
                    </div>
                </div>


                <div class="d-grid gap-2">
                    <input name="action" value="transfer" type="hidden">
                    <button class="btn btn-primary" type="submit">Tiếp tục</button>
                </div>
            </form>
            <form action="transfer" method="post">
                <div class="d-grid gap-2">
                    <input name="action" value="cancel" type="hidden">
                    <button class="btn btn-primary me-2">Hủy</button>
                </div>
            </form>

        </div>
    </div>
</section>

</body>
</html>

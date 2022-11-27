<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/23/2022
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>

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

<section class="vh-85" id="main-advertisement">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="85vh" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text>
                </svg>
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="85vh" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text>
                </svg>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" height="85vh" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text>
                </svg>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>
</body>

</html>

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

    <link rel="stylesheet" href="/assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="/assets/styles/codicons/codicon.ttf">

    <script src="/assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/scripts/another/customer/savings/savings.js" defer></script>
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

<section id="savings-list" class="overflow-auto">
    <div class="mx-5 my-4">

        <div class="mb-3">
            <span class="h3">Các khoản gửi tiết kiệm</span>
        </div>

        <div class="container-fluid">
            <div class="row flex-nowrap overflow-auto">

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đang chờ</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>100</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã rút trước hạn</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>20</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

                <div class="col-xxl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Sổ 1</h5>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày mở sổ:</span>
                                <span>1-1-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Ngày đáo hạn:</span>
                                <span>1-2-2000</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Kỳ hạn:</span>
                                <span>1 tháng</span>
                            </p>
                            <p class="card-text d-flex justify-content-between">
                                <span>Lãi suất:</span>
                                <span>4% năm</span>
                            </p>
                            <a href="savings-information.html" class="btn btn-outline-primary d-flex justify-content-center">Thông tin chi tiết</a>
                        </div>

                        <div class="card-footer">
                            <small class="d-flex justify-content-between">
                                <span>Trạng thái:</span>
                                <span id="savings-state">Đã hoàn tất</span>
                            </small>
                            <small class="d-flex justify-content-between">
                                <span>Số ngày còn lại:</span>
                                <span>0</span>
                            </small>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <div></div>
</section>

<section id="create-savings" class="overflow-auto">
    <div class="mx-5 my-4">

        <div class="d-flex justify-content-center">
            <a href="create-savings.html" class="btn btn-primary">Tạo khoản gửi tiết kiệm mới</a>
        </div>

    </div>
    <div></div>
</section>



</body>
</html>

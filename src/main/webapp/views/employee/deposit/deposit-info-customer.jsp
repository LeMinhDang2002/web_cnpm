<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 12/1/2022
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">

    <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<section id="payment" class="bg-light">
  <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
    <div class="m-sm-5 p-5 shadow">

      <div class="mb-3">
        <span class="h3">Thanh toán hóa đơn</span>
      </div>

      <form action="deposit_emp" method="post" onsubmit="">

        <div id="source">
          <p class="h5 mb-3">Bên thanh toán</p>


          <div class="mb-2">
            <div class="row">
              <div class="col-sm-6">
                <label for="account-number-source" class="form-label">Số tài khoản thanh toán</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="0382255077" disabled>
              </div>

              <div class="col-sm-6">
                <label for="available-amount" class="form-label">Số dư khả dụng</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="123456789" disabled>
              </div>

            </div>
          </div>
          <div class="mb-2">
            <div class="row">
              <div class="col-sm-6">
                <label for="account-number-source" class="form-label">Họ và tên lót</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Lê Minh" disabled>
              </div>

              <div class="col-sm-6">
                <label for="available-amount" class="form-label">Tên</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Đăng" disabled>
              </div>

            </div>
            <div class="mb-2">
              <div class="row">
                <div class="col-sm-6">
                  <label for="account-number-source" class="form-label">Địa chỉ</label>
                  <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Phú Yên" disabled>
                </div>

                <div class="col-sm-6">
                  <label for="available-amount" class="form-label">Ngày Sinh</label>
                  <input type="date" name="available-amount" id="available-amount" class=" form-control text-success" value="2002-03-16" disabled>
                </div>

              </div>
              <div class="mb-2">
                <div class="row">
                  <div class="col-sm-6">
                    <label for="account-number-source" class="form-label">Số điện thoại</label>
                    <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="0382255077" disabled>
                  </div>

                  <div class="col-sm-6">
                    <label for="available-amount" class="form-label">Email</label>
                    <input type="email" name="available-amount" id="available-amount" class=" form-control text-success" value="lmd@2002" disabled>
                  </div>

                </div>
              </div>
            </div>
            <div class="d-flex justify-content-sm-end justify-content-center mt-3">
              <button class="btn btn-primary me-2" name="action" value="cancel">Hủy</button>
              <button class="btn btn-primary" name="action" value="deposit-info-customer">Tiếp tục</button>
            </div>
          </div>
        </div>
      </form>

    </div>
  </div>
</section>
</body>
</html>

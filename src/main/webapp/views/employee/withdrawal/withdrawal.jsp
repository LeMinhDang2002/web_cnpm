<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 12/1/2022
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Document</title>
  <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
  <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<section id="payment" class="bg-light">
  <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
    <div class="m-sm-5 p-5 shadow">

      <div class="mb-3">
        <span class="h3">Thanh toán hóa đơn</span>
      </div>

      <form action="withdrawal" method="post">

        <div id="source">
          <p class="h5 mb-3">Bên thanh toán</p>


          <div class="mb-2">
            <div class="row">
              <div class="col-sm-6">
                <label for="account" class="form-label">Số tài khoản thanh toán</label>
                <input type="text" name="" id="" class=" form-control text-success" value="${account}" disabled>
                <input type="hidden" name="account" id="" class=" form-control text-success" value="${account}" >
              </div>

              <div class="col-sm-6">
                <label for="balance" class="form-label">Số dư khả dụng</label>
                <input type="text" name="" id="" class=" form-control text-success" value="${balance}" disabled>
                <input type="hidden" name="balance" id="" class=" form-control text-success" value="${balance}">
              </div>

            </div>
          </div>
          <div class="mb-1">
            <div class="row">
              <div class="col-sm-6">
                <label for="select_money" class="form-label">Chọn số tiền</label>
                <select name="select_money" class="form-control" id="id_select_money">
                  <option value="1">100.000 VND</option>
                  <option value="2">200.000 VND</option>
                  <option value="3">500.000 VND</option>
                  <option value="4">1.000.000 VND</option>
                  <option value="5">2.000.000 VND</option>
                  <option value="6">5.000.000 VND</option>
                  <option value="7">Số tiền khác</option>
                </select>
              </div>
              <div class="col-sm-6" id="other_option" style="display: none;">
                <label class="form-label"> Nhập số tiền</label>
                <input name="differ-money" class="form-control" type="text" id="w_other_option">
              </div>
            </div>
          </div>

          <div class="d-flex justify-content-sm-end justify-content-center mt-3">
            <button class="btn btn-primary me-2 " name="action" value="cancel">Hủy</button>
            <button class="btn btn-primary" name="action" value="withdrawal">Tiếp tục</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <script>
    $(document).on(function (e) {
      e.preventDefault();
    });
    $('select[name=select_money]').on('change', function() {
      if (this.value == '7') {
        $("#other_option").show();
      } else {
        $("#other_option").hide();
      }
    });
  </script>
</section>
</body>
</html>

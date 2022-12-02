<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 12/1/2022
  Time: 3:34 PM
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
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<section id="sign-in" class="bg-light">
  <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
    <div class="m-sm-5 p-5 shadow">

      <div class="mb-2">
        <span>[LOGO]</span>
        <span>CONMEO</span>
      </div>

      <div class="mb-3">
        <span class="h3">Gửi Tiết Kiệm</span>
      </div>

      <form action="deposit_emp" method="post">
        <div class="mb-2">
          <div class="row">
            <div class="col-sm-3">
              <label for="account-number-source" class="form-label">Số tài khoản</label>
              <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="0123456789" disabled>
            </div>
            <div class="col-sm-3">
              <label for="account-number-source" class="form-label">Họ và tên lót</label>
              <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Le Minh" disabled>
            </div>
            <div class="col-sm-3">
              <label for="account-number-source" class="form-label">Tên</label>
              <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Đăng" disabled>
            </div>
            <div class="col-sm-3">
              <label for="account-number-source" class="form-label">Ngày tạo</label>
              <input type="date" name="available-amount" id="available-amount" class=" form-control text-success" value="" disabled>
            </div>
          </div>
          <div class="mb-2">
            <div class="row">
              <div class="col-sm-3">
                <label for="account-number-source" class="form-label">Trạng thái</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="Đã Kích Hoạt" disabled >
              </div>
              <div class="col-sm-3">
                <label for="account-number-source" class="form-label">Tái tục</label>
                <input type="date" name="available-amount" id="available-amount" class=" form-control text-success" value="" disabled>
              </div>
              <div class="col-sm-3">
                <label for="account-number-source" class="form-label">Số lượng</label>
                <input type="text" name="available-amount" id="available-amount" class=" form-control text-success" value="99999" disabled>
              </div>
              <div class="col-sm-3">
                <label for="account-number-source" class="form-label">Ngày kết thúc</label>
                <input type="date" name="available-amount" id="available-amount" class=" form-control text-success" value="" disabled>
              </div>
            </div>
          </div>
          <div class="d-flex justify-content-sm-end justify-content-center mt-3">
            <button class="btn btn-primary me-2" name="action" value="report">Báo Cáo</button>
            <button class="btn btn-primary me-2" name="action" value="create-report">Tạo Yêu Cầu</button>
            <button class="btn btn-primary me-2" name="action" value="withdraw-deposit">Rút sổ tiết kiệm</button>
          </div>

          <div class="mb-2">
            <div class="row">
              <div class="col-sm-6">
                <input type="text" id="myInput" class="form-control" placeholder="Tìm kiếm...">
              </div>
            </div>
          </div>

          <div class="mb-2">
            <div class="row">
              <table class="table">
                <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Số tài khoản</th>
                  <th scope="col">Họ</th>
                  <th scope="col">Tên</th>
                  <th scope="col">Ngày tạo</th>
                  <th scope="col">Trạng thái</th>
                  <th scope="col">Tên sổ</th>
                  <th scope="col">Số lượng(VND)</th>
                  <th scope="col">Tái tục</th>
                  <th scope="col">Lãi xuất(%)</th>
                  <th scope="col">Ngày đáo hạn</th>
                  <th scope="col">Ngày kết thúc</th>
                </tr>
                </thead>
                <tbody id="myTable">
                <tr>
                  <th scope="row">1</th>
                  <td><a href="/home">122345</a></td>
                  <td>Le Minh</td>
                  <td>Dang</td>
                  <td>1-1-2000</td>
                  <td>Kích Hoạt</td>
                  <td>Gửi tiền cho vui</td>
                  <td>10000000</td>
                  <td>Không</td>
                  <td>0.5</td>
                  <td>31-12-2000</td>
                  <td>31-12-2000</td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <script>
    $(document).ready(function(){
      $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
      });
    });
  </script>
</section>
</body>
</html>

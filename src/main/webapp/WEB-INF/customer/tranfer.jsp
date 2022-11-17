<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/3/2022
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Colorlib Templates">
  <meta name="author" content="Colorlib">
  <meta name="keywords" content="Colorlib Templates">

  <!-- Title Page-->
  <title>Au Register Forms by Colorlib</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" media="all">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" media="all">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all">
</head>
<body>
<div class="container  py-5">

  <!-- For demo purpose -->
  <div class="row mb-4">
    <div class="col-lg-8 mx-auto text-center">
      <h1 class="display-4">Chuyển Khoản</h1>
    </div>
  </div>
  <!-- End -->


  <div class="row">
    <div class="col-lg-7 mx-auto">
      <div class="bg-blue rounded-lg shadow-sm p-5">
        <!-- Credit card form tabs -->
        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item"><a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill"><i class="fa fa-university"></i>
            Khác Ngân Hàng
          </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-paypal" class="nav-link rounded-pill">
              <i class="fa fa-university"></i>
              Cùng Ngân Hàng
            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-bank" class="nav-link rounded-pill">
              <i class="fa fa-phone"></i>
              Số Điện Thoại
            </a>
          </li>
        </ul>
        <!-- End -->


        <!-- Credit card form content -->
        <div class="tab-content">

          <!-- credit card info-->
          <div id="nav-tab-card" class="tab-pane fade show active">
            <p class="alert alert-success">Some text success or error</p>
            <form action = "transfer" role="form" method="post">
              <div class="form-group gy-10">
                <label >Chọn Ngân Hàng</label>
                <select class="form-select" aria-label="Default select example">
                  <option selected>Ngân Hàng</option>
                  <option>ACB - NH TMCP A CHAU</option>
                  <option>AGRIBANK - NH NO VA PT NT VN</option>
                  <option>AN BINH - NH TMCP AN BINH</option>
                  <option>BAN VIET - NH TMCP BAN VIET</option>
                  <option>BAC A - NH TMCP BAC A</option>
                  <option>BANKNET - BANKNET</option>
                  <option>BCB - BANK OF COMMUNICATIONS CN HCM</option>
                  <option>BIDV - NH TMCP DT VA PT VN</option>
                  <option>CB - NH TMCP XAY DUNG VN</option>
                  <option>CITIBANK - CITI BANK VN CH HCM</option>
                  <option>DAB - NH TMCP DONG A</option>
                  <option>FCB - FIRST COMMERCIAL BANK CN HCM</option>
                  <option>MB - NH QUAN DOI</option>
                  <option>OCB - NH PHUONG DONG</option>
                  <option>SCB - NH TMCP SAI GON</option>
                  <option>TCB - NH TMCP KY THUONG</option>
                  <option>VIETIN - NH TMCP CONG THUONG VN</option>
                </select>
              </div>
              <div class="form-group">
                <label >Số Tài Khoản</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" id="cardNumber" placeholder="Số Tài Khoản" class="form-control" required>
                </div>
              </div>
              <div class="form-group">
                <label>Họ và Tên</label>
                <div class="input-group">
                  <input type="text" name="name" placeholder="Họ Tên" class="form-control" required>
                </div>
              </div>
              <div class="form-group">
                <label>Nhập Số Tiền</label>
                <div class="input-group">
                  <input type="text" name="money" placeholder="Tiền" class="form-control" required>
                </div>
              </div>

              <button type="submit" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm" > Tiếp Tục  </button>
<%--              data-toggle="modal" data-target="#exampleModal"--%>
            </form>
          </div>
          <!-- End -->

          <!-- Paypal info -->
          <div id="nav-tab-paypal" class="tab-pane fade">
            <form action="transfer" role="form">
              <div class="form-group">
                <label>Số Tài Khoản</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Your card number" class="form-control" required>
                </div>
              </div>
              <div class="form-group">
                <label>Họ và Tên</label>
                <div class="input-group">
                  <input type="text" name="name" placeholder="Name" class="form-control" required>
                </div>
              </div>
              <div class="form-group">
                <label>Nhập Số Tiền</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Money" class="form-control" required>
                </div>
              </div>

              <button type="button" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Tiếp Tục  </button>
            </form>
          </div>
          <!-- End -->

          <!-- bank transfer info -->
          <div id="nav-tab-bank" class="tab-pane fade">
            <form role="form">
              <div class="form-group">
                <label>Số Điện Thoại</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Phone number" class="form-control" required>
                </div>
              </div>
              <div class="form-group">
                <label>Nhập Số Tiền</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Money" class="form-control" required>
                </div>
              </div>

              <button type="button" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Tiếp Tục  </button>
            </form>
          </div>
          <!-- End -->

          <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Yêu Cầu Xác Nhận</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <div class="form-group">
                    <label>Nhập Mã Xác Nhận</label>
                    <div class="input-group">
                      <input type="text" name="cardNumber" placeholder="Mã Xác Nhận" class="form-control" required>
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                  <button type="button" class="btn btn-primary">Xác Nhận</button>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- End -->

      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>

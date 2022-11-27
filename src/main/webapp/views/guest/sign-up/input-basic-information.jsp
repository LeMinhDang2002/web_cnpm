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
    <title>Đăng Ký</title>

    <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">

    <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<section id="sign-up-1" class="bg-light">
    <div class="vh-100 d-sm-flex justify-content-sm-center align-items-sm-center">
        <div class="m-sm-5 p-5 shadow">

            <div class="mb-2">
                <span>[LOGO]</span>
                <span>CONMEO</span>
            </div>

            <div class="mb-3">
                <span class="h3">Đăng ký</span>
            </div>

            <form action="signup" method="post">
                <input name="action" type="hidden" value="input-basic-information">
                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-6 mb-sm-0 mb-3">
                            <label name="lastname" class="form-label">Họ và tên lót</label>
                            <input type="text" name="lastname" id="lastname" class="form-control">
                        </div>

                        <div class="col-sm-6">
                            <label name="firstname" class="form-label">Tên</label>
                            <input type="text" name="firstname" id="firstname" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <label name="dob" class="form-label">Ngày sinh</label>
                    <input type="date" name="dob" id="dob" class="form-control">
                </div>

                <div class="mb-2">
                    <label name="username" class="form-label">Địa chỉ</label>
                    <div class="container p-0">
                        <div class="row mb-2">
                            <div class="">
                                <input type="text" name="address" id="address" class="form-control">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6 mb-sm-0 mb-3">
                                <label name="district" class="form-label">Quận/Huyện</label>
                                <input type="text" name="district" id="district" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <label name="city-province" class="form-label">Thành phố/Tỉnh</label>
                                <input type="text" name="city-province" id="ity-province" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-primary d-grid gap-2" type="submit">Tiếp theo</button>
                </div>
            </form>
            <form action="signup" method="post">
                <div class="d-grid gap-2">
                    <input type="hidden" name="action" value="cancel">
                    <button class="btn btn-primary me-2" >Hủy</button>
                </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>

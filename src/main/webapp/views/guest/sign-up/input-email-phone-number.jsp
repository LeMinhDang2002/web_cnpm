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
    <title>Đăng ký</title>

    <link rel="stylesheet" href="assets/styles/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.css">
    <link rel="stylesheet" href="assets/styles/codicons/codicon.ttf">

    <script src="assets/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<section id="sign-up-2" class="bg-light">
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
                <input name="action" value="input-email-phone-number" type="hidden">
                <div class="mb-2">
                    <div class="row">
                        <div class="col-sm-8 mb-sm-0 mb-3">
                            <label name="email" class="form-label">Email</label>
                            <input type="email" name="email" id="email" class="form-control">
                        </div>

                        <div class="col-sm-4">
                            <label name="phone-number" class="form-label">Số điện thoại</label>
                            <input type="number" name="phone-number" id="phone-number" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="mb-2">
                    <label name="username" class="form-label">Tài khoản</label>
                    <input type="username" name="username" id="username" class="form-control">
                </div>

                <div class="mb-2">
                    <label name="password" class="form-label">Mật khẩu</label>
                    <div class="input-group">
                        <input type="password" name="password" id="password" class="form-control">
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

                <div class="mb-2">
                    <label name="retype-password" class="form-label">Nhập lại mật khẩu</label>
                    <div class="input-group">
                        <input type="password" name="retype-password" id="retype-password" class="form-control">
                        <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
                    </div>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit">Đăng ký</button>
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

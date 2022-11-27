<%--
  Created by IntelliJ IDEA.
  User: 20133
  Date: 11/24/2022
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán</title>

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
                <span class="h3">Thanh Toán</span>
            </div>

            <form action="payment" method="post">
                <input name="action" type="hidden" value="payment-code-verify">
                <div class="mb-2">
                    <label name="code-verify" class="form-label">Mã Xác Nhận</label>
                    <div class="container p-0">
                        <div class="row mb-2">
                            <div class="">
                                <input type="text" name="code-verify" id="code-verify" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit">Xác Nhận</button>
                </div>

            </form>
        </div>
    </div>
</section>
</body>
</html>

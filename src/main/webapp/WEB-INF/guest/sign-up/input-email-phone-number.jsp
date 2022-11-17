<%@ page contentType="text/html; charset=UTF-8" %>

<%--------------------------------------------------------------------------------------------------------------------%>

<!doctype html>

<%--------------------------------------------------------------------------------------------------------------------%>

<html lang="en">
<head>
  <title>Document</title>
  <%@include file="/WEB-INF/head.jsp" %>
</head>

<%--------------------------------------------------------------------------------------------------------------------%>

<body class="bg-light">

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

        <input type="hidden" name="action" value="input-email-phone-number">

        <div class="mb-2">
          <div class="row">
            <div class="col-sm-8 mb-sm-0 mb-3">
              <label for="email" class="form-label">Email</label>
              <input type="email" name="email" id="email" class="form-control">
            </div>

            <div class="col-sm-4">
              <label for="phone-number" class="form-label">Số điện thoại</label>
              <input type="number" name="phone-number" id="phone-number" class="form-control">
            </div>
          </div>
        </div>

        <div class="mb-2">
          <label for="username" class="form-label">Tài khoản</label>
          <input type="username" name="username" id="username" class="form-control">
        </div>

        <div class="mb-2">
          <label for="password" class="form-label">Mật khẩu</label>
          <div class="input-group">
            <input type="password" name="password" id="password" class="form-control">
            <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
          </div>
        </div>

        <div class="mb-2">
          <label for="retype-password" class="form-label">Nhập lại mật khẩu</label>
          <div class="input-group">
            <input type="password" name="retype-password" id="retype-password" class="form-control">
            <span class="input-group-text"><i class="codicon codicon-eye"></i></span>
          </div>
        </div>

        <div class="d-flex justify-content-sm-end justify-content-center mt-3">
          <button class="btn btn-primary">Đăng ký</button>
        </div>
      </form>

    </div>
  </div>
</section>

</body>

</html>
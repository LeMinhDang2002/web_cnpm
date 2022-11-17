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

        <input type="hidden" name="action" value="input-code-verify">

        <div class="mb-2">
          <label for="code-verify" class="form-label">Nhập Mã Xác Minh</label>
          <div class="container p-0">
            <div class="row mb-2">
              <div class="">
                <input type="text" name="code-verify" id="code-verify" class="form-control">
              </div>
            </div>
          </div>
        </div>

        <div class="d-flex justify-content-sm-end justify-content-center mt-3">
          <button class="btn btn-primary">Xác Nhận</button>
        </div>
      </form>

    </div>
  </div>
</section>

</body>

</html>
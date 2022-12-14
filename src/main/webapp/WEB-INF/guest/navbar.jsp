<%@ page contentType="text/html; charset=UTF-8" %>

<%--------------------------------------------------------------------------------------------------------------------%>

<nav class="navbar navbar-expand-md sticky-top shadow bg-light">
  <div class=" container-fluid">
    <a class="navbar-brand" href="#">[LOGO]</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="#">CSKH</a></li>
      </ul>
      <div class="d-md-flex justify-content-md-end flex-grow-1">
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="signup">Đăng ký</a></li>
          <li class="nav-item"><a class="nav-link" href="signin">Đăng nhập</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>
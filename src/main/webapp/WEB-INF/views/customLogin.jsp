<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 관리자 로그인 페이지 시작 --%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SYNC - Our course</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/icon-48x48.png"/>


    <!-- Vendor CSS Files -->
    <link href="http://106.241.252.54:8086/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="http://106.241.252.54:8086/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="http://106.241.252.54:8086/assets/css/style.css" rel="stylesheet">

</head>

<body>

<main>
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class=" row justify-content-center">
                    <div class="loginCard col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <%--  로고 시작    --%>
                        <div class="d-flex justify-content-center py- ">
                            <a href="/home" class="logo d-flex align-items-center w-auto ">
                                <img class="loginLogo" src="/resources/images/apple-icon-180x180.png" alt="SYNC logoimage">
                                <span class="loginTitle d-none d-lg-block">SYNC</span>
                            </a>
                        </div><!-- 로그 종료 -->

                        <%--    로그인 시작    --%>
                        <div class="card mb-3">
                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">관리자 로그인</h5>
                                    <p class="text-center small">아이디와 패스워드를 입력해주세요</p>
                                </div>

                                <%--   로그인 폼 시작    --%>
                                <form class="row g-3 needs-validation" action="/login" method="post" novalidate>

                                    <%--    아이디 입력    --%>
                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">ID</label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            <input type="text" name="username" class="form-control" id="yourUsername"
                                                   required>
                                            <div class="invalid-feedback">ID를 입력해주세요</div>
                                        </div>
                                    </div>

                                    <%--    비밀번호 입력    --%>
                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control" id="yourPassword"
                                               required>
                                        <div class="invalid-feedback">비밀번호를 입력해주세요</div>
                                    </div>

                                    <%--   자동 로그인    --%>
                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember-me">자동로그인
                                        </div>
                                    </div>

                                    <%--    로그인  버튼    --%>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">로그인</button>
                                        <div class="invalid-feedback">해당 계정은 로그인이 불가합니다.</div>
                                    </div>


                                    <%--    계정 찾기    --%>
                                    <div class="col-12">
                                        <p class="small mb-0">계정이 없으신가요? <a href="pages-register.html">계정 만들기</a></p>
                                    </div>
                                </form>
                                <%--   로그인 폼 끝    --%>

                            </div>
                        </div>
                        <%--    로그인 시작    --%>
                    </div>
                </div>
            </div>

        </section>

    </div>
</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="http://106.241.252.54:8086/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/chart.js/chart.min.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/echarts/echarts.min.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/quill/quill.min.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="http://106.241.252.54:8086/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="http://106.241.252.54:8086//vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="http://106.241.252.54:8086/assets/js/main.js"></script>

</body>

</html>
<%-- 관리자 로그인 페이지 종료 --%>
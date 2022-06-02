<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

<!-- ======= 사이드바 시작 ======= -->
<aside id="sidebar" class="sidebar">

    <!--   메뉴 목록 시작    -->
    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item"><!-- 대시보드 시작  -->
            <a class="nav-link collapsed" href="/home">
                <i class="bi bi-grid"></i>
                <span>대시보드</span>
            </a>
        </li><!-- 대시보드 종료  -->


        <li class="nav-item"><!-- 게시판 관리 시작  -->
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>게시판 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/notice/list">
                        <i class="bi bi-circle"></i><span>공지사항</span>
                    </a>
                </li>
                <li>
                    <a href="http://106.241.252.54:8086/components-accordion.html">
                        <i class="bi bi-circle"></i><span>묻고 답하기</span>
                    </a>
                </li>
                <li>
                    <a href="http://106.241.252.54:8086/tables-data.html">
                        <i class="bi bi-circle"></i><span>신고내역</span>
                    </a>
                </li>
            </ul>
        </li><!-- 게시판 관리 종료  -->

        <li class="nav-item"><!-- 코스 관리 시작   -->
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-treasure-map-fill"></i><span>코스 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
            </ul>
        </li><!--  코스 관리 종료  -->

        <li class="nav-item"><!--  사용자 관리 시작  -->
            <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-contacts-fill"></i></i><span>사용자 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/member/list" class="active">
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/member/register">
                                <i class="bi bi-circle"></i><span>회원 등록</span>
                            </a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="http://106.241.252.54:8086/tables-data.html">
                        <i class="bi bi-circle"></i><span>크루 관리</span>
                    </a>
                </li>

            </ul>
        </li><!-- 사용자 관리 끝  -->

        <%--   기타 페이지 시작     --%>
        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/users-profile.html">
                <i class="bi bi-person"></i>
                <span>관리자 정보</span>
            </a>
        </li><!-- 관리자 정보 페이지 -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- F.A.Q 페이지-->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>비상연락망</span>
            </a>
        </li><!-- 비상연락망 페이지 -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>관리자 등록</span>
            </a>
        </li><!-- 관리자 등록 페이지  -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-login.html">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>로그아웃</span>
            </a>
        </li><!-- 로그아웃 페이지 -->
    </ul>
    <!--   메뉴 목록 종료    -->

</aside>
<!------ 사이드바 종료 ------>


<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SYNC - Our course</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="http://106.241.252.54:8086/assets/img/favicon.png" rel="icon">
    <link href="http://106.241.252.54:8086/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="http://106.241.252.54:8086/https://fonts.gstatic.com" rel="preconnect">
    <link href="http://106.241.252.54:8086/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

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

    <!-- =======================================================
    * Template Name: NiceAdmin - v2.2.2
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="http://106.241.252.54:8086/index.html" class="logo d-flex align-items-center">
            <img src="http://106.241.252.54:8086/assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">SYNC<sup> - Our course </sup></span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                    <li class="dropdown-header">
                        이동헌 - 관리자 님, 새 알림 4개가 있습니다.
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-exclamation-circle text-warning"></i>
                        <div>
                            <h4>신고내역 추가</h4>
                            <p>신고내역에 15개의 신고 게시글이 추가되었습니다</p>
                            <p>30분 전</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-x-circle text-danger"></i>
                        <div>
                            <h4>Atque rerum nesciunt</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>1 hr. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-check-circle text-success"></i>
                        <div>
                            <h4>Sit rerum fuga</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>2 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-info-circle text-primary"></i>
                        <div>
                            <h4>Dicta reprehenderit</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>4 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all notifications</a>
                    </li>

                </ul><!-- End Notification Dropdown Items -->

            </li><!-- End Notification Nav -->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        새 메세지 3개가 있습니다
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="http://106.241.252.54:8086/assets/img/messages-1.jpg" alt=""
                                 class="rounded-circle">
                            <div>
                                <h4>박선정 - 관리자</h4>
                                <p>코스 통계에서 지역별 코스 개수 그래프가 로딩되지 않는 오류가 발생했습니다, </p>
                                <p>1시간 전</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="http://106.241.252.54:8086/assets/img/messages-2.jpg" alt=""
                                 class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="http://106.241.252.54:8086/assets/img/messages-3.jpg" alt=""
                                 class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>

                </ul><!-- End Messages Dropdown Items -->

            </li><!-- End Messages Nav -->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="http://106.241.252.54:8086/assets/img/admin-img3.png" alt="Profile"
                         class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">이동헌 - 관리자</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>이동헌</h6>
                        <span></span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="http://106.241.252.54:8086/users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>관리자 정보</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="http://106.241.252.54:8086/users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>계정 설정</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center"
                           href="http://106.241.252.54:8086/pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>도움말</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>로그아웃</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/index.html">
                <i class="bi bi-grid"></i>
                <span>대시보드</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>게시판 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/board/notice">
                        <i class="bi bi-circle"></i><span>공지사항</span>
                    </a>
                </li>
                <li>
                    <a href="http://106.241.252.54:8086/components-accordion.html">
                        <i class="bi bi-circle"></i><span>묻고 답하기</span>
                    </a>
                </li>
                <li>
                    <a href="http://106.241.252.54:8086/tables-data.html">
                        <i class="bi bi-circle"></i><span>신고내역</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-journal-text"></i><span>코스 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/board/courseStat">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
                <%--                <li>--%>
                <%--                    <a href="/board/courseStat">--%>
                <%--                        <i class="bi bi-circle"></i><span>코스 통계</span>--%>
                <%--                    </a>--%>
                <%--                </li>--%>

            </ul>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-contacts-fill"></i></i><span>사용자 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/board/member" class="active">
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/board/read">
                                <i class="bi bi-circle"></i><span>회원 정보</span>
                            </a>
                        </li>
                        <li>
                            <a href="/board/register">
                                <i class="bi bi-circle"></i><span>회원 등록</span>
                            </a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="http://106.241.252.54:8086/tables-data.html">
                        <i class="bi bi-circle"></i><span>크루 관리</span>
                    </a>
                </li>

            </ul>
        </li><!-- End Tables Nav -->

        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/users-profile.html">
                <i class="bi bi-person"></i>
                <span>관리자 정보</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>비상연락망</span>
            </a>
        </li><!-- End Contact Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>관리자 등록</span>
            </a>
        </li><!-- End Register Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://106.241.252.54:8086/pages-login.html">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>로그아웃</span>
            </a>
        </li><!-- End Login Page Nav -->


    </ul>

</aside><!-- 사이드바 종료-->

<main id="main" class="main">

    <%-- 페이지 타이틀 시작   --%>
    <div class="pagetitle">
        <h1>회원 관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item">사용자 관리</li>
                <li class="breadcrumb-item active">회원 관리</li>
            </ol>
        </nav>
    </div><!-- 페이지 타이틀 종료 -->

    <%-- 통계 그래프 시작--%>
    <section class="section">
        <div class="row">

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">나이별 분포도</h5>

                        <!-- 실선 차트 시작 -->
                        <canvas id="lineChart" style="max-height: 400px;"></canvas>
                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new Chart(document.querySelector('#lineChart'), {
                                    type: 'line',
                                    data: {
                                        labels: ['10대', '20대', '30대', '40대', '50대', '60대', '70대'],
                                        datasets: [{
                                            label: '나이',
                                            data: [35, 72, 82, 64, 54, 55, 25],
                                            fill: false,
                                            borderColor: 'rgb(75, 192, 192)',
                                            tension: 0.1
                                        }]
                                    },
                                    options: {
                                        scales: {
                                            y: {
                                                beginAtZero: true
                                            }
                                        }
                                    }
                                });
                            });
                        </script>
                        <!-- 실선 차트 끝 -->

                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">회원 분포도</h5>
                        <span class="badge rounded-pill bg-primary">dd</span>

                        <!-- 막대차트 시작 -->
                        <canvas id="barChart" style="max-height: 400px;"></canvas>
                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new Chart(document.querySelector('#barChart'), {
                                    type: 'bar',
                                    data: {
                                        labels: ['서울', '경기', '인천', '강원', '부산', '대구', '애틀란타'],
                                        datasets: [{
                                            label: '회원 수',
                                            data: [75, 59, 34, 65, 56, 55, 40],
                                            backgroundColor: [
                                                'rgba(255, 99, 132, 0.2)',
                                                'rgba(255, 159, 64, 0.2)',
                                                'rgba(255, 205, 86, 0.2)',
                                                'rgba(75, 192, 192, 0.2)',
                                                'rgba(54, 162, 235, 0.2)',
                                                'rgba(153, 102, 255, 0.2)',
                                                'rgba(201, 203, 207, 0.2)'
                                            ],
                                            borderColor: [
                                                'rgb(255, 99, 132)',
                                                'rgb(255, 159, 64)',
                                                'rgb(255, 205, 86)',
                                                'rgb(75, 192, 192)',
                                                'rgb(54, 162, 235)',
                                                'rgb(153, 102, 255)',
                                                'rgb(201, 203, 207)'
                                            ],
                                            borderWidth: 1
                                        }]
                                    },
                                    options: {
                                        scales: {
                                            y: {
                                                beginAtZero: true
                                            }
                                        }
                                    }
                                });
                            });
                        </script>
                        <!-- 막대차트 종료 -->

                    </div>
                </div>
            </div>
        </div>
    </section>
    <%-- 통계 그래프 종료--%>

    <%--  회원 목록 시작 --%>
    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">회원 목록</h5>
                        <h5 class="blockquote-footer"> 총 회원 수: <cite title="Source Title">${pageMaker.total}</cite></h5>

                        <!-- 테이블 시작 -->
                        <table class="table table-hover" style="text-align: center">
                            <thead>
                            <tr>
                                <th scope="col">회원번호</th>
                                <th scope="col">ID</th>
                                <th scope="col">이름</th>
                                <th scope="col">생년월일</th>
                                <th scope="col">성별</th>
                                <th scope="col">활동지역</th>
                                <th scope="col">가입일자</th>
                                <th scope="col">수정일자</th>
                                <th scope="col">조회</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr class="dtoList">
                                <c:forEach items="${dtoList}" var="member">
                            <tr>
                                <td> ${member.m_id}</td>
                                <td>${member.username}</td>
                                <td>${member.name}</td>
                                <td>${member.birth}</td>
                                <td>${member.gender}</td>
                                <td>${member.addr}</td>
                                <td>${member.joinDate}</td>
                                <td>${member.updateDate}</td>
                                <td>
                                    <button type="button" class="btn btn-primary"
                                            onclick="location.href='/board/read/${member.m_id}'">
                                        상세조회
                                    </button>
                                </td>
                            </tr>
                            </c:forEach>
                            </tr>
                            </tbody>
                        </table>
                        <!-- 테이블 끝 -->

                        <%-- 테이블 style 시작 --%>
                        <style>
                            .modal-size {
                                width: 1400px;
                                position: fixed;
                                top: 50%;
                                left: 50%;
                                transform: translate(-50%, -50%);
                                display: flex;
                            }
                        </style>
                        <%-- 테이블 style 끝 --%>


                        <div class="row g-3 justify-content-center">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <select class="selectType small">
                                        <option value="t" ${listDTO.type == "t"?"selected":""}>ID</option>
                                        <option value="tc" ${listDTO.type == "tc"?"selected":""}>이름</option>
                                        <option value="tcw" ${listDTO.type == "tcw"?"selected":""}>지역</option>
                                    </select>

                                    <input type="text" class="form-control small inputText"
                                           placeholder="검색어 입력"
                                           aria-label="Search" aria-describedby="basic-addon2"
                                           value="${listDTO.keyword}">
                                    <button class="btn btn-secondary btn1 searchBtn" type="button">
                                        <i class="ri-search-2-line"></i>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <button type="button" class="btn btn-primary btn_register"
                                onclick="location.href='/board/register'">회원 등록
                        </button>


                        <!-- 페이지네이션 시작 -->
                        <ul class="secondary pagination small justify-content-center">
                            <c:if test="${pageMaker.prev}">
                                <li class="page-item">
                                    <a class="page-link" href="${pageMaker.start -1}"
                                       aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:forEach begin="${pageMaker.start}" end="${pageMaker.end }"
                                       var="num">
                                <li class="page-item <c:out value="${pageMaker.page == num ? 'active':''}"/>"><a
                                        class="page-link"
                                        href="${num}">${num}</a>
                                </li>
                            </c:forEach>
                            <c:if test="${pageMaker.next}">
                                <li class="page-item">
                                    <a class="page-link" href="${pageMaker.end +1}"
                                       aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                        <!-- 페이지네이션 끝 -->

                        <style>
                            .page-link {
                                color: #000;
                                background-color: #fff;
                                border: 1px solid #ccc;
                            }

                            .page-item.active .page-link {
                                z-index: 1;
                                color: #555;
                                font-weight: bold;
                                background-color: #f1f1f1;
                                border-color: #ccc;

                            }

                            .page-link:focus, .page-link:hover {
                                color: #000;
                                background-color: #fafafa;
                                border-color: #ccc;
                            }
                        </style>

                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-md-5">
                                    <form class="form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 actionForm"
                                          action="/board/member" method="get">
                                        <input type="hidden" name="page" value="${listDTO.page}">
                                        <input type="hidden" name="size" value="${listDTO.size}">
                                        <input type="hidden" name="type"
                                               value="${listDTO.type == null ? '':listDTO.type}">
                                        <input type="hidden" name="keyword"
                                               value="${listDTO.keyword == null ? '':listDTO.keyword}">
                                    </form>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </section>
    <%--  회원 목록 끝 --%>

</main>
<div>
    <button class="listBtn">리스트</button>
    <button class="modPostBtn">수정</button>
    <button class="delPostBtn">삭제</button>
</div>

<div class="uploadResult">
</div>

<form class="actionForm" action="/board/remove/${bno}" method="post">
</form>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

    const uploadResult = document.querySelector(".uploadResult")

    function loadImages() {
        axios.get("/board/files/${dto.m_id}").then(
            res => {
                const resultArr = res.data

                uploadResult.innerHTML += resultArr.map(({uuid, thumbnail, link, fileName, savePath, img}) => `
                <div data-uuid='\${uuid}' data-img='\${img}'  data-filename='\${fileName}'  data-savepath='\${savePath}'>
                <img src='/view?fileName=\${thumbnail}'>
                <button data-link='\${link}' class="delBtn">x</button>
                \${fileName}</div>`).join(" ")
            }
        )
    }

    loadImages()

    uploadResult.addEventListener("click", (e) => {

        if (e.target.getAttribute("class").indexOf("delBtn") < 0) {
            return
        }
        const btn = e.target
        const link = btn.getAttribute("data-link")

        deleteToServer(link).then(result => {
            btn.closest("div").remove()
        })

    }, false)

    //파일 업로드 버튼 이벤트 처리
    document.querySelector(".uploadBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        //파일 업로드 처리
        const formObj = new FormData();

        const fileInput = document.querySelector(".uploadFile")

        console.log(fileInput.files)

        const files = fileInput.files

        for (let i = 0; i < files.length; i++) {
            console.log(files[i])
            formObj.append("files", files[i])
        }


        uploadToServer(formObj).then(resultArr => {

            uploadResult.innerHTML += resultArr.map(({uuid, thumbnail, link, fileName, savePath, img}) => `
                <div data-uuid='\${uuid}' data-img='\${img}'  data-filename='\${fileName}'  data-savepath='\${savePath}'>
                <img src='/view?fileName=\${thumbnail}'>
                <button data-link='\${link}' class="delBtn">x</button>
                \${fileName}</div>`).join(" ")

        })

    }, false)

    async function deleteToServer(fileName) {
        const options = {headers: {"Content-Type": "application/x-www-form-urlencoded"}}

        const res = await axios.post("/delete", "fileName=" + fileName, options)

        console.log(res.data)

        return res.data
    }

    async function uploadToServer(formObj) {

        console.log("upload to server......")
        console.log(formObj)

        const response = await axios({
            method: 'post',
            url: '/upload1',
            data: formObj,
            headers: {
                'Content-Type': 'multipart/form-data',
            },
        });

        return response.data
    }

</script>

<script>

    function sQuery(expression) {

        return document.querySelector(expression)
    }

    const bno =
    ${dto.m_id}

    const actionForm = sQuery(".actionForm")

    document.querySelector(".listBtn").addEventListener("click", (e) => {

        self.location = `/board/member${memberDTO.link}`

    }, false)

    sQuery(".delPostBtn").addEventListener("click", (e) => {

        actionForm.setAttribute("action", `/board/remove/${m_id}`)
        actionForm.submit()

    }, false)

    document.querySelector(".modPostBtn").addEventListener("click", (e) => {

        alert("EEEEEEEEEEEE")

        e.preventDefault()
        e.stopPropagation()

        const divArr = document.querySelectorAll(".uploadResult > div")

        let str = "";
        for (let i = 0; i < divArr.length; i++) {
            const fileObj = divArr[i]

            if (i === 0) {
                const mainImageLink = fileObj.querySelector("img").getAttribute("src")
                str += `<input type='hidden' name='mainImage' value='\${mainImageLink}'>`
            }

            const uuid = fileObj.getAttribute("data-uuid")
            const img = fileObj.getAttribute("data-img")
            const savePath = fileObj.getAttribute("data-savepath")
            const fileName = fileObj.getAttribute("data-filename")

            str += `<input type='hidden' name='uploads[\${i}].uuid' value='\${uuid}'>`
            str += `<input type='hidden' name='uploads[\${i}].img' value='\${img}'>`
            str += `<input type='hidden' name='uploads[\${i}].savePath' value='\${savePath}'>`
            str += `<input type='hidden' name='uploads[\${i}].fileName' value='\${fileName}'>`
        }//for

        const actionForm = document.querySelector(".modForm")
        actionForm.innerHTML += str

        actionForm.submit()

    }, false)

</script>
</body>


<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>

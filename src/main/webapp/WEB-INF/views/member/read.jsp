<%--
  Created by IntelliJ IDEA.
  User: tyran
  Date: 2022-05-09
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
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
    <link href="http://106.241.252.54:8086/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
                        강교득 - 관리자 님, 새 알림 4개가 있습니다.
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
                            <img src="http://106.241.252.54:8086/assets/img/messages-1.jpg" alt="" class="rounded-circle">
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
                            <img src="http://106.241.252.54:8086/assets/img/messages-2.jpg" alt="" class="rounded-circle">
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
                            <img src="http://106.241.252.54:8086/assets/img/messages-3.jpg" alt="" class="rounded-circle">
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
                    <img src="http://106.241.252.54:8086/assets/img/admin-img3.png" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">강교득 - 관리자</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>강교득</h6>
                        <span></span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="http://106.241.252.54:8086/users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>관리자 정보</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="http://106.241.252.54:8086/users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>계정 설정</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="http://106.241.252.54:8086/pages-faq.html">
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
                    <a href="http://106.241.252.54:8086/tables-data.html" >
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
                    <a href="http://106.241.252.54:8086/forms-elements.html" >
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
                <li>
                    <a href="/board/courseStat">
                        <i class="bi bi-circle"></i><span>코스 통계</span>
                    </a>
                </li>

            </ul>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-contacts-fill"></i></i><span>사용자 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/member/list" >
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                    <ul >
                        <li>
                            <a href="/member/read" class="active">
                                <i class="bi bi-circle"></i><span>회원 정보</span>
                            </a>
                        </li>
                        <li>
                            <a href="/member/register">
                                <i class="bi bi-circle"></i><span>회원 등록</span>
                            </a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="http://106.241.252.54:8086/tables-data.html" >
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

</aside><!-- End Sidebar-->

<%--    header 종료 --%>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>회원 정보</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">사용자 관리</a></li>
                <li class="breadcrumb-item"><a href="/member/list">회원 관리</a></li>
                <li class="breadcrumb-item active">회원 정보</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->


    <section class="section profile">
        <div class="row">
            <div class="col-xl-4">

                <div class="card">
                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                        <img src="http://106.241.252.54:8086/assets/img/admin-img.png" alt="Profile" class="rounded-circle">
                        <h2>${dto.name}</h2>
                        <h3>${dto.addr}</h3>
                        <div class="social-links mt-2">
                            <a href="#" class="twitter"><i class="bi bi-twitter">런윗새우 런닝크루</i></a>

                        </div>
                    </div>
                </div>

            </div>

            <div class="col-xl-8">

                <div class="card">
                    <div class="card-body pt-3">
                        <!-- Bordered Tabs -->
                        <ul class="nav nav-tabs nav-tabs-bordered">

                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">프로필 조회</button>
                            </li>

                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">작성글</button>
                            </li>

                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">작성 댓글</button>
                            </li>

                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">계정 관리</button>
                            </li>

                        </ul>
                        <div class="tab-content pt-2">

                            <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                <h5 class="card-title">소개</h5>
                                <p class="small fst-italic">${dto.content}</p>

                                <h5 class="card-title">상세 정보</h5>


                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">ID</div>
                                    <div class="col-lg-9 col-md-8">${dto.username}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">이름</div>
                                    <div class="col-lg-9 col-md-8">${dto.name}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">소속 크루</div>
                                    <div class="col-lg-9 col-md-8">런윗새우 크루</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">생년월일</div>
                                    <div class="col-lg-9 col-md-8">${dto.birth}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">성별</div>
                                    <div class="col-lg-9 col-md-8">${dto.gender}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">활동지역</div>
                                    <div class="col-lg-9 col-md-8">${dto.addr}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">E-mail</div>
                                    <div class="col-lg-9 col-md-8">${dto.email}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">전화번호</div>
                                    <div class="col-lg-9 col-md-8">${dto.phone}</div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">가입일자</div>
                                    <div class="col-lg-9 col-md-8">${dto.joinDate}</div>
                                </div>

                            </div>
                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                <!-- Profile Edit Form -->
                                <form>
                                    <div class="card">
                                        <div class="card-body">

                                            <h5 class="card-title">5개의 게시글이 있습니다.</h5>

                                            <!-- List group with Advanced Contents -->
                                            <div class="list-group">
                                                <a href="/course/read" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>

                                                    <div class="text-muted"><span class="ri-map-pin-2-fill"></span> 코스게시판</div>
                                                    <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                    <span class="mb-1">춘천 소양2교 코스</span>
                                                    <span class="badge bg-secondary rounded-pill">7</span>
                                                    <div class="text-muted"><small class="text-muted">runnermile97</small> 2022.02.28</div>

                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>


                                                    <div class="text-muted"><span class="ri-question-fill"></span> 문의사항</div>
                                                    <span class="mb-1">마커가 생성되지 않습니다..</span>
                                                    <span class="ri-image-2-fill"></span>
                                                    <span class="badge bg-primary rounded-pill">답변완료</span>
                                                    <div class="text-muted"><small class="text-muted">runnermile97</small> 2022.01.20</div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>

                                                    <div class="text-muted"><span class="ri-map-pin-2-fill"></span> 코스게시판</div>
                                                    <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                    <span class="mb-1">서울 중랑천 코스</span>
                                                    <span class="badge bg-secondary rounded-pill">2</span>
                                                    <div class="text-muted"><small class="text-muted">runnermile97</small> 2022.01.22</div>

                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>

                                                    <div class="text-muted"><span class="ri-map-pin-2-fill"></span> 코스게시판</div>
                                                    <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                    <span class="mb-1">잠실 석촌호수 코스</span>
                                                    <span class="badge bg-secondary rounded-pill">12</span>
                                                    <div class="text-muted"><small class="text-muted">runnermile97</small> 2022.02.28</div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>


                                                    <div class="text-muted"><span class="ri-question-fill"></span> 문의사항</div>
                                                    <span class="mb-1">데이터 기록 중 정지했을 경우..</span>
                                                    <span class="badge bg-danger rounded-pill">답변 중</span>
                                                    <div class="text-muted"><small class="text-muted">runnermile97</small> 2022.01.20</div>
                                                </a>
                                            </div><!-- End List group Advanced Content -->

                                        </div>
                                    </div>
                                </form><!-- End Profile Edit Form -->

                            </div>

                            <div class="tab-pane fade pt-3" id="profile-settings">

                                <!-- Settings Form -->
                                <form>

                                    <div class="card">
                                        <div class="card-body">
                                            <%--                                            <i class="ri-attachment-2"></i>--%>
                                            <%--                                            <i class="ri-camera-fill"></i>--%>
                                            <%--                                            <i class="ri-celsius-fill"></i>--%>
                                            <%--                                            <i class="ri-flag-fill"></i>--%>
                                            <%--                                            <i class="ri-image-2-fill"></i>--%>


                                            <h5 class="card-title">2개의 댓글이 있습니다.</h5>

                                            <!-- List group with Advanced Contents -->
                                            <div class="list-group">
                                                <a href="#" class="list-group-item list-group-item-action" aria-current="true">
                                                    <div class="d-flex w-100 justify-content-between"></div>
                                                    <p class="mb-1">저번 주에 내린 눈이 아직 녹지 않아서 길이 미끄러워요 ㅠㅠ</p>
                                                    <span class="text-muted"><small>구리 왕숙천</small></span>
                                                    <span class="badge bg-secondary rounded-pill">7</span>
                                                    <div class="text-muted">2022.05.11</div>

                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="d-flex w-100 justify-content-between"></div>
                                                    <p class="mb-1">바람이 적당히 불어서 뛰기 좋은 코스에요! :)</p>
                                                    <span class="text-muted"><small>삼패지구 한강시민공원</small></span>
                                                    <span class="badge bg-secondary rounded-pill">11</span>
                                                    <div class="text-muted">2022.04.28</div>
                                                </a>

                                            </div><!-- End List group Advanced Content -->

                                        </div>
                                    </div>


                                </form><!-- End settings Form -->

                            </div>
                            <div class="tab-pane fade pt-3" id="profile-change-password">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">계정 관리</h5>
                                        <ul>
                                            <li><p>기록은 탈퇴 후 3개월 간 강제탈퇴된 멤버들에 한해서만 보여집니다.</p></li>
                                            <li><p>멤버 스스로 탈퇴한 기록은 남지 않습니다,</p></li>
                                            <li><p>강제탈퇴 시 재가입 불가합니다.</p></li>
                                        </ul>


                                        <!-- Scrolling Modal -->
                                        <span class="button">
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#scrollingModal">
                                                활동정지
                                            </button>
                                        </span>

                                        <div class="modal fade" id="scrollingModal" tabindex="-1">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">활동정지</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        해당 회원을 활동정지 처리합니다.
                                                        <span>활동 정지된 회원은 30일 간 접속이 불가능합니다. 계속 진행하시겠습니다?</span>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                                        <button type="button" class="btn btn-primary">확인</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- End Scrolling Modal-->

                                        <!-- Modal Dialog Scrollable -->
                                        <span class="button">
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalDialogScrollable">
                                                강제탈퇴
                                            </button>
                                        </span>

                                        <div class="modal fade" id="modalDialogScrollable" tabindex="-1">
                                            <div class="modal-dialog modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">회원 강제탈되</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <ul>
                                                            <li><p>기록은 탈퇴 후 3개월 간 강제탈퇴된 멤버들에 한해서만 보여집니다.</p></li>
                                                            <li><p>멤버 스스로 탈퇴한 기록은 남지 않습니다,</p></li>
                                                            <li><p>강제탈퇴 시 재가입 불가합니다.</p></li>
                                                        </ul>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                                        <button type="button" class="btn btn-primary">완전 탈퇴</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- End Modal Dialog Scrollable-->
                                    </div>
                                </div>
                            </div><!-- End Bordered Tabs -->

                        </div>
                    </div>


                </div>
            </div>
    </section>


</main><!-- End #main -->

<%@ include file="/WEB-INF/views/footer.jsp"%>
<%--${dtoList}--%>
<%--<div>--%>
<%--    <div>--%>
<%--        <input type="text" name="usename" value="${dto.username}">--%>
<%--        <input type="text" name="name" value="${dto.name}">--%>
<%--        <input type="text" name="addr" value="${dto.addr}">--%>
<%--        <input type="text" name="email" value="${dto.email}">--%>
<%--        <input type="text" name="phone" value="${dto.phone}">--%>
<%--    </div>--%>
<%--</div>--%>

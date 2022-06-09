<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <a href="/question/list">
                        <i class="bi bi-circle"></i><span>묻고 답하기</span>
                    </a>
                </li>
                <li>
                    <a href="/report/list">
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
                    <a href="/crew/list">
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

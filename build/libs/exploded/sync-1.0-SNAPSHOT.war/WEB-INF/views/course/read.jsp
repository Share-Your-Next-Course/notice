<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="/home">
                <i class="bi bi-grid"></i>
                <span>대시보드</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>게시판 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
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
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-treasure-map-fill"></i><span>코스 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list" class="active">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                    <a href="/course/register" >
                        <i class="bi bi-circle"></i><span>코스 등록</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-contacts-fill"></i><span>사용자 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/member/list">
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                </li>
                <li>
                    <a href="/crew/list">
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
</aside>

<%--    header 종료 --%>

<main id="main" class="main">

    <section class="section">
        <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">코스 이미지</h5>
                    <div>
                        <img class="mapImg" width="550" src="${dtoList.center}">
                    </div>
                </div>
            </div>

        </div>

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">코스 등록</h5>

                        <!-- 코스 정보 기입란 시작 -->
                        <form class="actionForm" action="/course/register" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">코스 제목</label>
                                <div class="col-sm-10">
                                    <input type="text" name="title1" class="form-control title" placeholder="20자 내외" value="${dtoList.title}" readonly>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">코스 소개</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control content" name="content1"
                                              style="resize: none; height: 100px" readonly>${dtoList.content}</textarea>
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">활동지역</label>
                                <div class="col-sm-10">
                                    <input type="text" name="addr1" class="form-control addr" value="${dtoList.addr}" readonly>
                                </div>
                            </div>
                        </form>
                        <div class="row mb-3">
                            <div class="col-sm-5">

                                <button type="button" class="btn btn-secondary small" data-bs-toggle="modal"
                                        data-bs-target="#scrollingModal">코스 수정
                                </button>
                                <button type="button" class="btn btn-secondary small listBtn">목록으로</button>
                            </div>
                        </div>


                        <%--                        &lt;%&ndash;코스 등록 모달 시작&ndash;%&gt;--%>
                        <%--                        <div class="modal fade" id="scrollingModal" tabindex="-1">--%>
                        <%--                            <div class="modal-dialog">--%>
                        <%--                                <div class="modal-content">--%>
                        <%--                                    <div class="modal-header">--%>
                        <%--                                        <h5 class="modal-title">코스 등록</h5>--%>
                        <%--                                        <button type="button" class="btn-close" data-bs-dismiss="modal"--%>
                        <%--                                                aria-label="Close"></button>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="modal-body">--%>

                        <%--                                        <div class="accordion" id="accordionExample">--%>
                        <%--                                            <div style="text-align: center">--%>
                        <%--                                                <span><strong>코스 등록을 계속 진행하시겠습니다?</strong></span>--%>
                        <%--                                            </div>--%>
                        <%--                                        </div><!-- End Default Accordion Example -->--%>

                        <%--                                    </div>--%>
                        <%--                                    &lt;%&ndash;   모달 닫기 / 확인 버튼 시작 &ndash;%&gt;--%>
                        <%--                                    <div class="modal-footer">--%>
                        <%--                                        <button type="submit" class="btn btn-secondary formBtn">확인</button>--%>
                        <%--                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기--%>
                        <%--                                        </button>--%>
                        <%--                                    </div>--%>
                        <%--                                    &lt;%&ndash;   모달 닫기 / 확인 버튼 끝 &ndash;%&gt;--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <!-- 코스등록 모달창 끝-->--%>
                        <%--                        <div class="uploadResult">--%>
                        <%--                        </div>--%>


                    </div>
                </div>

            </div>

        </div>
    </section>


</main><!-- End #main -->
<script>

    document.querySelector(".listBtn").addEventListener("click", (e)=>{
        self.location = "/course/list"
    },false)

</script>


<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

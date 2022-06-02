<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
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
                    <a href="/board/member" >
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/board/read">
                                <i class="bi bi-circle"></i><span>회원 정보</span>
                            </a>
                        </li>
                        <li>
                            <a href="/board/register" >
                                <i class="bi bi-circle"></i><span>회원 등록</span>
                            </a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="/crew/list" class="active">
                        <i class="bi bi-circle"></i><span>크루 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/crew/register">
                                <i class="bi bi-circle"></i><span>크루 등록</span>
                            </a>
                        </li>
                    </ul>
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
        <h1>크루 관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item">사용자 관리</li>
                <li class="breadcrumb-item active">크루 관리</li>
            </ol>
        </nav>
    </div><!-- 페이지 타이틀 종료 -->

    <%-- 통계 그래프 시작--%>
    <section class="section">
        <div class="row">

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">크루 : ${dtoList[0].cr_name}</h5>
                        <h6>소개 : ${dtoList[0].content}</h6>
                        <c:choose>
                            <c:when test="${dtoList[0].mainImage != null}">
                                <!-- Result값이 있다면 실행할 로직 -->
                                <img src="${dtoList[0].getMain()}">
                            </c:when>
                            <c:otherwise>
                                <!-- 그렇지 않다면 실행할 로직 -->
                                <img src="http://106.241.252.54:8086/assets/img/logo4.png" width="300px;" height="260px;">
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">크루원 분포도(지역)</h5>

                        <!-- Pie Chart -->
                        <div id="pieChart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new ApexCharts(document.querySelector("#pieChart"), {
                                    series: ${addrTotal},
                                    chart: {
                                        height: 287,
                                        type: 'pie',
                                        toolbar: {
                                            show: true
                                        }
                                    },
                                    labels: ${addr}
                                }).render();
                            });
                        </script>
                        <!-- End Pie Chart -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%-- 통계 그래프 종료--%>

    <%--  크루 목록 시작 --%>
    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">크루원 목록</h5>
                        <h5 class="blockquote-footer"> 총 크루원 수: <cite title="Source Title">${pageMaker.total}</cite></h5>

                        <!-- 크루 테이블 시작 -->
                        <table class="table table-hover" style="text-align: center">
                            <thead>
                            <tr>
                                <th scope="col">크루원</th>
                                <th scope="col">활동지역</th>
                                <th scope="col">계급</th>
                                <th scope="col">크루가입일</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr class="dtoList">
                                <c:forEach items="${dtoList}" var="crew">
                            <tr>
                                <td>${crew.m_name}</td>
                                <td>${crew.addr}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${crew.status == 1 }">
                                            <!-- Result값이 있다면 실행할 로직 -->
                                            캡틴
                                        </c:when>
                                        <c:otherwise>
                                            크루원
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>${crew.createDate}</td>
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
                        <button type="button" class="btn btn-secondary btn_register" onclick="location.href='/crew/list'">크루 목록</button>

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
                                          action="/crew/list" method="get">
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


<script>
    const linkDiv = document.querySelector(".pagination")
    const actionForm = document.querySelector(".actionForm")

    document.querySelector(".dtoList").addEventListener("click", (e) => {

        e.preventDefault()
        e.stopPropagation()

        const target = e.target
        if (target.getAttribute("class").indexOf('dtoLink') < 0) {
            return
        }
        const url = target.getAttribute("href")
        //alert(url)
        actionForm.setAttribute("action", url)
        actionForm.submit()

    }, false)

    linkDiv.addEventListener("click", (e) => {
        e.stopPropagation()
        e.preventDefault()

        const target = e.target

        if (target.getAttribute("class") !== 'page-link') {
            return
        }

        const pageNum = target.getAttribute("href")
        actionForm.querySelector("input[name='page']").value = pageNum
        actionForm.setAttribute("action", "/crew/read/${cr_id}")
        actionForm.submit()

    }, false)


    document.querySelector(".searchBtn").addEventListener("click", (e) => {
        const type = document.querySelector('.searchDiv .type').value
        const keyword = document.querySelector(".searchDiv input[name='keyword']").value

        console.log(type, keyword)

        actionForm.setAttribute("action", "/crew/read/${cr_id}")
        actionForm.querySelector("input[name='page']").value = 1
        actionForm.querySelector("input[name='type']").value = type
        actionForm.querySelector("input[name='keyword']").value = keyword
        actionForm.submit()


    }, false)

</script>



<%@ include file="/WEB-INF/views/includes/footer.jsp" %>


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

<%-- 메인 페이지 시작  --%>
<main id="main" class="main">

    <%-- breadcrumbs 시작   --%>
    <div class="pagetitle">
        <h1>회원 관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/home" ">Home</a></li>
                <li class="breadcrumb-item">사용자 관리</li>
                <li class="breadcrumb-item active">회원 관리</li>
            </ol>
        </nav>
    </div><!-- breadcrumbs 종료 -->

    <%-- 통계 그래프 시작--%>
    <section class="section">
        <div class="row">

            <!-- 나이별 분포도 시작 -->
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
            <!-- 나이별 분포도 종료 -->

            <%--  회원 분포도 시작      --%>
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
            <!-- 회원 분포도 종료 -->
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
                                    <button type="button" class="btn btn-primary readBtn"
                                            onclick="location.href='/member/read/${member.m_id}'">
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
                        <%--    검색창 시작    --%>
                        <div class="row g-3 justify-content-center">
                            <div class="col-sm-6">
                                <div class="input-group searchDiv">
                                    <select class="selectType small type">
                                        <option value="t" ${listDTO.type == "t"?"selected":""}>ID</option>
                                        <option value="tc" ${listDTO.type == "tc"?"selected":""}>이름</option>
                                        <option value="tcw" ${listDTO.type == "tcw"?"selected":""}>지역</option>
                                    </select>

                                    <input type="text" class="form-control small inputText"
                                           name="keyword"
                                           placeholder="검색어 입력"
                                           aria-label="Search" aria-describedby="basic-addon2"
                                           value="${listDTO.keyword}">
                                    <button class="btn btn-secondary btn1 searchBtn" type="button">
                                        <i class="ri-search-2-line"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <%--    검색창 종료    --%>

                        <button type="button" class="btn btn-primary btn_register"
                                onclick="location.href='/member/register'">회원 등록
                        </button>
                        <%--    회원등록 버튼     --%>

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
                        <%--페이지네이션 스타일 시작--%>
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
                        <%--페이지네이션 스타일 종료--%>

                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-md-5">
                                    <form class="form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 actionForm"
                                          action="/member/list" method="get">
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
<%-- 메인 페이지 종료 --%>

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
        actionForm.setAttribute("action", "/member/list")
        actionForm.submit()

    }, false)


    document.querySelector(".searchBtn").addEventListener("click", (e) => {
        const type = document.querySelector('.searchDiv .type').value
        const keyword = document.querySelector(".searchDiv input[name='keyword']").value

        console.log(type, keyword)

        actionForm.setAttribute("action", "/member/list")
        actionForm.querySelector("input[name='page']").value = 1
        actionForm.querySelector("input[name='type']").value = type
        actionForm.querySelector("input[name='keyword']").value = keyword
        actionForm.submit()


    }, false)

</script>
</body>


<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>

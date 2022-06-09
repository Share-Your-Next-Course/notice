<%--
  Created by IntelliJ IDEA.
  User: tyran
  Date: 2022-05-09
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <ul id="components-nav" class="nav-content collapse show " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/notice/list">
                        <i class="bi bi-circle"></i><span>공지사항</span>
                    </a>
                </li>
                <li>
                    <a href="/question/list" >
                        <i class="bi bi-circle"></i><span>묻고 답하기</span>
                    </a>
                </li>
                <li>
                    <a href="/report/list" class="active">
                        <i class="bi bi-circle"></i><span>신고내역</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-journal-text"></i><span>코스 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list" >
                        <i class="bi bi-circle"></i><span>코스 목록</span>
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
                    <a href="/member/list/">
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
<!-- End Sidebar-->
<main id="main" class="main">

    <div class="pagetitle">
        <h1>신고내역</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item">게시판 관리</li>
                <li class="breadcrumb-item active">신고내역</li>
            </ol>
        </nav>
    </div>

    <div class="container-fluid">
        <section class="section">
            <div class="row">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">신고내역
                                <button class="btn btn-secondary small regBtn" style="float: right">등록</button>
                            </h5>

                            <!-- Default Table -->
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <%--                            <th scope="col">이미지</th>--%>
                                    <th scope="col">제목</th>
                                    <th scope="col">글쓴이</th>
                                    <th scope="col">작성시간</th>
                                </tr>
                                </thead>
                                <tbody class="dtoList">
                                <c:forEach items="${dtoList}" var="report">
                                    <tr>
                                        <th scope="row">${report.q_id}</th>
                                        <td><a href='/report/read/${report.q_id}' class="dtoLink">
                                                <%--                                    <img src='${question.mainImage}'>--%>
                                            <c:out value="${report.title}"/></a>

                                        </td>
                                        <th><c:out value="${report.adm_id}"/></th>
                                        <th><c:out value="${report.regDate}"/></th>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!-- End Default Table Example -->
                            <footer class="blockquote-footer">총 게시글 수: <cite
                                    title="Source Title">${pageMaker.total}</cite>
                            </footer>

                            <div class="row g-3 justify-content-center searchDiv">
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <select class="type small">
                                            <option value="">--</option>
                                            <option value="t" ${listDTO.type == "t"?"selected":""}>제목</option>
                                            <option value="tc" ${listDTO.type == "tc"?"selected":""}>제목+내용</option>
                                            <option value="tcw" ${listDTO.type == "tcw"?"selected":""}>제목+내용+작성자
                                            </option>
                                        </select>

                                        <input type="text" class="form-control small inputText"
                                               name="keyword"
                                               placeholder="Search for..."
                                               aria-label="Search" aria-describedby="basic-addon2"
                                               value="${listDTO.keyword}">
                                        <button class="searchBtn btn btn-secondary btn1" type="button">
                                            <i class="ri-search-2-line"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <%--                    <style>--%>
                            <%--                        select {--%>
                            <%--                            width: 75px;--%>
                            <%--                            padding: .8em .5em;--%>
                            <%--                            border: 1px solid #999;--%>
                            <%--                            font-family: inherit;--%>
                            <%--                            border-radius: 0px;--%>
                            <%--                            -webkit-appearance: none;--%>
                            <%--                            -moz-appearance: none;--%>
                            <%--                            appearance: none;--%>
                            <%--                        }--%>

                            <%--                        select::-ms-expand {--%>
                            <%--                            display: none;--%>
                            <%--                        }--%>

                            <%--                    </style>--%>

                            <!-- pagination -->
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
                            <!--end pagination-->
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

                        </div>
                    </div>


                    <!-- page, size, type, keyword담기 -->
                    <form class="actionForm" action="/report//list" method="get">
                        <input type="hidden" name="page" value="${listDTO.page}">
                        <input type="hidden" name="size" value="${listDTO.size}">
                        <input type="hidden" name="type" value="${listDTO.type == null?'':listDTO.type}">
                        <input type="hidden" name="keyword" value="${listDTO.keyword == null?'':listDTO.keyword}">
                    </form>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <span class="modalText">처리되었습니다</span>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                            crossorigin="anonymous"></script>


                    <script>
                        //페이징 링크에 이벤트를 한번에 걸어주는 방법
                        const actionForm = document.querySelector(".actionForm")
                        const linkDiv = document.querySelector(".pagination")
                        linkDiv.addEventListener("click", (e) => {
                            e.stopPropagation()
                            e.preventDefault()
                            const target = e.target
                            //console.log(target)
                            if (target.getAttribute("class") !== 'page-link') {
                                return
                            }
                            const pageNum = target.getAttribute("href")
                            actionForm.querySelector("input[name = 'page']").value = pageNum
                            actionForm.setAttribute("action", "/report/list")
                            actionForm.submit()
                        }, false)
                        //조회페이지로 이동할때 목록페이지 번호, 검색조건, 검색키워드를 유지한 상태로 이동
                        document.querySelector(".dtoList").addEventListener("click", (e) => {
                            e.preventDefault()
                            e.stopPropagation()
                            const target = e.target
                            //console.log(target)
                            if (target.getAttribute("class").indexOf("dtoLink") < 0) {
                                return
                            }
                            const url = target.getAttribute("href")
                            //alert(url)
                            actionForm.setAttribute("action", url)
                            actionForm.submit()
                        }, false)
                        <!-- 검색버튼 누르면 검색조건, 키워드 적용 / 1페이지로 이동 -->
                        document.querySelector(".searchBtn").addEventListener("click", (e) => {
                            const type = document.querySelector(".searchDiv .type").value
                            const keyword = document.querySelector(".searchDiv input[name = 'keyword']").value
                            console.log(type, keyword)
                            actionForm.querySelector("input[name='page']").value = 1
                            actionForm.querySelector("input[name='type']").value = type
                            actionForm.querySelector("input[name='keyword']").value = keyword
                            actionForm.submit()
                        }, false)
                        document.querySelector(".regBtn").addEventListener("click", (e) => {
                            e.preventDefault()
                            e.stopPropagation()
                            self.location = `/report/register/`
                        }, false)
                        const result = '${result}'
                        if (result !== '') {
                            const modalObj = document.querySelector("#exampleModal")
                            const modalDiv = new bootstrap.Modal(modalObj)
                            modalDiv.show()
                        }
                    </script>
                </div>
            </div>
        </section>
    </div>

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
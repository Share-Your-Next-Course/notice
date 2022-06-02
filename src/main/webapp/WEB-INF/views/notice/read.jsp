<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

<!-- ======= 사이드바 시작 ======= -->
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
            <ul id="components-nav" class="nav-content collapse show " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="http://106.241.252.54:8086/components-alerts.html" class="active">
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
            <ul id="forms-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="http://106.241.252.54:8086/forms-elements.html" class="active">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
                <li>
                    <a href="/course/list">
                        <i class="bi bi-circle"></i><span>코스 통계</span>
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

</aside>
<!-- 사이드바 종료-->

<%-- 공지사항 게시물 시작 --%>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>공지사항</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="/notice/list">게시판 관리</a></li>
                <li class="breadcrumb-item active">공지사항</li>
            </ol>
        </nav>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">공지사항 : ${dto.title}</h1>

    <div class="card">
        <div class="card-header">
            공지사항
        </div>
        <div class="card-body">
            <blockquote class="blockquote mb-0">


                <div class="input-group mb-3">
                    <span class="input-group-text"><c:out value="${dto.nt_id}"></c:out></span>
                    <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)"
                           readonly value="<c:out value="${dto.title}"></c:out>">
                    <span class="input-group-text"><c:out value="${dto.username}"></c:out></span>
                    <span class="input-group-text"><c:out value="${dto.regDate}"></c:out></span>
                </div>
                <div class="mb-3">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly><c:out
                            value="${dto.content}"></c:out></textarea>
                </div>
                <div>
                    <button class="btn btn-outline-secondary moreBtn">더보기</button>
                    <div class="pictures">
                        <c:if test="${dto.mainImage != null}">
                            <img src="${dto.getMain()}">
                        </c:if>
                    </div>
                </div>
            </blockquote>
        </div>

        <div class="card-footer text-muted">
            <div style="float: right">
                <button class="btn btn-secondary modBtn">수정</button>
                <button class="btn btn-secondary listBtn">목록</button>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-5">
                    <form class="form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 actionForm"
                          action="/notice/list" method="get">
                        <input type="hidden" name="page" value="${listDTO.page}">
                        <input type="hidden" name="size" value="${listDTO.size}">
                        <input type="hidden" name="type" value="${listDTO.type == null ? '':listDTO.type}">
                        <input type="hidden" name="keyword"
                               value="${listDTO.keyword == null ? '':listDTO.keyword}">
                    </form>
                </div>
                <div class="col-sm-4 ">
                    <nav aria-label="Page navigation example">
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
        document.querySelector(".moreBtn").addEventListener("click", (e) => {

            axios.get("/notice/files/${dto.nt_id}").then(
                res => {
                    console.log(res.data)
                    const arr = res.data
                    let str = ""
                    for (let i = 0; i < arr.length; i++) {
                        str += `<img src='/view?fileName=\${arr[i].link}';">`
                    }
                    console.log(str)
                    document.querySelector(".pictures").innerHTML = str
                }
            )

        }, false)


        // ------------------------------------------------------------------------------------------------------


        document.querySelector(".listBtn").addEventListener("click", (e) => {
            self.location = `/notice/list${listDTO.link}`
        }, false)

        document.querySelector(".modBtn").addEventListener("click", (e) => {
            self.location = `/notice/modify/${nt_id}${listDTO.link}`
        }, false)


        let initState = {

            nt_id: ${dto.nt_id},
        }

    </script>
</div>
<!-- /.container-fluid -->
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
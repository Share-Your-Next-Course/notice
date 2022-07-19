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
                    <a href="/question/list">
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
                    <a href="/course/list" class="active">
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
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/users-profile.html">
                <i class="bi bi-person"></i>
                <span>관리자 정보</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>비상연락망</span>
            </a>
        </li><!-- End Contact Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>관리자 등록</span>
            </a>
        </li><!-- End Register Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/logout">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>로그아웃</span>
            </a>
        </li><!-- End Login Page Nav -->
    </ul>

</aside>
<!-- End Sidebar-->
<!-- 사이드바 종료-->

<%-- 공지사항 게시물 시작 --%>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Q&A</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://125.128.120.90:8080/index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="/notice/list">게시판 관리</a></li>
                <li class="breadcrumb-item active">신고내역</li>
            </ol>
        </nav>
    </div>


    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">신고내역 수정/삭제</h1>




            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">수정/삭제</h5>

                                <form class="modForm" action="/report/modify/${dto.q_id}" method="post">
                                <div>
                                    <div class="mb-3">
                                        <label class="form-label">게시글번호</label>
                                        <input type="text" name="qr_id" class="form-control"
                                               aria-describedby="emailHelp" value="<c:out value="${dto.q_id}"/>"
                                               readonly>
                                        <div class="form-text">게시글번호는 수정이 불가합니다</div>
                                    </div>

                                    <div class="mb-3">
                                        <%--                                    <label  class="form-label">제목</label>--%>
                                        <input type="text" name="title1" class="form-control"
                                               aria-describedby="emailHelp" value="<c:out value="${dto.title}"/>">
                                        <div class="form-text">게시글제목</div>
                                    </div>

                                    <div class="mb-3">
                                        <%--<label  class="form-label">제목</label>--%>
                                        <textarea name="content1" class="form-control" aria-label="With textarea"><c:out
                                                value="${dto.content}"/></textarea>
                                        <div class="form-text">게시글 내용</div>
                                    </div>

                                    <div class="input-group mb-3 uploadInputDiv">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary uploadBtn" type="button">Upload
                                            </button>
                                        </div>
                                        <input type="file" name="upload" multiple class="form-control uploadFile"
                                               aria-describedby="emailHelp">
                                    </div>

                                </div>
                                    <input type="hidden" name="page" value="${listDTO.page}">
                                    <input type="hidden" name="size" value="${listDTO.size}">
                                    <input type="hidden" name="type" value="${listDTO.type}">
                                    <input type="hidden" name="keyword" value="${listDTO.keyword}">
                                </form>
                                <div style="float: right">
                                    <button class="listBtn btn btn-secondary">리스트</button>
                                    <button class="modPostBtn btn btn-secondary">수정하기</button>
                                    <button class="delPostBtn btn btn-secondary">삭제하기</button>
                                </div>
                            </div>
                            <div class="uploadResult">

                            </div>
                        </div>

                    </div>
                </div>
            </section>
        <style>
            .uploadResult {
                /*display:flex;*/
            }

            .uploadResult > div {
                float: left;
                margin: 1em;
                border: 1px solid darkviolet;
            }
        </style>



        <form class="actionForm" action="/report/remove/${q_id}" method="post">
        </form>


        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

        <script>

            const uploadResult = document.querySelector(".uploadResult")

            function loadImages() {
                axios.get("/report/files/${q_id}").then(
                    res => {
                        const resultArr = res.data
                        //첨부파일 결과를 문자열로 만들어서 div 태그로 보내주기
                        uploadResult.innerHTML += resultArr.map(({
                                                                     uuid,
                                                                     thumbnail,
                                                                     link,
                                                                     fileName,
                                                                     savePath,
                                                                     img }) => `
                <div data-uuid='\${uuid}' data-img='\${img}' data-filename='\${fileName}' data-savepath='\${savePath}'>
               <img src ='/view?fileName=\${thumbnail}'>
               <button data-link='\${link}' class="delBtn">X</button>
               \${fileName}</div>`).join(" ")

                    }
                )
            }

            loadImages()

            //삭제 이벤트
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
                    formObj.append("files", files[i]);
                }

                //resultArr == uploadResultDTO
                uploadToServer(formObj).then(resultArr => {
                    //첨부파일 결과를 문자열로 만들어서 div 태그로 보내주기
                    uploadResult.innerHTML += resultArr.map(({uuid, thumbnail, link, fileName, savePath, img}) => `
                <div data-uuid='\${uuid}' data-img='\${img}' data-filename='\${fileName}' data-savepath='\${savePath}'>
               <img src ='/view?fileName=\${thumbnail}'>
               <button data-link='\${link}' class="delBtn">X</button>
               \${fileName}</div>`).join(" ")

                })

            }, false)


            //삭제 통신
            async function deleteToServer(fileName) {
                const options = {headers: {"Content-Type": "application/x-www-form-urlencoded"}}
                const res = await axios.post("/delete", "fileName=" + fileName, options)

                console.log(res.data)
                //async의 리턴은 항상 promise
                return res.data
            }

            //비동기 통신 formObj를 넣어주면 업로드를 해준다
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
                //async의 리턴은 항상 promise
                return response.data
            }





            const q_id =${dto.q_id}
            const actionForm = document.querySelector(".actionForm")

            document.querySelector(".listBtn").addEventListener("click", (e) => {

                self.location = `/report/list${listDTO.link}`
            }, false)


            document.querySelector(".delPostBtn").addEventListener("click", (e) => {

                actionForm.setAttribute("action", `/report/remove/${q_id}`)
                actionForm.submit()
            }, false)

            document.querySelector(".modPostBtn").addEventListener("click", (e) => {
                e.preventDefault()
                e.stopPropagation()

                const divArr = document.querySelectorAll(".uploadResult > div")

                const title = document.querySelector("input[name='title1']").value
                const content = document.querySelector("textarea[name='content1']").value

                let str = ""; //hidden 태그 를 만들어주기위한 빈 문자열
                for (let i = 0; i < divArr.length; i++) {
                    const fileObj = divArr[i]

                    if (i === 0) {
                        const mainImageLink = fileObj.querySelector("img").getAttribute("src")
                        str += `<input type='hidden' name ='mainImage' value='\${mainImageLink}'>`
                    }

                    const uuid = fileObj.getAttribute("data-uuid")
                    const img = fileObj.getAttribute("data-img")
                    const savePath = fileObj.getAttribute("data-savePath")
                    const fileName = fileObj.getAttribute("data-fileName")


                    str += `<input type='hidden' name ='uploads[\${i}].uuid' value='\${uuid}'>`
                    str += `<input type='hidden' name ='uploads[\${i}].img' value='\${img}'>`
                    str += `<input type='hidden' name ='uploads[\${i}].savePath' value='\${savePath}'>`
                    str += `<input type='hidden' name ='uploads[\${i}].fileName' value='\${fileName}'>`
                }//for end

                str+=`<input type='hidden' name='title' value='\${title}'>`
                str+=`<input type='hidden' name='content' value='\${content}'>`

                const actionForm = document.querySelector(".modForm")
                actionForm.innerHTML += str


                actionForm.submit()
            }, false)


        </script>

    </div>



        <!-- /.container-fluid -->
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
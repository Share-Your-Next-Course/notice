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
<div id="main" class="main">

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

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">신고 등록</h1>

        <form class="actionForm" action="/report/register" method="post">

            <div class="mb-3">
                <label class="form-label">Username</label>
                <input type="text" name="adm_id1" class="form-control" aria-describedby="emailHelp"
                       value="<c:out value= "1"/>">
                <div class="form-text">아이디를 입력해주세요</div>
            </div>

            <div class="mb-3">
                <label class="form-label">Title</label>
                <input type="text" name="title1" class="form-control" aria-describedby="emailHelp"
                       value="<c:out value="제목입력"/>">
                <div class="form-text">제목을 입력해주세요</div>
            </div>

            <div class="mb-3">
                <label class="form-label">Content</label>
                <textarea name="content1" class="form-control" aria-label="With textarea"><c:out
                        value="내용입력"/></textarea>
                <div class="form-text">내용을 입력해주세요</div>
            </div>

        </form>

        <div>
            <label class="form-label">파일업로드</label>
            <div class="input-group mb-3 uploadInputDiv">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary uploadBtn" type="button">Upload</button>
                </div>
                <input type="file" name="upload" multiple class="form-control uploadFile" aria-describedby="emailHelp">
            </div>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-lg-12 form-control">
                    <div class="card">
                        <div class="card-body">
                            <style>
                                .uploadResult > div {
                                    float: left;
                                    /*margin: 3em;*/
                                    border: 1px solid darkviolet;
                                }
                            </style>
                            <div class="uploadResult">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <button class="regBtn btn btn-secondary">등록하기</button>
        <button class="listBtn btn btn-secondary">목록으로 가기</button>


    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script>
        const actionForm = document.querySelector(".actionForm")
        const uploadResult = document.querySelector(".uploadResult")
        const cloneInput = document.querySelector(".uploadFile").cloneNode()

        document.querySelector(".regBtn").addEventListener("click", (e) => {
            const adm_id = document.querySelector('input[name="adm_id1"]').value
            const title = document.querySelector('input[name="title1"]').value
            const content = document.querySelector('textarea[name="content1"]').value
            const divArr = document.querySelectorAll(".uploadResult > div")
            let str = ""
            for (let i = 0; i < divArr.length; i++) {
                const fileObj = divArr[i]
                if (i === 0) {
                    const mainImageLink = fileObj.querySelector("img").getAttribute("src")
                    str += `<input type="hidden" name="mainImage" value="\${mainImageLink}">`
                }
                const uuid = fileObj.getAttribute("data-uuid")
                const img = fileObj.getAttribute("data-img")
                const savePath = fileObj.getAttribute("data-savePath")
                const fileName = fileObj.getAttribute("data-fileName")
                str += `<input type="hidden" name="uploads[\${i}].uuid" value="\${uuid}">`
                str += `<input type="hidden" name="uploads[\${i}].img" value="\${img}">`
                str += `<input type="hidden" name="uploads[\${i}].savePath" value="\${savePath}">`
                str += `<input type="hidden" name="uploads[\${i}].fileName" value="\${fileName}">`
            }//endfor
            str += `<input type="hidden" name="adm_id" value="\${adm_id}">`
            str += `<input type="hidden" name="title" value="\${title}">`
            str += `<textarea type="hidden" name="content">\${content}</textarea>`
            document.querySelector(".actionForm").innerHTML += str
            actionForm.submit()
        }, false)
        document.querySelector(".listBtn").addEventListener("click", (e) => {
            self.location = "/report/list"
        }, false)
        uploadResult.addEventListener("click", (e) => {
            if (e.target.getAttribute("class").indexOf("delBtn") < 0) {
                return
            }
            const link = e.target.getAttribute("data-link")
            deleteToServer(link).then(result => {
                document.querySelector(".uploadCard").remove()
            })
        }, false)
        document.querySelector(".uploadBtn").addEventListener("click", (e) => {
            const formObj = new FormData();
            const fileInput = document.querySelector(".uploadFile")
            console.log(fileInput.files)
            const files = fileInput.files
            for (let i = 0; i < files.length; i++) {
                console.log(files[i])
                formObj.append("files", files[i]);
            }
            uploadToServer(formObj).then(resultArr => {
                uploadResult.innerHTML += resultArr.map(({uuid, thumbnail, link, fileName, savePath, img}) =>
                    `<div class="card uploadCard" style="width: 15em;" data-nt_uuid='\${uuid}' data-fileName='\${fileName}' data-savePath='\${savePath}' data-img='\${img}'>
            <img src='/view?fileName=\${thumbnail}' class="card-img-top" alt="...">
            <div class="card-body">
            <p class="card-text" style="height: 4rem">\${fileName}</p>
            </div>
            <button data-link='\${link}' class="btn btn-outline-secondary delBtn" type="button">삭제하기</button>
            </div>`).join(" ")
                fileInput.remove()
                document.querySelector(".uploadInputDiv").appendChild(cloneInput)
            })
        }, false)

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

        async function deleteToServer(fileName) {
            const options = {headers: {"Content-Type": "application/x-www-form-urlencoded"}}
            const res = await axios.post("/delete", "fileName=" + fileName, options)
            console.log(res.data)
        }
    </script>
</div>

    <%@ include file="/WEB-INF/views/includes/footer.jsp" %>

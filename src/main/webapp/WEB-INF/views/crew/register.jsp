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
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-journal-text"></i><span>코스 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
                <%--                <li>--%>
                <%--                    <a href="/crew/courseStat">--%>
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
                    <a href="/member/list">
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                </li>
                <li>
                    <a href="/crew/list">
                        <i class="bi bi-circle"></i><span>크루 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/crew/register" class="active">
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
                <li class="breadcrumb-item">크루 관리</li>
                <li class="breadcrumb-item active">크루 등록</li>
            </ol>
        </nav>
    </div><!-- 페이지 타이틀 종료 -->


    <%--  크루 등록 시작 --%>
    <section class="section">
        <div class="row">
            <div class="col-lg-8">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">크루 등록</h5>

                        <!-- 크루 정보 기입란 시작 -->
                        <form class="actionForm" action="/crew/register" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">크루 이름</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name1" class="form-control name" placeholder="20자 내외">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">크루 소개</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control content" name="content1"
                                              style="resize: none; height: 100px"></textarea>
                                </div>
                            </div>


                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">사진 업로드</label>
                                <div class="col-sm-10">
                                    <div class="input-group mb-3 uploadInputDiv">
                                        <button class="btn btn-outline-secondary uploadBtn" type="button">Button</button>
                                        <input type="file" class="form-control uploadFile" name="upload" multiple>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">활동지역</label>
                                <div class="col-sm-10">
                                    <select class="form-select addr" name="addr1" aria-label="Default select example">
                                        <option value="서울">서울</option>
                                        <option value="경기">경기</option>
                                        <option value="강원">강원</option>
                                        <option value="충남">충남</option>
                                        <option value="충북">충북</option>
                                        <option value="전남">전남</option>
                                        <option value="전북">전북</option>
                                        <option value="경남">경남</option>
                                        <option value="경북">경북</option>
                                        <option value="제주">제주</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                            <div class="row mb-3">
                                <div class="col-sm-5">

                                    <button type="button" class="btn btn-secondary small" data-bs-toggle="modal"
                                            data-bs-target="#scrollingModal">크루 등록
                                    </button>
                                    <button type="button" class="btn btn-secondary small listBtn" >목록으로</button>
                                </div>
                            </div>


                                 <%--크루 등록 모달 시작--%>
                            <div class="modal fade" id="scrollingModal" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">크루 등록</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">

                                            <!-- Default Accordion -->
                                            <div class="accordion" id="accordionExample">
                                                <div style="text-align: center">
                                                    <span><strong>크루 등록을 계속 진행하시겠습니다?</strong></span>
                                                </div>
                                            </div><!-- End Default Accordion Example -->

                                        </div>
                                        <%--   모달 닫기 / 확인 버튼 시작 --%>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-secondary regBtn">확인</button>
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기
                                            </button>
                                        </div>
                                        <%--   모달 닫기 / 확인 버튼 끝 --%>
                                    </div>
                                </div>
                            </div>
                            <!-- 크루등록 모달창 끝-->
                            <div class="uploadResult">
                            </div>


                    </div>
                </div>

            </div>
        </div>
    </section>

</main>

<!-- End of Main Content -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    const uploadResult = document.querySelector(".uploadResult")

    const cloneInput = document.querySelector(".uploadFile").cloneNode()

    uploadResult.addEventListener("click",(e)=>{

        if(e.target.getAttribute("class").indexOf("delBtn") < 0){
            return
        }
        const btn = e.target
        const link = btn.getAttribute("data-link")

        deleteToServer(link).then(result =>{
            btn.closest("div").remove()
        })

    },false)

    document.querySelector(".uploadBtn").addEventListener("click",(e)=>{

        const formObj = new FormData();

        const fileInput = document.querySelector(".uploadFile")

        console.log(fileInput.files)

        const files = fileInput.files

        for (let i = 0; i < files.length; i++) {
            console.log(files[i])
            formObj.append("files", files[i]);
        }

        uploadToServer(formObj).then(resultArr =>{
            uploadResult.innerHTML += resultArr.map( ({uuid,thumbnail,link,fileName,savePath, img}) => `
                <div data-uuid='\${uuid}' data-img='\${img}'  data-filename='\${fileName}'  data-savepath='\${savePath}'>
                <img src='/view?fileName=\${thumbnail}'>
                <button data-link='\${link}' class="delBtn">x</button>
                \${fileName}</div>`).join(" ")

            fileInput.remove()
            document.querySelector(".uploadInputDiv").appendChild(cloneInput)

        })

    }, false)


    async function deleteToServer(fileName){
        const options = {headers: { "Content-Type": "application/x-www-form-urlencoded"}}
        const res = await axios.post("/delete", "fileName="+fileName)

        console.log(res.data)

        return res.data
    }

    async function uploadToServer (formObj) {

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



    document.querySelector(".listBtn").addEventListener("click", (e)=>{
        self.location = "/crew/list"
    },false)



    document.querySelector(".regBtn").addEventListener("click", (e)=>{

        const name = document.querySelector(".name").value
        const content = document.querySelector(".content").value
        const addr = document.querySelector(".addr").value
        const m_id = 42

        e.preventDefault()
        e.stopPropagation()

        const divArr = document.querySelectorAll(".uploadResult > div")

        let str = "";

        for(let i= 0;i < divArr.length; i++){
            const fileObj = divArr[i]

            if(i === 0){
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

        const actionForm = document.querySelector(".actionForm")

        str += `<input type='hidden' name='name' value='\${name}'>`
        str += `<input type='hidden' name='content' value='\${content}'>`
        str += `<input type='hidden' name='addr' value='\${addr}'>`
        str += `<input type='hidden' name='m_id' value='\${m_id}'>`

        actionForm.innerHTML += str
        actionForm.submit()



    },false)

</script>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>


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
                    <a href="/member/list" >
                        <i class="bi bi-circle"></i><span>회원 관리</span>
                    </a>
                    <ul>
                        <li>
                            <a href="/member/register" class="active">
                                <i class="bi bi-circle"></i><span>회원 등록</span>
                            </a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="/crew/list"">
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

    <%-- 페이지 타이틀 시작   --%>
    <div class="pagetitle">
        <h1>회원 관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item">사용자 관리</li>
                <li class="breadcrumb-item">회원 관리</li>
                <li class="breadcrumb-item active">회원 등록</li>
            </ol>
        </nav>
    </div><!-- 페이지 타이틀 종료 -->


    <%--  회원 등록 시작 --%>
    <section class="section">
        <div class="row">
            <div class="col-lg-8">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">회원 등록</h5>

                        <%--                        <form class="actionForm" action="/board/register" method="post">--%>
                        <%--                            <input type="text" name="username" value="AAA">--%>
                        <%--                            <input type="text" name="name" value="BBB">--%>
                        <%--                            <input type="text" name="addr" value="user00">--%>
                        <%--                            <button class="formBtn">CLICK</button>--%>
                        <%--                        </form>--%>

                        <!-- 정보 기입란 시작 -->
                        <form class="actionForm" action="/board/register" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" name="username" class="form-control" placeholder="20자 내외">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">이름</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">비밀번호</label>
                                <div class="col-sm-10">
                                    <input type="password" name="pw" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" name="email" class="form-control"
                                           placeholder=" ex) abc@naver.com">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">생년월일</label>
                                <div class="col-sm-10">
                                    <input type="date" name="birth" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">전화번호</label>
                                <div class="col-sm-10">
                                    <input type="text" name="phone" class="form-control" placeholder="입력 시 하이픈(-) 제외">
                                </div>
                            </div>
                            <%--                            <div class="row mb-3">--%>
                            <%--                                <label class="col-sm-2 col-form-label">성별</label>--%>
                            <%--                                <div class="col-sm-10">--%>
                            <%--                                    <input type="text" name="gender" class="form-control" placeholder="M or F">--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <fieldset class="row mb-3">
                                <legend class="col-form-label col-sm-2 pt-0">성별</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" id="gridRadios1"
                                               value="M" checked>
                                        <label class="form-check-label">
                                            남자
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" id="gridRadios2"
                                               value="F">
                                        <label class="form-check-label">
                                            여자
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">자기소개</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="content"
                                              style="resize: none; height: 100px"></textarea>
                                </div>

                                <style>
                                    .uploadResult {
                                        display: flex;

                                    }

                                    .uploadResult > div {
                                        margin: 3em;
                                        border: 1px solid red;
                                    }
                                </style>

                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">사진 업로드</label>
                                <div class="col-sm-10 uploadInputDiv">
                                    <input class="form-control uploadFile" type="file" name="upload" id="formFile">
                                    <button class="uploadBtn">UPLOAD</button>
                                </div>
                                <div class="uploadResult"></div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">활동지역</label>
                                <div class="col-sm-10">
                                    <select class="form-select" name="addr" aria-label="Default select example">
                                        <option value="경기">경기</option>
                                        <option value="서울">서울</option>
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
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <button type="button" class="btn btn-primary " data-bs-toggle="modal"
                                            data-bs-target="#scrollingModal">회원가입
                                    </button>
                                    <button type="button" class="btn btn-primary"
                                            onclick="location.href='/board/member'">목록으로
                                    </button>
                                </div>
                            </div>
                            <div class="modal fade" id="scrollingModal" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">회원 가입</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <h5 class="card-title" style="text-align: center">회원가입</h5>

                                            <p class="ls2 lh6 bs5 ts4"><em class="emphasis">
                                                < SYNC>('www.sync.com'이하 'SYNC your course')
                                            </em>은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수
                                                있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
                                            <p class="ls2">○ 이 개인정보처리방침은 <em class="emphasis">2022</em>년 <em
                                                    class="emphasis">1</em>월 <em
                                                    class="emphasis">1</em>부터 적용됩니다.</p></br>

                                            <!-- Default Accordion -->
                                            <div class="accordion" id="accordionExample">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingOne">
                                                        <button class="accordion-button" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                            <p class='lh6 bs4'><strong>제1조(개인정보의 처리 목적)</strong></p>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse "
                                                         aria-labelledby="headingOne"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">

                                                            <p class='lh6 bs4'><strong>제1조(개인정보의 처리 목적)<br/><br/><em
                                                                    class="emphasis">
                                                                < SYNC>('www.sync.com'이하 'SYNC your course')
                                                            </em>은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의
                                                                용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라
                                                                별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</strong></p>

                                                            <ul class="list_indent2 mgt10">
                                                                <p class="ls2">1. 홈페이지 회원가입 및 관리</p>
                                                                <p class="ls2">회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격
                                                                    유지·관리 목적으로 개인정보를 처리합니다.</p></br>
                                                            </ul>
                                                            </br></br>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingTwo">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                                aria-expanded="false" aria-controls="collapseTwo">
                                                            <p class='lh6 bs4'><strong>제2조(개인정보의 처리 및 보유
                                                                기간)</strong></p>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse"
                                                         aria-labelledby="headingTwo"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <p class='lh6 bs4'><strong>제2조(개인정보의 처리 및 보유
                                                                기간)</strong></br></br>① <em class="emphasis">
                                                                < SYNC>
                                                            </em>은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은
                                                                개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.</br></br>② 각각의 개인정보 처리
                                                                및 보유 기간은 다음과 같습니다.</p>

                                                            <ul class='list_indent2 mgt10'>
                                                                <li class='tt'>1.
                                                                    <홈페이지 회원가입 및 관리>
                                                                </li>
                                                                <li class='tt'>
                                                                    <홈페이지 회원가입 및 관리>와 관련한 개인정보는 수집.이용에 관한 동의일로부터<1년>까지 위
                                                                        이용목적을 위하여 보유.이용됩니다.
                                                                </li>
                                                                <li>보유근거 : 개인프로젝트</li>
                                                                <li>관련법령 : 1)신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년</br>2) 소비자의
                                                                    불만 또는 분쟁처리에 관한 기록 : 3년</br></li>
                                                                <li>예외사유 :</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingThree">
                                                        <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseThree" aria-expanded="false"
                                                                aria-controls="collapseThree">
                                                            <p class='lh6 bs4'><strong>제4조(개인정보의 파기절차 및 파기방법)<em
                                                                    class="emphasis"></strong></p>
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse"
                                                         aria-labelledby="headingThree"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body">
                                                            <p class='lh6 bs4'><strong>제4조(개인정보의 파기절차 및 파기방법)<em
                                                                    class="emphasis"></strong></p>

                                                            <p class='ls2'></br>① < SYNC> 은(는) 개인정보 보유기간의 경과, 처리목적 달성 등
                                                                개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</br></br>②
                                                                정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에
                                                                따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나
                                                                보관장소를 달리하여 보존합니다.</br>1. 법령 근거 :</br>2. 보존하는 개인정보 항목 :
                                                                계좌정보, 거래날짜</br></br>③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.</br>1.
                                                                파기절차</br>
                                                                < SYNC> 은(는) 파기 사유가 발생한 개인정보를 선정하고, < SYNC> 의 개인정보
                                                                보호책임자의 승인을 받아 개인정보를 파기합니다.</br></p>
                                                            <p class='sub_p mgt10'>2. 파기방법</p>
                                                            <p class='sub_p'>전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을
                                                                사용합니다</p><br/><br/>
                                                        </div>
                                                    </div>
                                                </div>


                                                <input type="checkbox" name="tos" value="">
                                                <span><strong>전체동의</strong></span>
                                                <hr>
                                                <div style="text-align: center">
                                                    <span><strong>회원가입을 계속 진행하시겠습니다?</strong></span>
                                                </div>
                                            </div><!-- End Default Accordion Example -->

                                        </div>
                                        <%--   모달 닫기 / 확인 버튼 시작 --%>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기
                                            </button>
                                            <button type="submit" class="btn btn-primary formBtn">확인</button>
                                        </div>
                                        <%--   모달 닫기 / 확인 버튼 끝 --%>
                                    </div>
                                </div>
                            </div>
                            <!-- 회원등록 모달창 끝-->
                            <div class="inputHiddens">

                            </div>
                        </form>
                        <!-- 정보 기입란 시작 -->

                    </div>
                </div>

            </div>
        </div>
    </section>
    <%--  회원 등록 시작 --%>

</main>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>

    document.querySelector(".formBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        const actionForm = document.querySelector(".actionForm")

        actionForm.submit()


    }, false)


    const uploadResult = document.querySelector(".uploadResult")

    const cloneInput = document.querySelector(".uploadFile").cloneNode()

    document.querySelector(".formBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        const divArr = document.querySelectorAll(".uploadResult > div")

        let str = "";
        for (let i = 0; i < divArr.length; i++) {
            const fileObj = divArr[i]

            if (i === 0) {
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

        document.querySelector(".inputHiddens").innerHTML = str;

        const actionForm = document.querySelector(".actionForm")

        actionForm.submit()


    }, false)


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

    document.querySelector(".uploadBtn").addEventListener("click", (e) => {

        const formObj = new FormData();

        const fileInput = document.querySelector(".uploadFile")

        console.log(fileInput.files)

        const files = fileInput.files

        for (let i = 0; i < files.length; i++) {
            console.log(files[i])
            formObj.append("files", files[i])
        }


        uploadToServer(formObj).then(resultArr => {

            uploadResult.innerHTML += resultArr.map(({uuid, thumbnail, link, fileName, savePath, img}) => `
                <div data-uuid='\${uuid}' data-img='\${img}'  data-filename='\${fileName}'  data-savepath='\${savePath}'>
                <img src='/view?fileName=\${thumbnail}'>
                <button data-link='\${link}' class="delBtn">x</button>
                \${fileName}</div>`).join(" ")

            fileInput.remove()
            document.querySelector(".uploadInputDiv").appendChild(cloneInput)

        })

    }, false)

    async function deleteToServer(fileName) {
        const options = {headers: {"Content-Type": "application/x-www-form-urlencoded"}}

        const res = await axios.post("/delete", "fileName=" + fileName, options)

        console.log(res.data)

        return res.data
    }

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
</script>
</body>


<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>

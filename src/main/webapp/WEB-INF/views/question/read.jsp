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
            <ul id="components-nav" class="nav-content collapse show " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/notice/list">
                        <i class="bi bi-circle"></i><span>공지사항</span>
                    </a>
                </li>
                <li>
                    <a href="/question/list" class="active">
                        <i class="bi bi-circle"></i><span>묻고 답하기</span>
                    </a>
                </li>
                <li>
                    <a href="/report/list" >
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
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Q&A</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="http://106.241.252.54:8086/index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="/notice/list">게시판 관리</a></li>
                <li class="breadcrumb-item active">공지사항</li>
            </ol>
        </nav>


    <%-- 공지사항 게시물 시작 --%>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Q&A : ${dto.title}</h1>

        <div class="card">
            <div class="card-header">
                공지사항
            </div>


            <div class="card-body">
                <blockquote class="blockquote mb-0">


                    <div class="input-group mb-3">
                        <span class="input-group-text"><c:out value="${dto.q_id}"></c:out></span>
                        <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)"
                               readonly value="<c:out value="${dto.title}"></c:out>">
                        <span class="input-group-text"><c:out value="${dto.adm_id}"></c:out></span>
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

    </div>


        <div >
            <div class="input-group flex-nowrap">
                <span class="input-group-text">댓글</span>
                <input type="text" name="replyText" class="form-control" placeholder="댓글을 입력해주세요">
            </div>
            <div class="input-group flex-nowrap">
                <span class="input-group-text">관리자</span>
                <input type="text" name="adm_id" class="form-control" placeholder="이름을 입력해주세요">
                <button class="btn btn-secondary addReplyBtn">댓글추가</button>
            </div>
        </div>



        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label  class="col-form-label">작성자:</label>
                                <input type="text" class="form-control" name ="modReplyer" readonly>
                            </div>
                            <div class="mb-3">
                                <label  class="col-form-label">내용:</label>
                                <textarea class="form-control" name ="modReplyText" ></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary modReplyBtn" data-bs-dismiss="modal">댓글 추가</button>
                        <button type="button" class="btn btn-primary removeReplyBtn" data-bs-dismiss="modal">댓글 삭제</button>
                    </div>
                </div>
            </div>
        </div>



    <ul class="replyUL">

    </ul>

    <ul class="pageUL">

    </ul>


    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <%--script 태그를 2개쓰는건 위험하지만 이해하기 편하게 하기위해 일단 사용함--%>
    <%--mainImage 먼저처리 --%>
    <script>





        //더보기 버튼은 되돌릴수없다
        document.querySelector(".moreBtn").addEventListener("click",(e) =>{
            axios.get("/question/files/${dto.q_id}").then(
                res => {
                    const arr = res.data
                    let str = ""
                    for(let i = 0; i < arr.length; i++){
                        str += `<img src ='/view?fileName=\${arr[i].link}'>`
                    }
                    document.querySelector(".pictures").innerHTML = str
                }
            )
        },false)

        document.querySelector(".listBtn").addEventListener("click",(e)=>{

            self.location = `/question/list${listDTO.link}`
        },false)

        document.querySelector(".modBtn").addEventListener("click",(e)=>{
            console.log(e.target)
            self.location = `/question/modify/${q_id}/${listDTO.link}`
        },false)



        //===================================================
        //초기 상태 값
        let initState = {
            q_id:${dto.q_id},
            replyArr:[],
            replyCount:0,
            size:10,
            pageNum:1

        }
        const replyUL = document.querySelector(".replyUL")
        const pageUL = document.querySelector(".pageUL")

        pageUL.addEventListener("click", (e) =>{
            if(e.target.tagName != 'LI'){
                return
            }

            const dataNum = parseInt(e.target.getAttribute("data-num"))
            replyService.setState({pageNum:dataNum})

        },false)

        //댓글추가 이벤트
        document.querySelector(".addReplyBtn").addEventListener("click",(e)=>{

            const replyObj={
                q_id:${dto.q_id},
                replyText: document.querySelector("input[name='replyText']").value,
                adm_id: document.querySelector("input[name='adm_id']").value
            }

            replyService.addServerReply(replyObj)

        },false)

        const modReplyTextInput = document.querySelector("textarea[name='modReplyText']")
        const modReplyerInput = document.querySelector("input[name='modReplyer']")
        const removeReplyBtn = document.querySelector(".removeReplyBtn")
        const modReplyBtn = document.querySelector(".modReplyBtn")

        let targetdiv;

        replyUL.addEventListener("click", (e) => {


            if(!e.target.getAttribute("data-qr_id")){
                return;
            }
            targetdiv = e.target.closest("div")
            const qr_id = parseInt(e.target.getAttribute("data-qr_id"))

            const replyObj = replyService.findReply(qr_id)
            modReplyTextInput.value = replyObj.replyText
            modReplyerInput.value = replyObj.adm_id
            removeReplyBtn.setAttribute("data-qr_id", qr_id)
            modReplyBtn.setAttribute("data-qr_id" ,qr_id)

        },false)

        //수정 이벤트
        modReplyBtn.addEventListener("click",(e) =>{

            const qr_id = parseInt(e.target.getAttribute("data-qr_id"))

            const replyObj={
                q_id:${dto.q_id},
                qr_id:qr_id,
                replyText: modReplyTextInput.value

            }

            replyService.modifyServer(replyObj)

        },false)

        //삭제 이벤트
        removeReplyBtn.addEventListener("click", (e) =>{

            const qr_id = (e.target.getAttribute("data-qr_id"))

            replyService.removeServer(qr_id).then(result => {
                targetdiv.innerHTML = "DELETED"
            })

        },false)





        //state 의 모든데이터를 화면에 뿌려주는 역할
        function render(obj){

            console.log("render......................")



            //List 를 출력하는 곳
            function printList(){

                //이걸가지고 <li> 태그를 만들때 사용한다
                const arr = obj.replyArr

                replyUL.innerHTML = arr.map(reply =>`<div class="card">
                                                    <div class="card-header">\${reply.qr_id}. \${reply.adm_id}  <span style="float: right">(\${reply.regDate})</span>  </div>
                                                    <div class="card-body">
                                                    <blockquote class="blockquote mb-0">
                                                   <p>  \${reply.replyText} <button data-qr_id=\${reply.qr_id} class="modBtn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="float: right" >수정</button></p>
                                                    </blockquote>
                                                    </div>
                                                    </div>`).join(" ")

            }
            //Page 를 출력하는 곳
            function printPage(){

                const currentPage =obj.pageNum
                const size = obj.size

                let endPage = Math.ceil(currentPage/10) * 10
                const startPage = endPage -9
                const prev =startPage !=1 //이전 startPage 가 1이 아니면
                endPage = obj.replyCount < endPage * obj.size? Math.ceil(obj.replyCount/obj.size): endPage
                const next = obj.replyCount > endPage *obj.size //다음

                console.log("startPage",startPage , "endPage",endPage , "currentPage",currentPage)

                let str =''

                if(prev){
                    str += `<li data-num=\${startPage-1}>이전</li>`
                }

                for(let i = startPage; i <= endPage; i++){
                    str += `<li data-num=\${i}>\${i}</li>`
                }

                if(next){
                    str+= `<li data-num=\${endPage+1}>다음</li>`
                }

                pageUL.innerHTML = str

            }

            printList()
            printPage()
        }



        //axios 통신
        //===================================================


        //즉시 실행 함수
        const replyService = (function (initState , callbackFn){

            let state = initState
            const callback = callbackFn

            const setState = (newState) => {
                //전개 연산자
                state = {...state , ...newState}
                console.log(state)

                //newState 안에 replyCount 속성이 있다면 혹은 pageNum이 있다면 서버의 데이터를 가져와야함
                if(newState.replyCount || newState.pageNum){
                    getServerList(newState)
                }

                callback(state)
            }

            async function getServerList(newState){

                let pageNum

                if(newState.pageNum){
                    pageNum = newState.pageNum
                }else {
                    pageNum = Math.ceil(state.replyCount/state.size)
                }


                const paramObj = {page:pageNum  , size:state.size}
                const res = await axios.get(`/replies/list/\${state.q_id}`,{params:paramObj} )

                console.log(res.data);
                state.pageNum = pageNum
                setState({replyArr: res.data})
            }

            async function addServerReply(replyObj){

                const res = await axios.post(`/replies/`,replyObj)

                const data = res.data

                console.log("addReplyResult",data)

                setState({replyCount:data.result})

            }

            //reply 배열에 qr_id 찾는 로직 <find 사용>
            function findReply(qr_id){
                return state.replyArr.find(reply => reply.qr_id === qr_id)
            }

            //삭제 통신
            async function removeServer(qr_id){

                const res = await axios.delete(`/replies/\${qr_id}`)
                //success 가 나올것
                const result = res.data.result

                return result
            }

            //수정 통신
            async function modifyServer(replyObj){
                const mes = await axios.put('/replies/modify/',replyObj)

                const data = mes.data

                console.log("modifyResult",data)

                setState({replyCount:data.result})
            }



            return{setState , addServerReply , findReply , removeServer , modifyServer}
        })(initState , render)


        replyService.setState({replyCount:${dto.replyCount}})



    </script>

        <%--            <!-- Page Heading -->--%>
    </div>
</main>
                        <!-- /.container-fluid -->
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
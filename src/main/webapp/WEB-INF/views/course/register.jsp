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
            <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list">
                        <i class="bi bi-circle"></i><span>코스 목록</span>
                    </a>
                </li>
                <ul>
                <li>
                    <a href="/course/register" class="active">
                        <i class="bi bi-circle"></i><span>코스 등록</span>
                    </a>
                </li>
                </ul>
            </ul>
        </li><!--  코스 관리 종료  -->

        <li class="nav-item"><!--  사용자 관리 시작  -->
            <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="ri-contacts-fill"></i></i><span>사용자 관리</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/member/list">
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
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/users-profile.html">
                <i class="bi bi-person"></i>
                <span>관리자 정보</span>
            </a>
        </li><!-- 관리자 정보 페이지 -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- F.A.Q 페이지-->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>비상연락망</span>
            </a>
        </li><!-- 비상연락망 페이지 -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="http://125.128.120.90:8080/pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>관리자 등록</span>
            </a>
        </li><!-- 관리자 등록 페이지  -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/logout">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>로그아웃</span>
            </a>
        </li><!-- 로그아웃 페이지 -->
    </ul>
    <!--   메뉴 목록 종료    -->

</aside>
<!------ 사이드바 종료 ------>


<main id="main" class="main">

    <div class="pagetitle">
        <h1>코스 등록</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/home">Home</a></li>
                <li class="breadcrumb-item"><a href="#">코스 관리</a></li>
                <li class="breadcrumb-item"><a href="/course/register">코스 등록</a></li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <style>
        #map {
            height: 50vh;
        }

        body {
            /* 웹사이트 드래그 방지 css  */
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }

        /* 구글 map api 로고 및 이용약관 제거 css  */
        a[href^="http://maps.google.com/maps"] {
            display: none !important
        }

        a[href^="https://maps.google.com/maps"] {
            display: none !important
        }

        .gmnoprint a,
        .gmnoprint span,
        .gm-style-cc {
            display: none;
        }

        .gmnoprint div {
            background: none !important;
        }
    </style>

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">코스 생성 <button type="button" class="btn btn-secondary small markerDel" style="float: right">다시 그리기</button></h5>

                        <div id="map"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="row">
            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">코스 등록</h5>

                        <!-- 코스 정보 기입란 시작 -->
                        <form class="actionForm" action="/course/register" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">코스 제목</label>
                                <div class="col-sm-10">
                                    <input type="text" name="title1" class="form-control title" placeholder="20자 내외">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">코스 소개</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control content" name="content1"
                                              style="resize: none; height: 100px"></textarea>
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
                            <div class="col-sm-7">
                                <button type="button" class="btn btn-secondary small" data-bs-toggle="modal"
                                        data-bs-target="#scrollingModal">코스 등록
                                </button>

                                <button type="button" class="btn btn-secondary small listBtn">목록으로</button>
                            </div>
                        </div>


                        <%--코스 등록 모달 시작--%>
                        <div class="modal fade" id="scrollingModal" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">코스 등록</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <div class="accordion" id="accordionExample">
                                            <div style="text-align: center">
                                                <span><strong>코스 등록을 계속 진행하시겠습니다?</strong></span>
                                            </div>
                                        </div><!-- End Default Accordion Example -->

                                    </div>
                                    <%--   모달 닫기 / 확인 버튼 시작 --%>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-secondary formBtn">확인</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기
                                        </button>
                                    </div>
                                    <%--   모달 닫기 / 확인 버튼 끝 --%>
                                </div>
                            </div>
                        </div>
                        <!-- 코스등록 모달창 끝-->
                        <div class="uploadResult">
                        </div>


                    </div>
                </div>

            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">코스 이미지</h5>
                        <div>
                            <img class="mapImg" width="600" src="https://maps.googleapis.com/maps/api/staticmap?
                        &zoom=17&scale=1&size=600x300&maptype=roadmap
                        &key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0
                        ">
                        </div>
                    </div>
                </div>

            </div>
        </div>



    </section>


</main>
<!-- End #main -->

<script>

    // center=
    // &zoom=15&scale=1&size=600x300&maptype=roadmap
    // &format=png&visual_refresh=true
    // &path=color:0xff0000ff|weight:5|37.571012313240985,126.98338124419965|37.571080342461954,126.98683592941083|37.5705531143742,126.9879302706889
    // &key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0

    let map;

    let mylat = {};

    let markers = [];
    //{[lat: ,lng: ],} 형식
    let latlngArray = [];

    //{[lat: ,lng: ],} 문자열
    let latlngArrayString = [];

    //[[위도, 경도]] 형식
    let arrayLatLng = [];

    let polyline = null;


    //actionForm str
    let str ='';

    const mapImg = document.querySelector(".mapImg")

    //geolocation 함수
    if (navigator.geolocation) { // GPS를 지원하면
        navigator.geolocation.getCurrentPosition(function (position) {

            mylat = { lat : position.coords.latitude, lng : position.coords.longitude}

            mapImg.src += "&center="+mylat.lat+","+mylat.lng+"&path=color:0x0000FF80|weight:3";

            initMap(mylat)

        }, function (error) {
            console.error(error);
        }, {
            // enableHighAccuracy: true, //배터리를 더 소모해서 더 정확한 위치를 찾음
            // maximumAge: 0, //한 번 찾은 위치 정보를 해당 초만큼 캐싱
            // timeout: Infinity //주어진 초 안에 찾지 못하면 에러 발생
        });
    } else {
        alert('GPS를 지원하지 않습니다');
    }


    //google map 함수
    function initMap(mylat) {
        map = new google.maps.Map(document.getElementById('map'), {
            center: mylat,
            zoom: 17,
            mapTypeId: "roadmap", //기본 지도 유형  = normal, default 2D map
            disableDefaultUI: true, //모든 기본 UI 버튼 비활성화
            gestureHandling: "greedy", //모든 터치 제스처 및 스크롤 이벤트는 지도를 이동하거나 확대/축소 : "greedy"
            keyboardShortCuts: true, //키보드 제어 비활성화
            clickableIcons: false, //정보창 비활성화
            mapId: '48cb216d9a8215f9' //map 스타일 적용을 위한 Key

        });

        //map click event
        map.addListener('click', function (e) {

            addMarker(e.latLng.toJSON());

            drawPolyline()

        });


    }

    //마커 추가 함수(lat,lng를 넘겨줘야한다)
    function addMarker(latLng) {
        let marker = new google.maps.Marker({
            map: map,
            position: latLng,
            title: 'marker',
            draggable: false,
            icon: {
                path: google.maps.SymbolPath.CIRCLE,
                strokeColor: "blue",
                scale: 6
            }
        });
        //마커 정보를 넣는다
        markers.push(marker)
        //위도, 경도를 넣는다
        latlngArray.push(latLng)

        console.log(latlngArray)

        latlngArrayString = JSON.stringify(latlngArray)
        arrayLatLng = latlngArray.map(function(obj){
            let rObj = {};
            rObj= [obj.lat,obj.lng];
            return rObj;
        });

        console.log(arrayLatLng)

        mapImg.src += "|"+latLng.lat+","+latLng.lng;
    }

    function drawPolyline() {

        // check if there is already polyline drawn on map
        // remove the polyline from map before we draw new one
        if (polyline !== null) { //기존에 그려진 폴리라인이 있으면
            polyline.setMap(null); //기존 폴리라인 제거
        }


        // draw new polyline at markers' position
        polyline = new google.maps.Polyline({
            map: map,
            path: latlngArray,
            strokeOpacity: 0.4,

        });
    }

    document.querySelector(".listBtn").addEventListener("click", (e)=>{
        self.location = "/course/list"
    },false)

    document.querySelector(".markerDel").addEventListener("click", (e) =>{
        console.log("hahahahah")
        DeleteMarkers();
    },false)

    function DeleteMarkers() {
        //Loop through all the markers and remove
        for (var i = 0; i < latlngArray.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
        latlngArray = [];
        latlngArrayString = [];
        arrayLatLng = [];
        polyline.setMap(null);
        mapImg.src = "https://maps.googleapis.com/maps/api/staticmap?" +
                    "&zoom=17&scale=1&size=600x300&maptype=roadmap" +
                    "&key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0" +
                    "&center="+mylat.lat+","+mylat.lng+"&path=color:0x0000FF80|weight:3";
    };



    document.querySelector(".formBtn").addEventListener("click", (e) => {
        e.preventDefault()
        e.stopPropagation()

        const title = document.querySelector(".title").value
        const content = document.querySelector(".content").value
        const addr = document.querySelector(".addr").value
        const m_id = <sec:authentication property="principal.adm_id"/>

        console.log(title)
        const actionForm = document.querySelector(".actionForm")
        str += `<input type="hidden" name="center" value="\${mapImg.src}">`

        console.log(latlngArrayString)

        str += `<input type="hidden" name="point" value='\${latlngArrayString}'>`


        str += `<input type='hidden' name='title' value='\${title}'>`
        str += `<input type='hidden' name='content' value='\${content}'>`
        str += `<input type='hidden' name='addr' value='\${addr}'>`
        str += `<input type='hidden' name='m_id' value='\${m_id}'>`
        actionForm.innerHTML += str
        actionForm.submit()


    }, false)

</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0&callback=initMap&v=weekly">
</script>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
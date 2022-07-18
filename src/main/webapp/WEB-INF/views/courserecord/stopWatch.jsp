<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>SYNC - Our course</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/resources/assets/img/favicon.png" rel="icon">
    <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="/resources/https://fonts.gstatic.com" rel="preconnect">
    <link
            href="resources/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/resources/assets/css/style.css" rel="stylesheet">
    <%--    <link href="./button.css" rel="stylesheet">--%>

    <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0&callback=initMap&v=weekly"
            defer></script>
</head>
<style>
    html,
    body {
        overflow: hidden;
        height: 100vh;
        width: 100vw;
        margin: 0;
        padding: 0;
        text-align: center;

        /* 웹사이트 드래그 방지 css  */
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .map {
        position: fixed;
        /* left: 0px; */
        height: 100vh;
        width: 100vw;
        margin: auto;
    }

    /* @media (max-width: 1199px)
    #main{
    padding: 0;
    } */
    #main {
        margin-top: 0px;
        padding: 0px;
        overflow: hidden;
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

<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

</header><!-- End Header -->

<%--<!-- ======= Sidebar ======= -->--%>
<%--<aside id="sidebar" class="sidebar">--%>
<%--    <ul class="sidebar-nav" id="sidebar-nav">--%>
<%--        <style>--%>
<%--            .profile .profile-card img {--%>
<%--                display: flex;--%>
<%--                max-width: 111px;--%>
<%--            }--%>
<%--        </style>--%>
<%--        <div class="card profile">--%>
<%--            <div class="profile card-body profile-card pt-4 d-flex flex-column align-items-center">--%>
<%--                <img src="/resources/assets/img/profile.jpg" alt="Profile"--%>
<%--                     class="rounded-circle">--%>
<%--                <h2>이동헌</h2>--%>
<%--                <h3>경기 남양주시</h3>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <li class="nav-item">--%>
<%--            <a class="nav-link collapsed" href="/resources/index.html">--%>
<%--                <i class="ri-run-line"></i>--%>
<%--                <span>러닝</span>--%>
<%--            </a>--%>
<%--        </li><!-- End Dashboard Nav -->--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link collapsed" href="/resources/index.html">--%>
<%--                <i class="ri-list-check-2"></i>--%>
<%--                <span>피드</span>--%>
<%--            </a>--%>
<%--        </li><!-- End Dashboard Nav -->--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link collapsed" href="/resources/index.html">--%>
<%--                <i class="ri-lungs-fill"></i>--%>
<%--                <span>활동</span>--%>
<%--            </a>--%>
<%--        </li><!-- End Dashboard Nav -->--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link collapsed" href="/resources/index.html">--%>
<%--                <i class="ri-group-2-fill"></i>--%>
<%--                <span>크루</span>--%>
<%--            </a>--%>
<%--        </li><!-- End Dashboard Nav -->--%>

<%--    </ul>--%>

<%--</aside>--%>

<%--<main id="main" class="main">--%>

<%--    --%>
<%--</main><!-- End #main -->--%>
<style>
    .card {
        box-sizing: border-box;
        width: 500px;
        height: auto;
        margin: auto;
        padding-top: 70px;
        background: skyblue;
        text-align: center;
        display: table;
        position: relative;
    }

    .watch-body {
        margin-bottom: 50px;
    }

    .watch-body span {
        color: white;
        font-size: 50px;
    }
</style>
<section class="section profile">
    <div class="row">

        <!-- Button trigger modal -->
        <button type="button" class="btn btn-secondary small" data-toggle="modal" data-target="#exampleModalCenter">
            Launch demo modal
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="watch-body">
                            <span id="postTestMin">00</span><!-- 분 -->
                            <span>:</span>
                            <span id="postTestSec">00</span><!--초-->
                            <span>.</span>
                            <span id="postTestMilisec">00</span><!--밀리초-->
                        </div>

                        <div>
                            <ul id="testRecordList"></ul><!--중간 기록할 리스트-->
                        </div>
                        <div>
                            <button type="button" id="testStartBtn">START</button><!--시작/재시작/기록 버튼-->
                            <button type="button" id="testStopBtn">STOP</button><!--스톱 버튼-->
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-secondary small">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

            <div class="map">
        </div>
    </div>
</section>


<!-- Vendor JS Files -->
<script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/assets/vendor/chart.js/chart.min.js"></script>
<script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
<script src="/resources/assets/vendor/quill/quill.min.js"></script>
<script src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="/resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/resources/assets/js/main.js"></script>

<script>
    function getLocation() {
        if (navigator.geolocation) { // GPS를 지원하면
            navigator.geolocation.getCurrentPosition(function (position) {

                const mylat = position.coords.latitude
                const mylng = position.coords.longitude

                console.log("현재 " + "위도: " + mylat + " | 경도: " + mylng)

                function initMap() {

                    const path = [{
                        lat: mylat, lng: mylng
                    }];

                    //구글 맵 기본옵션
                    const defaultOptions = {
                        zoom: 17, //지도 확대 및 축소 수준
                        center: path[0], //초기 지도 위치
                        mapTypeId: "roadmap", //기본 지도 유형  = normal, default 2D map
                        disableDefaultUI: true, //모든 기본 UI 버튼 비활성화
                        gestureHandling: "none", //모든 터치 제스처 및 스크롤 이벤트는 지도를 이동하거나 확대/축소 : "greedy"
                        keyboardShortCuts: false, //키보드 제어 비활성화
                        clickableIcons: false, //정보창 비활성화
                        mapId: '48cb216d9a8215f9' //map 스타일 적용을 위한 Key

                    };

                    //map 객체 생성
                    const map = new google.maps.Map(document.querySelector('.map'), defaultOptions);

                    // // const markerIcon = "./images/Ripple.svg"
                    // //마커 객체 생성
                    // const marker = new google.maps.Marker({
                    //     position: path[0],
                    //     map: map,
                    //     // icon: markerIcon,
                    //     Animation: google.maps.Animation.BOUNCE,
                    //     optimized: false
                    //
                    // });


                    // //elevator 객체 생성
                    // const elevator = new google.maps.ElevationService();

                    // displayPathElevation(path, elevator, map);튼 클릭시 효과

                    const modal = document.querySelector('#exampleModalCenter')

                    function CenterControl(controlDiv, map) {
                        // Set CSS for the control border.
                        const controlUI = document.createElement("button");

                        controlUI.style.backgroundColor = "cornflowerblue";
                        controlUI.style.border = "none";
                        controlUI.style.borderRadius = "30% 30% 30% 30%";
                        controlUI.style.boxShadow = "3px 3px 10px rgba(0,0,0,.3)";
                        controlUI.style.cursor = "pointer"; //마우스 커서가 올라갔을 때 모양 지정
                        controlUI.style.marginTop = "70vh";
                        controlUI.style.padding = "0 2em";
                        controlUI.style.textAlign = "center";
                        controlUI.style.position = "relative";
                        controlUI.title = "Click to recenter the map";
                        controlUI.type = "button"
                        controlDiv.appendChild(controlUI);




                        // Set CSS for the control interior.
                        const controlText = document.createElement("div");

                        controlText.style.color = "rgb(25,25,25)";
                        controlText.style.fontFamily = "fantasy";
                        controlText.style.fontSize = "70px";
                        controlText.style.lineHeight = "11vh";
                        controlText.style.paddingLeft = "5px";
                        controlText.style.paddingRight = "5px";
                        controlText.innerHTML = '<i class="ri-play-fill"></i>';
                        controlUI.appendChild(controlText);

                        controlUI.addEventListener("click", () => {

                        });

                    }


                    function SettingControl(settingDiv, map) {
                        // Set CSS for the control border.
                        const settingUI = document.createElement("button");

                        settingUI.style.backgroundColor = "aliceblue";
                        settingUI.style.border = "none";
                        settingUI.style.borderRadius = "30% 30% 30% 30%";
                        settingUI.style.boxShadow = "3px 3px 10px rgba(0,0,0,.3)";
                        settingUI.style.cursor = "pointer"; //마우스 커서가 올라갔을 때 모양 지정
                        settingUI.style.marginTop = "70vh";
                        settingUI.style.padding = "0 2em";
                        settingUI.style.textAlign = "center";
                        settingUI.style.position = "relative";
                        settingUI.style.right = "20px"
                        settingUI.style.display = "flex"
                        settingUI.title = "Click to recenter the map";
                        settingDiv.appendChild(settingUI);


                        // Set CSS for the control interior.
                        const settingText = document.createElement("div");

                        settingText.style.color = "rgb(25,25,25)";
                        settingText.style.fontFamily = "fantasy";
                        settingText.style.fontSize = "70px";
                        settingText.style.lineHeight = "11vh";
                        settingText.style.paddingLeft = "5px";
                        settingText.style.paddingRight = "5px";
                        settingText.innerHTML = '<i class="ri-stop-fill"></i>';
                        settingUI.appendChild(settingText);

                        settingUI.addEventListener("click", () => {
                            self.location = ""
                        });
                    }


                    const settingControlDiv = document.createElement("div");

                    const centerControlDiv = document.createElement("div");

                    SettingControl(settingControlDiv, map);
                    map.controls[google.maps.ControlPosition.TOP_CENTER].push(settingControlDiv);

                    CenterControl(centerControlDiv, map);
                    map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);

                }

                initMap();

            }, function (error) {
                console.error(error);
            }, {
                enableHighAccuracy: false, //배터리를 더 소모해서 더 정확한 위치를 찾음
                maximumAge: 0, //한 번 찾은 위치 정보를 해당 초만큼 캐싱 
                timeout: Infinity //주어진 초 안에 찾지 못하면 에러 발생
            });
        } else {
            alert('GPS를 지원하지 않습니다');
        }
    }

    getLocation()
    // google.load("visualization", "1", {
    //     packages: ["columnchart"]
    // });


</script>

<script>
    let stTime = 0
    let endTime = 0
    let timerStart

    let min
    let sec
    let milisec

    const startBtn = document.getElementById('testStartBtn')
    const stopBtn = document.getElementById('testStopBtn')
    const recordList = document.getElementById('testRecordList')

    startBtn.addEventListener('click',
        function () { // RECORD
            if (this.innerText == 'RECORD' && milisec) {
                console.log(min, sec, milisec)
                var li = document.createElement('li')
                li.style.color = "#fff"
                li.innerText = min + ' : ' + sec + ' : ' + milisec
                if (!recordList.firstChild) {
                    recordList.append(li)
                } else {
                    recordList.insertBefore(li, recordList.firstChild)
                }
                return false
            }

            this.innerText = 'RECORD'

            if (!stTime) {
                stTime = Date.now() // 최초 START
            }
            else {
                stopBtn.innerText = 'STOP'
                stTime += (Date.now() - endTime) // RESTART
            }
            timerStart = setInterval(function () {
                var nowTime = new Date(Date.now() - stTime)

                min = addZero(nowTime.getMinutes())
                sec = addZero(nowTime.getSeconds())
                milisec = addZero(Math.floor(nowTime.getMilliseconds() / 10))

                document.getElementById('postTestMin').innerText = min
                document.getElementById('postTestSec').innerText = sec
                document.getElementById('postTestMilisec').innerText = milisec
            }, 1)
        })

    stopBtn.addEventListener('click', function () {
        if (timerStart) {
            clearInterval(timerStart) // STOP
            if (this.innerText == 'STOP') {
                endTime = Date.now()
                this.innerText = 'RESET'
                startBtn.innerText = 'RESTART'
            } else { // RESET
                stTime = 0
                min = 0
                sec = 0
                milisec = 0
                document.getElementById('postTestMin').innerText = '00'
                document.getElementById('postTestSec').innerText = '00'
                document.getElementById('postTestMilisec').innerText = '00'
                startBtn.innerText = 'START'
                this.innerText = 'STOP'
                timerStart = null
                recordList.innerHTML = ''
            }
        }
    })

    function addZero(num) {
        return (num < 10 ? '0' + num : '' + num)
    }


</script>


<style>
    button {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: perspective(1px) translateZ(0);
        transform: perspective(1px) translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-transition-duration: 0.5s;
        transition-duration: 0.5s;
    }

    button:hover {
        -webkit-transform: scale(0.8);
        transform: scale(0.8);
        -webkit-transition-timing-function: cubic-bezier(0.47, 2.02, 0.31, -0.36);
        transition-timing-function: cubic-bezier(0.47, 2.02, 0.31, -0.36);
    }
</style>
</body>

</html>
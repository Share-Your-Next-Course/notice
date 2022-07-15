<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>

<style>
    html,
    body {
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

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <style>
            .profile .profile-card img {
                display: flex;
                max-width: 111px;
            }
        </style>
        <div class="card profile">
            <div class="profile card-body profile-card pt-4 d-flex flex-column align-items-center">
                <img src="/resources/assets/img/profile.jpg" alt="Profile"
                     class="rounded-circle">
                <h2>이동헌</h2>
                <h3>경기 남양주시</h3>
            </div>
        </div>

        <li class="nav-item">
            <a class="nav-link collapsed" href="/resources/index.html">
                <i class="ri-run-line"></i>
                <span>러닝</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/resources/index.html">
                <i class="ri-list-check-2"></i>
                <span>피드</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/resources/index.html">
                <i class="ri-lungs-fill"></i>
                <span>활동</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="/resources/index.html">
                <i class="ri-group-2-fill"></i>
                <span>크루</span>
            </a>
        </li><!-- End Dashboard Nav -->

    </ul>

</aside>
<main id="main" class="main">

    <section class="section profile">
        <div class="row">
            <div class="map">
            </div>
        </div>
    </section>

</main><!-- End #main -->


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

                    const path = [{lat: mylat, lng: mylng
                    }];

                    //구글 맵 기본옵션
                    const defaultOptions = {
                        zoom: 17, //지도 확대 및 축소 수준
                        center: path[0], //초기 지도 위치
                        mapTypeId: "roadmap", //기본 지도 유형  = normal, default 2D map
                        disableDefaultUI: true, //모든 기본 UI 버튼 비활성화
                        gestureHandling: "none", //모든 터치 제스처 및 스크롤 이벤트는 지도를 이동하거나 확대/축소 : "greedy"
                        keyboardShortCuts: false, //키보드 제어 비활성화
                        clickableIcons : false, //정보창 비활성화
                        mapId:'48cb216d9a8215f9' //map 스타일 적용을 위한 Key

                    };

                    //map 객체 생성
                    const map = new google.maps.Map(document.querySelector('.map'), defaultOptions);

                    // const markerIcon = "./images/Ripple.svg"
                    //마커 객체 생성
                    const marker = new google.maps.Marker({
                        position: path[0],
                        map: map,
                        // icon: markerIcon,
                        Animation: google.maps.Animation.BOUNCE,
                        optimized: false

                    });


                    // //elevator 객체 생성
                    // const elevator = new google.maps.ElevationService();

                    // displayPathElevation(path, elevator, map);튼 클릭시 효과

                    function CenterControl(controlDiv, map) {
                        // Set CSS for the control border.
                        const controlUI = document.createElement("button");

                        controlUI.style.backgroundColor = "cornflowerblue";
                        controlUI.style.border = "none";
                        controlUI.style.borderRadius = "30px 10px 30px 10px";
                        controlUI.style.boxShadow = "3px 3px 10px rgba(0,0,0,.3)";
                        controlUI.style.cursor = "pointer"; //마우스 커서가 올라갔을 때 모양 지정
                        controlUI.style.marginTop = "85vh";
                        controlUI.style.padding = "0 2em";
                        controlUI.style.textAlign = "center";
                        controlUI.style.position = "relative";
                        controlUI.title = "Click to recenter the map";
                        controlDiv.appendChild(controlUI);


                        // Set CSS for the control interior.
                        const controlText = document.createElement("div");

                        controlText.style.color = "rgb(25,25,25)";
                        controlText.style.fontFamily = "fantasy";
                        controlText.style.fontSize = "70px";
                        controlText.style.lineHeight = "11vh";
                        controlText.style.paddingLeft = "5px";
                        controlText.style.paddingRight = "5px";
                        controlText.innerHTML = '<i class="ri-run-line"></i>';
                        controlUI.appendChild(controlText);

                        controlUI.addEventListener("click", () => {
                            self.location="/board/record"
                        });
                    }

                    function SettingControl(settingDiv, map) {
                        // Set CSS for the control border.
                        const settingUI = document.createElement("button");

                        settingUI.style.backgroundColor = "aliceblue";
                        settingUI.style.border = "none";
                        settingUI.style.borderRadius = "10px 10px 10px 10px  ";
                        settingUI.style.boxShadow = "3px 3px 10px rgba(0,0,0,.3)";
                        settingUI.style.cursor = "pointer"; //마우스 커서가 올라갔을 때 모양 지정
                        settingUI.style.marginTop = "86vh";
                        settingUI.style.padding = "0 2em";
                        settingUI.style.textAlign = "center";
                        settingUI.style.position = "relative";
                        settingUI.style.top = "15px"
                        settingUI.style.right = "20px"
                        settingUI.style.display = "flex"
                        settingUI.title = "Click to recenter the map";
                        settingDiv.appendChild(settingUI);


                        // Set CSS for the control interior.
                        const settingText = document.createElement("div");

                        settingText.style.color = "rgb(25,25,25)";
                        settingText.style.fontFamily = "fantasy";
                        settingText.style.fontSize = "30px";
                        settingText.style.lineHeight = "7vh";
                        settingText.style.paddingLeft = "3px";
                        settingText.style.paddingRight = "4px";
                        settingText.style.display = "flex";
                        settingText.innerHTML = '<i class="ri-settings-3-fill"></i>';
                        settingUI.appendChild(settingText);

                        settingUI.addEventListener("click", () => {
                            self.location=""
                        });
                    }

                    function RecordControl(recordDiv, map) {
                        // Set CSS for the control border.
                        const recordUI = document.createElement("button");

                        recordUI.style.backgroundColor = "aliceblue";
                        recordUI.style.border = "none";
                        recordUI.style.borderRadius = "10px 10px 10px 10px  ";
                        recordUI.style.boxShadow = "3px 3px 10px rgba(0,0,0,.3)";
                        recordUI.style.cursor = "pointer"; //마우스 커서가 올라갔을 때 모양 지정
                        recordUI.style.marginTop = "86vh";
                        recordUI.style.padding = "0 2em";
                        recordUI.style.textAlign = "center";
                        recordUI.style.position = "relative";
                        recordUI.style.top = "15px"
                        recordUI.style.left = "20px"
                        recordUI.style.display = "flex"

                        recordUI.title = "Click to recenter the map";

                        recordDiv.appendChild(recordUI);


                        // Set CSS for the control interior.
                        const recordText = document.createElement("div");

                        recordText.style.color = "rgb(25,25,25)";
                        recordText.style.fontFamily = "fantasy";
                        recordText.style.fontSize = "30px";
                        recordText.style.lineHeight = "7vh";
                        recordText.style.paddingLeft = "3px";
                        recordText.style.paddingRight = "4px";
                        recordText.style.display = "flex";
                        recordText.innerHTML = '<i class="ri-footprint-fill"></i>';
                        recordUI.appendChild(recordText);

                        recordUI.addEventListener("click", () => {
                            self.location=""
                        });
                    }

                    const settingControlDiv = document.createElement("div");

                    const centerControlDiv = document.createElement("div");

                    const recordControlDiv = document.createElement("div");




                    SettingControl(settingControlDiv, map);
                    map.controls[google.maps.ControlPosition.TOP_CENTER].push(settingControlDiv);

                    CenterControl(centerControlDiv, map);
                    map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);

                    RecordControl(recordControlDiv, map);
                    map.controls[google.maps.ControlPosition.TOP_CENTER].push(recordControlDiv);


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
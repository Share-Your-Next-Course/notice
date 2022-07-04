<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
</style>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>

</header><!-- End Header -->

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

<style>
    button {
        text-align: center;
        width: 10em;
        font-size: larger;
    }

    .myinfoList {
        margin-bottom: 30vh;
    }

</style>
<main id="main" class="main">

    <div class="card">
        <div class="card-header">
            GPS 정보 수집 기능(Geolocation을 이용한 위도 및 경도 수집)
        </div>
        <div class="card-body myinfoList">
            <h5 class="card-title">이동 경로의 위도 및 경도</h5>
            <ul class="recordList"></ul>

        </div>
        <div class="card-footer text-muted">
            <button type="button" class="btn btn-primary startBtn" id="start">Start</button>
            <button type="button" class="btn btn-primary stopBtn" id="stop">Stop</button>
            <button href="#" class="btn btn-success create">코스 생성</button>
        </div>
    </div>
    <div id="map" style="width:100%; height: 100vh;"></div>
    <%--    &lt;%&ndash;  모달 창 &ndash;%&gt;--%>
    <%--    <div class="modal" tabindex="-1" role="dialog">--%>
    <%--        <div class="modal-dialog" role="document">--%>
    <%--            <div class="modal-content">--%>
    <%--                <div class="modal-header">--%>
    <%--                    <h5 class="modal-title">GPS 정보 수집 기능</h5>--%>
    <%--                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
    <%--                        <span aria-hidden="true">&times;</span>--%>
    <%--                    </button>--%>
    <%--                </div>--%>
    <%--                <div class="modal-body">--%>
    <%--                    <p>이동거리의 위치정보 수집을 완료했습니다. 코스를 생성하시겠습니까?</p>--%>
    <%--                </div>--%>
    <%--                <div class="modal-footer">--%>
    <%--                    <button type="button" class="btn btn-primary">코스 생성</button>--%>
    <%--                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</main>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0&callback=initMap&v=weekly" defer></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    const start = document.querySelector("#start")
    const stop = document.querySelector("#stop")
    const recordList = document.querySelector('.recordList')
    const startBtn = document.querySelector('.startBtn')
    const coordinates = []

    document.querySelector('#start').addEventListener("click", (e) => {
        alert('위치 정보 수집을 시작합니다.')
        const mylocation = navigator.geolocation.watchPosition(
            data => {
                console.log(data)
                const myinfo = {
                    lat: 0,
                    lng: 0
                }
                myinfo.lat = data.coords.latitude
                myinfo.lng = data.coords.latitude

                coordinates.push(myinfo)
                window.localStorage.setItem("coordinates", JSON.stringify(coordinates))
                //좌표가 될 localStorage는 coordinates 객체이다.
                //localStorage는 동기식 api이며, 배열과 같은 객체를 그대로 저장할 수 없기 때문에 JSON 문자열로 변환한다.
                console.log(JSON.parse(window.localStorage.getItem("coordinates")))
                console.log('-----위치정보 수집 중-----------')
                console.log(window.localStorage.getItem("coordinates"))

                initMap(coordinates)

                const li = document.createElement("li")
                li.style.color = "black"
                li.style.listStyle = 'none'
                li.style.paddingLeft = '0'
                li.innerText = '위도: ' + myinfo.lat + '-----' + '경도: ' + myinfo.lng
                if (!recordList.firstChild) {
                    recordList.append(li)
                } else {
                    recordList.insertBefore(li, recordList.firstChild)
                }
            },
            (error) => console.log(error),
            {
                enableHighAccuracy: true,
                //높은 정확도의 위치 정보를 구할 것인지 true | false
                //true일 시 스마트폰 환경에서 GPS에서 위치 정보를 사용하려고 한다.
                //high quality accuracy, but 배터리소비가 빠르다.
                maximumAge: 10000,
                timeout: 5000
            })

        document.querySelector('#stop').addEventListener('click', (e) => {
                alert('위치 정보 수집을 종료합니다.')
                navigator.geolocation.clearWatch(mylocation)
                console.log('-----위치정보 수집 종료-----------')
                console.log(coordinates)
                console.log("----")
                initMap(coordinates)
            }
        )

    })


    // function getLocation() {
    //     if (navigator.geolocation) { // GPS를 지원하면
    //         navigator.geolocation.getCurrentPosition(function (position) {
    //
    //            let mylat = position.coords.latitude
    //            let mylng = position.coords.longitude
    //
    //             console.log("현재 " + "위도: " + mylat + " | 경도: " + mylng)
    //
    //             // function initMap() {
    //             //
    //             //     const path = [{
    //             //         lat: mylat, lng: mylng
    //             //     }];
    //             //
    //             //     //구글 맵 기본옵션
    //             //     const defaultOptions = {
    //             //         zoom: 17, //지도 확대 및 축소 수준
    //             //         center: path[0], //초기 지도 위치
    //             //         mapTypeId: "roadmap", //기본 지도 유형  = normal, default 2D map
    //             //         disableDefaultUI: true, //모든 기본 UI 버튼 비활성화
    //             //         gestureHandling: "none", //모든 터치 제스처 및 스크롤 이벤트는 지도를 이동하거나 확대/축소 : "greedy"
    //             //         keyboardShortCuts: false, //키보드 제어 비활성화
    //             //         clickableIcons: false, //정보창 비활성화
    //             //         mapId: '48cb216d9a8215f9' //map 스타일 적용을 위한 Key
    //             //
    //             //     }
    //             //
    //             //     //map 객체 생성
    //             //     const map = new google.maps.Map(document.querySelector('.map'), defaultOptions);
    //             //
    //             //     // const markerIcon = "./images/Ripple.svg"
    //             //     //마커 객체 생성
    //             //     const marker = new google.maps.Marker({
    //             //         position: path[0],
    //             //         map: map,
    //             //         // icon: markerIcon,
    //             //         Animation: google.maps.Animation.BOUNCE,
    //             //         optimized: false
    //             //     })
    //             //
    //             // }
    //             //
    //             // initMap();
    //         }, function (error) {
    //             console.error(error);
    //         }, {
    //             enableHighAccuracy: false, //배터리를 더 소모해서 더 정확한 위치를 찾음
    //             maximumAge: 0, //한 번 찾은 위치 정보를 해당 초만큼 캐싱
    //             timeout: Infinity //주어진 초 안에 찾지 못하면 에러 발생
    //         })
    //     } else {
    //         alert('GPS를 지원하지 않습니다');
    //     }
    // }

    document.querySelector(".create").addEventListener('click',(e) => {
        e.stopPropagation()
        e.preventDefault()
        console.log('컹스')
    })


    function initMap(coordinates) {

        //구글 맵 기본옵션
        var map = new google.maps.Map( document.getElementById('map'), {
            zoom: 15, //지도 확대 및 축소 수준
            center: coordinates[0], //초기 지도 위치
            mapTypeId: "roadmap", //기본 지도 유형  = normal, default 2D map
            disableDefaultUI: true, //모든 기본 UI 버튼 비활성화
            gestureHandling: "none", //모든 터치 제스처 및 스크롤 이벤트는 지도를 이동하거나 확대/축소 : "greedy"
            keyboardShortCuts: false, //키보드 제어 비활성화
            clickableIcons: false, //정보창 비활성화
            mapId: '48cb216d9a8215f9' //map 스타일 적용을 위한 Key
        });

        //마커 객체 생성
        new google.maps.Marker({
            position: coordinates[0],
            map: map,
            // label: "서울 중심 좌표",
            //icon: markerIcon,
            Animation: google.maps.Animation.BOUNCE,
            optimized: false
        });
    }


</script>
</body>
</html>
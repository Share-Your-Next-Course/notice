<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script src="https://www.google.com/jsapi"></script>

    <script type="module" src="./resources/js/map.js"></script>
    <title>location data</title>
</head>
<style>
    button {
        height: 10vh;
        font-size: medium;
        border-color: aliceblue;
        border: 1px solid black;
    }
    .dataList{
        list-style: square;
    }
    .map{
        float: left;
        position:relative;
        left: 0px;
        height: 50vh;
        width: 45vw;
        border: 1px solid black;
    }

</style>
<body>
<h2>위치 데이터 가져오기</h2>
<!-- 코스 맵 시작-->
<div class="map">
    <h2></h2>
</div>
<%--코스 맵 종료--%>
<%--고도 그래프 시작--%>

<div class="locationData">
    <button onclick="clickBtn()">my location</button>
    <h3>location data</h3>
    <ul class="dataList">
        <li class="listDate"></li>
        <li class="listTime"></li>
        <li class="listLat"></li>
        <li class="listLng"></li>
        <li class="listalt"></li>
        <li class="listTemp"></li>
        <li class="listWeather"></li>
    </ul>
</div>
</body>
<script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWCmaYMswUTwF_9vbM9_cDYKbwAui0HI0&callback=initMap&v=weekly"
        defer
></script>
<script>

    const key = '49fbb3b4e94aeff8a1a88040e94660e7'


    function clickBtn(){ //성공했을 경우
        navigator.geolocation.getCurrentPosition( function(position){

                // console.log(position)

                let lat = position.coords.latitude;
                let lng = position.coords.longitude;
                let time = new Date(position.timestamp).toLocaleTimeString();
                let date = new Date(position.timestamp).toLocaleDateString();


                console.log(`현재 시각 \${time}, 위도는 \${lat}, 경도는 \${lng}로 확인된다.`)

                document.querySelector('.listDate').innerHTML= 'date : ' + date;
                document.querySelector('.listTime').innerHTML= 'time : ' + time;
                document.querySelector('.listLat').innerHTML= 'latitude : ' + lat;
                document.querySelector('.listLng').innerHTML= 'longitude : ' + lng;
                document.querySelector('.listalt').innerHTML= 'altitude : ' ;


                fetch(`https://api.openweathermap.org/data/2.5/weather?lat=\${lat}&lon=\${lng}&appid=\${key}&units=metric`,
                )
                    .then(response => response.json())
                    .then(data => {
                        let temp = `\${data.main.temp}` + '℃'
                        let weather = `\${data.weather[0].main}`
                        console.log(temp, weather)

                        document.querySelector('.listTemp').innerHTML= 'temperature : ' + temp;
                        document.querySelector('.listWeather').innerHTML= 'Weather : ' + weather;

                        let arr = [
                            {key: "record date",value:date},
                            {key: 'record time',value:time},
                            {key: 'latitude',value:lat},
                            {key: 'longitude',value:lng},
                            {key: 'temperature',value:temp},
                            {key: 'weather',value:weather},]

                        console.log(arr);
                    })




                // `온도 : \${data.main.temp}, 날씨 : `




            },
            function(error){ //실패했을 경우 실행
                switch(error.code){
                    case error.PERMISSION_DENIED:
                        str="사용자가 위치 정보 허용 거부";
                        break;
                    case error.POSITION_UNAVAILABLE:
                        str="가져온 위치 정보를 사용할 수 없음";
                        break;
                    case error.TIMEOUT:
                        str="위치 정보를 가져오기 위한 요청이 허용 시간을 초과";
                        break;
                    case error.UNKNOWN_ERROR:
                        str="알수없는 오류";
                        break;
                }
                document.getElementById('target').innerHTML=str;
            });

//    위치 정보 가져오기 끝
    }
</script>

</html>

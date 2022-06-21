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
            <ul id="forms-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/course/list">
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
                    <a href="crew/list">
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
        <h1>대시보드</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/index.jsp">Home</a></li>
                <li class="breadcrumb-item active">대시보드</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-8">
                <div class="row">

                    <!-- Sales Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card sales-card">

                            <div class="card-body">
                                <h5 class="card-title">코스 <span>| Today</span></h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="ri-treasure-map-fill"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6 class="courseTotal">00</h6>
                                        <span class="text-primary small pt-1 fw-bold courseTotalNow">0</span> <span
                                            class="text-muted small pt-2 ps-1">신규</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Sales Card -->

                    <!-- Revenue Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">

                            <div class="card-body">
                                <h5 class="card-title">크루 <span>| Today</span></h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bxs-group"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6 class="crewTotal">00</h6>
                                        <span class="text-success small pt-1 fw-bold crewTotalNow">0</span> <span
                                            class="text-muted small pt-2 ps-1">신규</span>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Revenue Card -->

                    <!-- Customers Card -->
                    <div class="col-xxl-4 col-xl-12">

                        <div class="card info-card customers-card">
                            <div class="card-body">
                                <h5 class="card-title">회원 수 <span>| Today</span></h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class=" ri-user-add-fill"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6 class="memberTotal">00</h6>
                                        <span class="text-danger small pt-1 fw-bold memberTotalNow">0</span> <span
                                            class="text-muted small pt-2 ps-1">신규</span>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div><!-- End Customers Card -->
                    <!-- Reports -->
                    <div class="col-xxl-4 col-xl-12">
                        <div class="card">


                            <div class="card-body">
                                <h5 class="card-title">코스 그래프 <span>/Month</span></h5>

                                <!-- Line Chart -->
                                <div id="reportsChart"></div>
                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#reportsChart"), {
                                            series: [{
                                                name: '코스',
                                                data: ${course.count}
                                                ,
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'area',
                                                toolbar: {
                                                    show: false
                                                },
                                            },
                                            markers: {
                                                size: 4
                                            },
                                            colors: ['#4154f1'],
                                            fill: {
                                                type: "gradient",
                                                gradient: {
                                                    shadeIntensity: 1,
                                                    opacityFrom: 0.3,
                                                    opacityTo: 0.4,
                                                    stops: [0, 90, 100]
                                                }
                                            },
                                            dataLabels: {
                                                enabled: false
                                            },
                                            stroke: {
                                                curve: 'smooth',
                                                width: 2
                                            },
                                            xaxis: {
                                                type: 'date',
                                                categories: ${course.date}
                                            },
                                            tooltip: {
                                                x: {
                                                    format: 'dd/MM/yy HH:mm'
                                                },
                                            }
                                        }).render();
                                    });
                                </script>

                                <!-- End Line Chart -->

                            </div>

                        </div>
                    </div><!-- End Reports -->
                    <!-- Reports -->
                    <div class="col-xxl-4 col-xl-12">
                        <div class="card">


                            <div class="card-body">
                                <h5 class="card-title">크루 그래프 <span>/Month</span></h5>

                                <!-- Line Chart -->
                                <div id="reportsChart1"></div>
                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#reportsChart1"), {
                                            series: [{
                                                name: '크루',
                                                data: ${crew.count}
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'area',
                                                toolbar: {
                                                    show: false
                                                },
                                            },
                                            markers: {
                                                size: 4
                                            },
                                            colors: ['#2eca6a'],
                                            fill: {
                                                type: "gradient",
                                                gradient: {
                                                    shadeIntensity: 1,
                                                    opacityFrom: 0.3,
                                                    opacityTo: 0.4,
                                                    stops: [0, 90, 100]
                                                }
                                            },
                                            dataLabels: {
                                                enabled: false
                                            },
                                            stroke: {
                                                curve: 'smooth',
                                                width: 2
                                            },
                                            xaxis: {
                                                type: 'date',
                                                categories: ${crew.date}
                                            },
                                            tooltip: {
                                                x: {
                                                    format: 'dd/MM/yy HH:mm'
                                                },
                                            }
                                        }).render();
                                    });
                                </script>
                                <!-- End Line Chart -->

                            </div>

                        </div>
                    </div><!-- End Reports -->

                    <!-- Reports -->
                    <div class="col-xxl-4 col-xl-12">
                        <div class="card">

                            <div class="card-body">
                                <h5 class="card-title">회원 그래프 <span>/Month</span></h5>

                                <!-- Line Chart -->
                                <div id="reportsChart2"></div>

                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#reportsChart2"), {
                                            series: [{
                                                name: '회원',
                                                data: ${member.count},
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'area',
                                                toolbar: {
                                                    show: false
                                                },
                                            },
                                            markers: {
                                                size: 4
                                            },
                                            colors: ['#ff771d'],
                                            fill: {
                                                type: "gradient",
                                                gradient: {
                                                    shadeIntensity: 1,
                                                    opacityFrom: 0.3,
                                                    opacityTo: 0.4,
                                                    stops: [0, 90, 100]
                                                }
                                            },
                                            dataLabels: {
                                                enabled: false
                                            },
                                            stroke: {
                                                curve: 'smooth',
                                                width: 2

                                            },
                                            xaxis: {
                                                type: 'date',
                                                categories: ${member.date}
                                            },
                                            tooltip: {
                                                x: {
                                                    format: 'dd/MM/yy HH:mm'
                                                },
                                            }
                                        }).render();
                                    });
                                </script>
                                <!-- End Line Chart -->

                            </div>

                        </div>
                    </div><!-- End Reports -->

                    <!-- Recent Sales -->
                    <div class="col-12">
                        <div class="card recent-sales overflow-auto">

                            <div class="filter">
                                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                    <li class="dropdown-header text-start">
                                        <h6>Filter</h6>
                                    </li>

                                    <li><a class="dropdown-item" href="#">Today</a></li>
                                    <li><a class="dropdown-item" href="#">This Month</a></li>
                                    <li><a class="dropdown-item" href="#">This Year</a></li>
                                </ul>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title">크루 랭킹 <span>| Today</span></h5>

                                <table class="table table-borderless datatable">
                                    <thead>
                                    <tr>
                                        <th scope="col">번호</th>
                                        <th scope="col">크루명</th>
                                        <th scope="col">크루장</th>
                                        <th scope="col">활동지역</th>
                                        <th scope="col">팀원</th>
                                        <th scope="col">상태</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${crewList}" var="crewList">
                                    <tr>
                                        <th scope="row"><a>${crewList.cr_id}</a></th>
                                        <td>${crewList.name}</td>
                                        <td><a>${crewList.m_name}</a></td>
                                        <td>${crewList.addr}</td>
                                        <td>${crewList.mtotal}</td>
                                        <c:choose>
                                            <c:when test="${crewList.delflag != 0}">
                                                <!-- Result값이 있다면 실행할 로직 -->
                                                <td><span class="badge bg-danger">Rejected</span></td>
                                            </c:when>
                                            <c:otherwise>
                                                <!-- 그렇지 않다면 실행할 로직 -->
                                                <td><span class="badge bg-success">Approved</span></td>
                                            </c:otherwise>
                                        </c:choose>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div><!-- End Recent Sales -->


                </div>
            </div><!-- End Left side columns -->

            <!-- Right side columns -->
            <div class="col-lg-4">

                <!-- Budget Report -->
                <div class="card">
                    <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                            <li class="dropdown-header text-start">
                                <h6>Filter</h6>
                            </li>

                            <li><a class="dropdown-item" href="#">Today</a></li>
                            <li><a class="dropdown-item" href="#">This Month</a></li>
                            <li><a class="dropdown-item" href="#">This Year</a></li>
                        </ul>
                    </div>


                <!-- Website Traffic -->
                <div class="card">
                    <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                            <li class="dropdown-header text-start">
                                <h6>Filter</h6>
                            </li>

                            <li><a class="dropdown-item" href="#">Today</a></li>
                            <li><a class="dropdown-item" href="#">This Month</a></li>
                            <li><a class="dropdown-item" href="#">This Year</a></li>
                        </ul>
                    </div>

                    <div class="card-body pb-0">
                        <h5 class="card-title">지역별 코스 <span>| Today</span></h5>

                        <!-- Donut Chart -->
                        <div id="donutChart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                new ApexCharts(document.querySelector("#donutChart"), {
                                    series: ${courseAddr.count},
                                    chart: {
                                        height: 270,
                                        type: 'donut',
                                        toolbar: {
                                            show: true
                                        }
                                    },
                                    labels: ${courseAddr.date},
                                }).render();
                            });
                        </script>
                        <!-- End Donut Chart -->
                        <!-- End Pie Chart -->
                    </div>
                </div>
                </div>
                <!-- 나이별 분포도 종료 -->
                <!-- News & Updates Traffic -->
                <div class="card">
                    <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                            <li class="dropdown-header text-start">
                                <h6>Filter</h6>
                            </li>

                            <li><a class="dropdown-item" href="#">Today</a></li>
                            <li><a class="dropdown-item" href="#">This Month</a></li>
                            <li><a class="dropdown-item" href="#">This Year</a></li>
                        </ul>
                    </div>

                    <div class="card-body pb-0">

                        <h5 class="card-title">코스 업데이트 <span>| Today</span></h5>

                        <div class="news">


                                <c:forEach items="${dtoList}" var="dtoList" begin="0" end="4" step="1" varStatus="status">
                                    <div class="post-item clearfix">
                                        <c:choose>
                                            <c:when test="${dtoList.mainImage != null}">
                                                <!-- Result값이 있다면 실행할 로직 -->
                                                <img src="${dtoList.getMain()}">
                                            </c:when>
                                            <c:otherwise>
                                                <!-- 그렇지 않다면 실행할 로직 -->
                                                <img src="http://106.241.252.54:8086/assets/img/logo4.png" width="100px;" height="105px;">
                                            </c:otherwise>
                                        </c:choose>
                                        <h4><a>${dtoList.title}</a></h4>
                                        <p>${dtoList.content}</p>
                                    </div>
                                </c:forEach>

                        </div><!-- End sidebar recent posts-->

                    </div>
                </div><!-- End News & Updates -->

            </div><!-- End Right side columns -->

        </div>
    </section>

</main>


<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    //즉시 실행 함수
    const dashService = (function (){

        async function getCartA(){

            const res = await axios.get(`/dash/cartA`)

            return res.data
        }

        return{getCartA}
    })

    const courseTotal = document.querySelector(".courseTotal")
    const courseTotalNow = document.querySelector(".courseTotalNow")
    const crewTotal = document.querySelector(".crewTotal")
    const crewTotalNow = document.querySelector(".crewTotalNow")
    const memberTotal = document.querySelector(".memberTotal")
    const memberTotalNow = document.querySelector(".memberTotalNow")

    const cartA = dashService().getCartA().then(v =>{
        courseTotal.innerHTML = v.courseTotal
        courseTotalNow.innerHTML = v.courseTotalNow
        crewTotal.innerHTML = v.crewTotal
        crewTotalNow.innerHTML = v.crewTotalNow
        memberTotal.innerHTML = v.memberTotal
        memberTotalNow.innerHTML = v.memberTotalNow
    });

    const element = document.querySelector(".dataTable-selector");
    console.log(element)


</script>

<!-- End #main -->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
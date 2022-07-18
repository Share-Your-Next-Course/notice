<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="modal fade " id="scrollingModal" tabindex="-1"><%-- 회원정보 모달 시작  --%>
    <div class="modal-dialog">
        <div class="modal-content modal-size">
            <div class="modal-header">
                <h5 class="modal-title">코스 조회</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body "> <%-- 모달 content 시작  --%>
                <section class="section profile">
                    <div class="row">
                        <div class="col-xl-4">

                            <div class="card">
                                <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                    <img src="http://106.241.252.54:8086/assets/img/dongheon-profile.jpg"
                                         alt="Profile" class="rounded-circle">
                                    <h2>이동헌</h2>
                                    <h3>경기 남양주</h3>
                                    <div class="social-links mt-2">
                                        <a href="#" class="twitter"><i
                                                class="bi bi-twitter"> 러닝크루 달음박</i></a>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-xl-8">

                            <div class="card">
                                <div class="card-body pt-3">
                                    <!-- Bordered Tabs -->
                                    <ul class="nav nav-tabs nav-tabs-bordered">

                                        <li class="nav-item">
                                            <button class="nav-link active"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#profile-overview">
                                                프로필 조회
                                            </button>
                                        </li>

                                        <li class="nav-item">
                                            <button class="nav-link"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#profile-edit">작성글
                                            </button>
                                        </li>

                                        <li class="nav-item">
                                            <button class="nav-link"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#profile-settings">
                                                작성 댓글
                                            </button>
                                        </li>

                                        <li class="nav-item">
                                            <button class="nav-link"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#profile-change-password">
                                                계정 관리
                                            </button>
                                        </li>

                                    </ul>
                                    <div class="tab-content pt-2">

                                        <div class="tab-pane fade show active profile-overview"
                                             id="profile-overview">
                                            <h5 class="card-title">소개</h5>
                                            <p class="small fst-italic"> 남양주시에 거주하는 3년차
                                                런린이입니다. 평내-금곡 코스의 사릉천, 삼패지구 한강시민공원을 주로
                                                달립니다.</p>

                                            <h5 class="card-title">상세 정보</h5>


                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label ">
                                                    ID
                                                </div>
                                                <div class="col-lg-9 col-md-8">
                                                    runnermiel97
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label ">
                                                    이름
                                                </div>
                                                <div class="col-lg-9 col-md-8">이동헌</div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">소속
                                                    크루
                                                </div>
                                                <div class="col-lg-9 col-md-8">러닝크루
                                                    달음박
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    나이
                                                </div>
                                                <div class="col-lg-9 col-md-8">27</div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    성별
                                                </div>
                                                <div class="col-lg-9 col-md-8">남성</div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    활동지역
                                                </div>
                                                <div class="col-lg-9 col-md-8">춘천</div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    E-mail
                                                </div>
                                                <div class="col-lg-9 col-md-8">
                                                    lovely123@gmail.com
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    전화번호
                                                </div>
                                                <div class="col-lg-9 col-md-8">
                                                    010-1234-5680
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-md-4 label">
                                                    가입일자
                                                </div>
                                                <div class="col-lg-9 col-md-8">
                                                    2022-05-11
                                                </div>
                                            </div>

                                        </div>
                                        <div class="tab-pane fade profile-edit pt-3"
                                             id="profile-edit">

                                            <!-- Profile Edit Form -->
                                            <form>
                                                <div class="card">
                                                    <div class="card-body">

                                                        <h5 class="card-title">5개의 게시글이
                                                            있습니다.</h5>

                                                        <!-- List group with Advanced Contents -->
                                                        <div class="list-group">
                                                            <a href="/course/list"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>

                                                                <div class="text-muted">
                                                                    <span class="ri-map-pin-2-fill"></span>
                                                                    코스게시판
                                                                </div>
                                                                <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                                <span class="mb-1">춘천 소양2교 코스</span>
                                                                <span class="badge bg-secondary rounded-pill">7</span>
                                                                <div class="text-muted">
                                                                    <small class="text-muted">runnermile97</small>
                                                                    2022.02.28
                                                                </div>

                                                            </a>
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>


                                                                <div class="text-muted">
                                                                    <span class="ri-question-fill"></span>
                                                                    문의사항
                                                                </div>
                                                                <span class="mb-1">마커가 생성되지 않습니다..</span>
                                                                <span class="ri-image-2-fill"></span>
                                                                <span class="badge bg-primary rounded-pill">답변완료</span>
                                                                <div class="text-muted">
                                                                    <small class="text-muted">runnermile97</small>
                                                                    2022.01.20
                                                                </div>
                                                            </a>
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>

                                                                <div class="text-muted">
                                                                    <span class="ri-map-pin-2-fill"></span>
                                                                    코스게시판
                                                                </div>
                                                                <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                                <span class="mb-1">서울 중랑천 코스</span>
                                                                <span class="badge bg-secondary rounded-pill">2</span>
                                                                <div class="text-muted">
                                                                    <small class="text-muted">runnermile97</small>
                                                                    2022.01.22
                                                                </div>

                                                            </a>
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>

                                                                <div class="text-muted">
                                                                    <span class="ri-map-pin-2-fill"></span>
                                                                    코스게시판
                                                                </div>
                                                                <%--                                                    <span><i class="ri-image-2-fill"></i></span>--%>
                                                                <span class="mb-1">잠실 석촌호수 코스</span>
                                                                <span class="badge bg-secondary rounded-pill">12</span>
                                                                <div class="text-muted">
                                                                    <small class="text-muted">runnermile97</small>
                                                                    2022.02.28
                                                                </div>
                                                            </a>
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>


                                                                <div class="text-muted">
                                                                    <span class="ri-question-fill"></span>
                                                                    문의사항
                                                                </div>
                                                                <span class="mb-1">데이터 기록 중 정지했을 경우..</span>
                                                                <span class="badge bg-danger rounded-pill">답변 중</span>
                                                                <div class="text-muted">
                                                                    <small class="text-muted">runnermile97</small>
                                                                    2022.01.20
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <!-- End List group Advanced Content -->

                                                    </div>
                                                </div>
                                            </form><!-- End Profile Edit Form -->

                                        </div>

                                        <div class="tab-pane fade pt-3"
                                             id="profile-settings">

                                            <!-- Settings Form -->
                                            <form>

                                                <div class="card">
                                                    <div class="card-body">
                                                        <%--                                            <i class="ri-attachment-2"></i>--%>
                                                        <%--                                            <i class="ri-camera-fill"></i>--%>
                                                        <%--                                            <i class="ri-celsius-fill"></i>--%>
                                                        <%--                                            <i class="ri-flag-fill"></i>--%>
                                                        <%--                                            <i class="ri-image-2-fill"></i>--%>


                                                        <h5 class="card-title">2개의 댓글이
                                                            있습니다.</h5>

                                                        <!-- List group with Advanced Contents -->
                                                        <div class="list-group">
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action"
                                                               aria-current="true">
                                                                <div class="d-flex w-100 justify-content-between"></div>
                                                                <p class="mb-1">저번 주에 내린
                                                                    눈이 아직 녹지 않아서 길이
                                                                    미끄러워요 ㅠㅠ</p>
                                                                <span class="text-muted"><small>구리 왕숙천</small></span>
                                                                <span class="badge bg-secondary rounded-pill">7</span>
                                                                <div class="text-muted">
                                                                    2022.05.11
                                                                </div>

                                                            </a>
                                                            <a href="#"
                                                               class="list-group-item list-group-item-action">
                                                                <div class="d-flex w-100 justify-content-between"></div>
                                                                <p class="mb-1">바람이 적당히
                                                                    불어서 뛰기 좋은 코스에요!
                                                                    :)</p>
                                                                <span class="text-muted"><small>삼패지구 한강시민공원</small></span>
                                                                <span class="badge bg-secondary rounded-pill">11</span>
                                                                <div class="text-muted">
                                                                    2022.04.28
                                                                </div>
                                                            </a>

                                                        </div>
                                                        <!-- End List group Advanced Content -->

                                                    </div>
                                                </div>


                                            </form><!-- End settings Form -->

                                        </div>
                                        <div class="tab-pane fade pt-3"
                                             id="profile-change-password">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title">계정 관리</h5>
                                                    <ul>
                                                        <li><p>기록은 탈퇴 후 3개월 간 강제탈퇴된 멤버들에
                                                            한해서만 보여집니다.</p></li>
                                                        <li><p>멤버 스스로 탈퇴한 기록은 남지
                                                            않습니다,</p></li>
                                                        <li><p>강제탈퇴 시 재가입 불가합니다.</p>
                                                        </li>
                                                    </ul>

                                                    <span class="button">
                                            <button>

                                            </button>
                                        </span>


                                                    <!-- Scrolling Modal -->
                                                    <span class="button">
                                            <button type="button" class="btn btn-secondary small" data-bs-toggle="modal"
                                                    data-bs-target="#scrollingModal">
                                                활동정지
                                            </button>
                                        </span>

                                                    <div class="modal fade"
                                                         id="scrollingModal"
                                                         tabindex="-1">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title">
                                                                        활동정지</h5>
                                                                    <button type="button"
                                                                            class="btn-close"
                                                                            data-bs-dismiss="modal"
                                                                            aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    해당 회원을 활동정지 처리합니다.
                                                                    <span>활동 정지된 회원은 30일 간 접속이 불가능합니다. 계속 진행하시겠습니다?</span>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button"
                                                                            class="btn btn-secondary"
                                                                            data-bs-dismiss="modal">
                                                                        닫기
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-secondary small">
                                                                        확인
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div><!-- End Scrolling Modal-->

                                                    <!-- Modal Dialog Scrollable -->
                                                    <span class="button">
                                            <button type="button" class="btn btn-secondary small" data-bs-toggle="modal"
                                                    data-bs-target="#modalDialogScrollable">
                                                강제탈퇴
                                            </button>
                                        </span>

                                                    <div class="modal fade"
                                                         id="modalDialogScrollable"
                                                         tabindex="-1">
                                                        <div class="modal-dialog modal-dialog-scrollable">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title">
                                                                        회원 강제탈되</h5>
                                                                    <button type="button"
                                                                            class="btn-close"
                                                                            data-bs-dismiss="modal"
                                                                            aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <ul>
                                                                        <li><p>기록은 탈퇴 후
                                                                            3개월 간 강제탈퇴된
                                                                            멤버들에 한해서만
                                                                            보여집니다.</p>
                                                                        </li>
                                                                        <li><p>멤버 스스로
                                                                            탈퇴한 기록은 남지
                                                                            않습니다,</p>
                                                                        </li>
                                                                        <li><p>강제탈퇴 시
                                                                            재가입
                                                                            불가합니다.</p>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button"
                                                                            class="btn btn-secondary"
                                                                            data-bs-dismiss="modal">
                                                                        닫기
                                                                    </button>
                                                                    <button type="button"
                                                                            class="btn btn-secondary small">
                                                                        완전 탈퇴
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- End Modal Dialog Scrollable-->
                                                </div>
                                            </div>
                                        </div><!-- End Bordered Tabs -->

                                    </div>
                                </div>


                            </div>
                        </div>
                </section>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                    닫기
                </button>
                <button type="button" class="btn btn-secondary small">확인</button>
            </div>
        </div>
    </div>
</div>
<%-- 회원정보 모달 끝--%>
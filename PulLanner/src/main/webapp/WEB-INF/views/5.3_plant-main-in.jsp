<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
      <!-- Page content-->
      <div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
        <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">식물관리</a></li>
                    <li class="breadcrumb-item active" aria-current="page">개인 식물저장소</li>
                </ol>
            </nav>

            <!-- 프로필정보-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" style="max-width: 1100px; height: 200px;">
                <div class="card-body" style="padding-left: 10px;">
                    <!-- I added the inline style to adjust the padding on the left side -->
                    <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
                        <h2 class="h4 mb-0" style="font-size: 14px;">무민의꽃밭세상(ID)</h2>
                        <!--<a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i class="ai-edit ms-n1 me-2"></i>식물등록</a>-->
                    </div>
                    <div class="d-md-flex align-items-center">
                        <div class="d-sm-flex align-items-center">
                            <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 65px; height: 65px; background-image: url(assets/img/avatar/02.jpg);"></div>
                            <div class="pt-3 pt-sm-0 ps-sm-3">
                                <h3 class="h5 mb-2">김무민<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                                <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                                    <div class="d-flex align-items-center me-3"><i class="ai-mail me-1"></i>moomin@manse.com</div>
                                    <div class="d-flex align-items-center text-nowrap"><i class="ai-map-pin me-1"></i>korea, won</div>
                                </div>
                            </div>
                        </div>




            </section>
            <style>
                .text-large {
                    font-size: 28px;
                    /* 원하는 크기로 조정하세요 */
                }
                
                .text-bold {
                    font-weight: bold;
                    /* 두께를 bold로 조정합니다 */
                }
                
                .text-large2 {
                    font-size: 20px;
                    color: rgb(80, 121, 80);
                }
            </style>

            <div class="d-flex align-items-center">
                <img src="assets/img/avatar/36.jpg" class="rounded-5" alt="Rounded image" style="width: 200px; height: 200px;">
                <div class="ms-3">
                    <p class="text-large text-bold">A 프라이덱 1</p>
                    <p class="text-large2 text-bold">알로카시아 프라이덱 1</p>
                    <p class=" text-bold">키우기 시작한지 600일째</p>
                    <p class=" text-bold">최근 물준날 5일째</p>
                </div>
            </div>




            <!-- Page title-->
            <div class="row pt-xl-3 mt-n1 mt-sm-0">
                <div class="col-lg-9 offset-lg-3 pt-lg-3">
                    <div class="d-flex justify-content-between align-items-center">
                        <h1 class="pb-2 pb-sm-3"></h1>
                        <a href="plant-main-in-write.html" class="btn btn-primary">등록하기</a>
                    </div>
                </div>
            </div>
                        <!-- This is the registration button -->
                    </div>
                </div>
            </div>
            <div class="row pb-2 pb-sm-4">
                <div class="col-lg-9">
                    <style>
                        .col-lg-9.offset-lg-3 {
                            margin-left: 0;
                        }
                        
                        .col-lg-9 h1 {
                            font-size: 25px;
                            font-weight: bold;
                        }
                        
                        .col-lg-9 p {
                            color: rgb(65, 128, 65);
                            font-size: 20px;
                            font-weight: bold;
                        }
                    </style>

                    <p> .</p>

                </div>
            </div>


            </aside>
            <!-- Product grid 이거 지우면 3칸짜리 넓히고 좁히고 차이-->
            <div class="col-lg-9">
                <!-- Event calendar example -->
                <script>
                    $(document).ready(function() {
                        $('#calendar').fullCalendar({
                            header: {
                                left: 'prev,next today',
                                center: 'title',
                                right: 'month,agendaWeek,agendaDay'
                            },
                            defaultView: 'month',
                            navLinks: true, // can click day/week names to navigate views
                            editable: true,
                            eventLimit: true // allow "more" link when too many events
                        });
                    });
                </script>
                <div id='calendar'></div>
                <!-- Event calendar example -->
                <div class="calendar" data-calendar-options='{
  "initialDate": "2022-08-01",
  "headerToolbar": {
    "left": "prev,next today",
    "center": "title",
    "right": "dayGridMonth,timeGridWeek,listWeek"
  },
  "eventTimeFormat": {
    "hour": "2-digit",
    "minute": "2-digit",
    "hour12": false
  },
  "events": [
    {
      "title": "Stretching",
      "start": "2022-08-01T16:30",
      "end": "2022-08-01T18:00",
      "classNames": ["event-custom-style", "bg-light", "text-nav", "border-0", "rounded-1", "p-2", "ps-3", "border-start", "border-5", "border-purple"]
    },
    {
      "title": "For pregnant",
      "start": "2022-08-02T07:30",
      "end": "2022-08-02T09:40",
      "classNames": ["event-custom-style", "bg-light", "text-nav", "border-0", "rounded-1", "p-2", "ps-3", "border-start", "border-5", "border-warning"]
    },
    {
      "title": "Healthy back",
      "start": "2022-08-02T12:00",
      "end": "2022-08-02T13:30",
      "classNames": ["event-custom-style", "bg-light", "text-nav", "border-0", "rounded-1", "p-2", "ps-3", "border-start", "border-5", "border-info"]
    },
    {
      "title": "Relax yoga",
      "start": "2022-08-02T18:45",
      "end": "2022-08-02T20:00",
      "classNames": ["event-custom-style", "bg-light", "text-nav", "border-0", "rounded-1", "p-2", "ps-3", "border-start", "border-5", "border-danger"]
    },
    {
      "title": "Beginners",
      "start": "2022-08-03T11:00",
      "end": "2022-08-03T13:00",
      "classNames": ["event-custom-style", "bg-light", "text-nav", "border-0", "rounded-1", "p-2", "ps-3", "border-start", "border-5", "border-success"]
    }
  ]
}'></div>
                <!-- 위에가 달력 html에 저장해도 페이지에는 화면 안뜸-->
            </div>
            </div>
            </div>
            <!-- Pagination-->
            <div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
                <div class="col col-md-4 col-6 order-md-1 order-1">
                    <div class="d-flex align-items-center"><span class="text-muted fs-sm"></span>
                        <select class="form-select form-select-flush w-auto">
            <!-- <option value="12">12</option>
                    <option value="18">18</option>
                    <option value="24">24</option>
                    <option value="30">30</option> -->
          </select>
                    </div>
                </div>
                <!--<div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                <button class="btn btn-primary w-md-auto w-100" type="button">Load more products</button>
              </div>
              <div class="col col-md-4 col-6 order-md-3 order-2">
                <nav aria-label="Page navigation">
                  <ul class="pagination pagination-sm justify-content-end">
                   <!-- <li class="page-item active" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>-->
                </ul>
                </nav>
            </div>
        </div>
        </div>
        </div>
        </div>
        <!-- Sidebar toggle button-->
        <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar"><i class="ai-filter me-2"></i>Filters</button>
    </main>
    
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/nouislider/dist/nouislider.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

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

	<div class="card-border-3" style="padding-left: 10px;"></div>
	<div class="d-md-flex align-items-center">
		<div class="d-sm-flex align-items-center">
			<div
				class="rounded-circle bg-size-cover bg-position-center flex-shrink-0"
				style="width: 65px; height: 65px; background-image: url(assets/img/avatar/01.jpg);"></div>
			<div class="pt-3 pt-sm-0 ps-sm-3">

				<div
					class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">

				</div>
			</div>
		</div>
	</div>

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
		<img src="${path}/Managelist/file/${item.renamedimg}"
			class="rounded-5" alt="Rounded image"
			style="width: 200px; height: 200px;">
		<div class="ms-3">
			<p class="text-large text-bold">${item.plantname}</p>
			<p class="text-large2 text-bold">${item.petname}</p>

			<p class=" text-bold">
				키우기 시작한지${startDay}&nbsp;일째
				<!-- <p class=" text-bold"><fmt:formatDate  type="both" value="${item.startdate }"/> -->

			</p>
			<p class=" text-bold">최근 물 준날${diffDay}&nbsp;일째</p>
			<!--  	<p class=" text-bold"><fmt:formatDate type="both" value="${item.waterdate }"/></p>-->
		</div>
	</div>




	<!-- Page title-->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-9 offset-lg-3 pt-lg-3">
			<div class="d-flex justify-content-between align-items-center">
				<h1 class="pb-2 pb-sm-3"></h1>

				<c:if test="${loginMember != null}">

					<button type="button" class="btn btn-primary"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						style="margin-left: 60%">
						등록하기 <i class="ai-edit-alt"></i>
					</button>
				</c:if>

				<!-- Modal -->

				<form action="${path}/pplantreply" method="post"
					class="row needs-validation">

					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<label class="form-label mt-3">
									<h3>플래너 간편히 기록하기</h3>
								</label>

								<div class="btn-group">
									<button type="button" class="btn btn-outline-primary">환기하기</button>
									
									<button type="button" class="btn btn-outline-primary">물주기</button>
									
									<button type="button" class="btn btn-outline-primary">분무하기</button>
								</div>

								<div class="btn-group">
									<button type="button" class="btn btn-outline-primary">가지치기</button>
									<button type="button" class="btn btn-outline-primary">분갈이하기</button>
								</div>

								<div class="btn-group">
									<button type="button" class="btn btn-outline-primary">영양관리</button>
									<button type="button" class="btn btn-outline-primary">화분교체</button>

								</div>

								<enctype="multipart/form-data"> <input type="hidden"
									name="id" value="${loginMember.id}" readonly class="input-text">
								<label class="form-label">어느날짜로 기록해드릴까요?</label>
								<div class="form-floating">
									<div class="form-floating">
										<input class="form-control" type="date"
											placeholder="choose date" id="waterdate_date"
											name="waterdate_date">
									</div>
								</div>
								<label class="form-label">내용</label> <textarea
									class="form-control" name="content" id="fl-textarea"
									style="height: 100px;" placeholder="내 식물을 위한 한마디!"></textarea>



								<div class="modal-footer">
									<button type="reset" class="btn btn-secondary"
										data-bs-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">등록</button>
				</form>
			</div>

		</div>
	</div>
</div>


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

		<p>.</p>

	</div>
</div>
<c:if test="${not empty list}">
	<c:forEach var="item" items="${list}">
	<div class="border-bottom py-4 mt-2 mb-4">
                    <div class="d-flex align-items-center pb-1 mb-3"><!-- <img class="rounded-circle" src="assets/img/avatar/08.jpg" width="48" alt="Comment author"> -->
                      <div class="ps-3">
                        <span class="fs-sm text-muted"></span>
                      </div>
                    </div>
                    <p class="pb-2 mb-0"><c:out value="${item.content}"/></p>
                    <!--  <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>-->
                  </div>
	</c:forEach>
</c:if>
</aside>


<!-- Product grid 이거 지우면 3칸짜리 넓히고 좁히고 차이-->
<!-- Event calendar example -->
<script>
	$(document).ready(function() {
		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			defaultView : 'month',
			navLinks : true, // can click day/week names to navigate views
			editable : true,
			eventLimit : true
		// allow "more" link when too many events
		});
	});
	
	// 버튼을 클릭했을 때 실행되는 함수
    document.getElementById("poptionButton").addEventListener("click", function() {
        // poption 변수에 1 할당
        var poption = 1;
        // 여기에 poption 값을 서버로 전송하는 로직 추가 가능
        console.log("poption 변수에 1이 할당되었습니다.");
    });
</script>
<!--  <div id='calendar'></div>
<!-- Event calendar example 	
<div class="calendar"
	data-calendar-options='{
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
}'
	style="width: 50%; margin-left: 250px;"></div>
</div>
<!-- 위에가 달력 html에 저장해도 페이지에는 화면 안뜸-->
</div>
</div>
</div>
<!-- Pagination-->
<div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
	<div class="col col-md-4 col-6 order-md-1 order-1">
		<div class="d-flex align-items-center">
			<span class="text-muted fs-sm"></span> <select
				class="form-select form-select-flush w-auto">
				
			</select>
		</div>
	</div>

	</ul>
	</nav>
</div>
</div>
</div>
</div>
</div>
<!-- Sidebar toggle button-->
<button
	class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom"
	data-bs-toggle="offcanvas" data-bs-target="#shopSidebar">
	<i class="ai-filter me-2"></i>Filters
</button>
</main>

<!-- Back to top button-->
<a class="btn-scroll-top" href="#top" data-scroll> <svg
		viewBox="0 0 40 40" fill="currentColor"
		xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor"
			stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
<!-- Vendor scripts: js libraries and plugins-->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="assets/vendor/nouislider/dist/nouislider.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<!-- Main theme script-->
<script src="assets/js/theme.min.js"></script>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

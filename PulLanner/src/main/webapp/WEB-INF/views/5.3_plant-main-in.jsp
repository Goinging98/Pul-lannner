<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

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

<!-- Page content-->
<div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-3 pb-2 breadcrumb">
			<li class="breadcrumb-item">풀래너</li>
			<li class="breadcrumb-item"><a href="/Myplant">내 풀래너</a></li>
			<li class="breadcrumb-item active">${item.petname}</li>
		</ol>
	</nav>
	<div class="container row" style="float: none; margin:100 auto;">
	<section class="card border-3 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" style="max-width: 1000px;">
		<div class="d-flex align-items-center">
			<img src="${path}/Managelist/file/${item.renamedimg}" class="rounded-5" alt="Rounded image" style="width: 300px;">
			<div class="ms-3">
				<p class="text-large text-bold">${item.petname}</p>
				<p class="text-large2 text-bold">${item.plantname}</p>
				<p class=" text-bold">
					${item.petname}를 키우기 시작한지 ${startDay}&nbsp;일째
					<p><i class="ai-calendar-check"></i> <fmt:formatDate type="both" pattern="y년 M월 d일 E요일" value="${item.startdate}"/>부터 키움</p>
				</p>
				<p class=" text-bold">최근에 물 준지 ${diffDay}&nbsp;일째</p>
				<p><i class="ai-calendar-check"></i> <fmt:formatDate type="both" pattern="y년 M월 d일 E요일" value="${item.waterdate}"/>에 물 줌</p>
			</div>
		</div>
	</section>
	</div>
				<c:if test="${loginMember != null}">
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
						style="margin-left: 60%">등록하기 <i class="ai-edit-alt"></i>
					</button>
				</c:if>
	
    <!-- 리플출력 -->
	<div class="col-lg-12">
		<c:if test="${not empty item}">
			<c:forEach var="item" items="${replyList}">
				<div class="border-bottom pt-3 pb-2">
					<div class="d-flex align-items-center pb-1 mb-3">
						<div class="ps-3">
							<span class="fs-sm text-muted"><fmt:formatDate type="both" pattern="y년 M월 d일 E요일" value="${item.createdate}" /></span>
							<c:if test="${item.poption == 1}"><span>환기하기</span></c:if>
							<c:if test="${item.poption == 2}"><span>물주기</span></c:if>
							<c:if test="${item.poption == 3}"><span>분무하기</span></c:if>
							<c:if test="${item.poption == 4}"><span>가지치기</span></c:if>
							<c:if test="${item.poption == 5}"><span>분갈이하기</span></c:if>
							<c:if test="${item.poption == 6}"><span>영양관리</span></c:if>
							<c:if test="${item.poption == 7}"><span>화분교체</span></c:if>
						</div>
					</div>
					<p class="pb-2 ps-3 mb-0">${item.content}</p>
				</div>
			</c:forEach>
		</c:if>
	</div>

	<!-- 일지 쓰기 -->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-9 offset-lg-3 pt-lg-3">
			<div class="d-flex justify-content-between align-items-center">
				<!-- Modal -->
				<form action="${path}/pplantreply" method="post" class="row needs-validation">
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<br/><br/>
								<label class="form-label mt-3">
									<h3>플래너 간단히 기록하기</h3>
								</label>
								<div class="btn-group">
									<input type="radio" class="btn btn-outline-primary" name="poption" value="1">환기하기
									<input type="radio" class="btn btn-outline-primary" name="poption" value="2">물주기
									<input type="radio" class="btn btn-outline-primary" name="poption" value="3">분무하기
									<input type="radio" class="btn btn-outline-primary" name="poption" value="4">가지치기
								</div>
								<div class="btn-group">
									<input type="radio" class="btn btn-outline-primary" name="poption" value="5">분갈이하기
									<input type="radio" class="btn btn-outline-primary" name="poption" value="6">영양관리
									<input type="radio" class="btn btn-outline-primary" name="poption" value="7">화분교체
								</div>
								<br/><br/>
								<input type="hidden" name="bno" value="${item.bno}" readonly class="input-text">
								<label class="form-label">어느 날짜로 기록해드릴까요?</label>
								<div class="form-floating">
									<div class="form-floating">
										<input class="form-control" type="date" placeholder="choose date" id="waterdate_date" name="waterdate_date">
									</div>
								</div>
								<br/><br/>
								<label class="form-label">메모</label> 
								<textarea class="form-control" name="content" id="fl-textarea" style="height: 100px;" placeholder="메모"></textarea>
								<div class="modal-footer">
									<button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">등록</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<!-- Product grid 이거 지우면 3칸짜리 넓히고 좁히고 차이-->
<!-- Event calendar example -->
<!--  <script>
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
<div id='calendar'></div>
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

<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar">
	<i class="ai-filter me-2"></i>
</button>
</main>

<!-- Back to top button-->
<a class="btn-scroll-top" href="#top" data-scroll> 
<svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
</svg><i class="ai-arrow-up"></i></a>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

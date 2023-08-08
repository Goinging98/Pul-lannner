<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-3 pb-2 breadcrumb">
			<li class="breadcrumb-item">풀래너</li>
			<li class="breadcrumb-item"><a href="/Myplant">내 풀래너</a></li>
			<li class="breadcrumb-item active">내 식물 등록하기</li>
		</ol>
	</nav>

	<div class="row pt-sm-2 pt-lg-0">
		<form action="${path}/Plantwrite" method="post"
			enctype="multipart/form-data">
			<!-- Page content-->
			<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
				<h1 class="h2 mb-4">내 식물 등록하기</h1>
				<!-- Basic info-->
				<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" style="max-width: 1000px;">
					<div class="card-body">
						<div class="d-flex align-items-center">
							<div class="dropdown">
								<input id="upfile" type="file" name="upfile"
									style="display: none;"> <label for="upfile"
									class="d-flex flex-column justify-content-end position-relative overflow-hidden rounded-circle bg-size-cover bg-position-center flex-shrink-0"
									style="width: 80px; height: 80px; background-image: url(${path}/Managelist/file/${Managelist.renamedimg});
">
									<!--  <input class="form-control" type="file" id="formfile" name="upfile" >-->
									<span class="d-block text-light text-center lh-1 pb-1"
									style="background-color: rgba(0, 0, 0, .5)"> <i
										class="ai-camera"></i></span>
								</label>
								<div class="dropdown-menu my-1"></div>
							</div>

							<div class="ps-3">
								<h3 class="h6 mb-1"></h3>
								<p class="fs-sm text-muted mb-0"></p>
							</div>
						</div>



						<div class="row g-3 g-sm-4 mt-0 mt-lg-2">

							<div class="col-sm-6">
								<label class="form-label" for="startdate_date">키우기 시작한 날</label>
								<input class="form-control" type="date" id="fn"
									placeholder="choose date" id="startdate_date"
									name="startdate_date">
							</div>

							<!-- 달력 추가하기 (j.son으로 설정하는것같음) 물어볼것 <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
                  <script>
                    flatpickr("#fn", {
                      enableTime: false, // 시간 선택 비활성화
                      dateFormat: "Y-m-d", // 날짜 형식 지정
                      placeholder: "choose date" // 플레이스홀더 텍스트
                    });
                  </script> -->
							<div class="col-sm-6">
								<label class="form-label" for="waterdate_date">마지막 물 준 날</label>
								<input class="form-control" type="date"
									placeholder="choose date" id="waterdate_date"
									name="waterdate_date">
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="plantname">식물</label> <input
									class="form-control" type="text" name="plantname"
									placeholder="식물이름을 입력해주세요" id="plantname">
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="petname">애칭</label> <input
									class="form-control" type="text" name="petname"
									placeholder="애칭을 입력해주세요" id="petname">
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="flowerpot">화분형태가 어떻게 되나요?</label>
								<input class="form-control" type="text" value=""
									name="flower pot" id="flowerpot">
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="light">빛을 어떻게 받고 있나요?</label> <input
									class="form-control" type="text" value="" name="light"
									id="light">


							</div>
							<div class="col-sm-6">
								<label class="form-label" for="timezone">어디에서 키우고 있나요?</label> <input
									class="form-control" type="text" name="timezone" id="timezone">

							</div>
							<div class="col-sm-6">
								<label class="form-label" for="currency">바람은 얼마나 통하나요?</label> <input
									class="form-control" type="text" name="wind" id="wind">

							</div>
							<div class="col-12">
								<label class="form-label" for="bio">식물을 소개해주세요.</label>
								<textarea class="form-control" rows="5"
									placeholder="식물을 소개해주세요!" name="content" id="content"></textarea>
							</div>

						</div>
						<div class="col-12 d-flex justify-content-end pt-3">
							<button class="btn btn-secondary" type="reset">취소</button>
							<button class="btn btn-primary ms-3" type="submit">등록</button>
						</div>
					</div>
				</section>
			</div>
		</form>
	</div>
</div>

<!-- Divider for dark mode only-->
<hr class="d-none d-dark-mode-block">
<!-- Sidebar toggle button-->
<button
	class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom"
	data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>Account menu
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
<script src="assets/vendor/cleave.js/dist/cleave.min.js"></script>
<!-- Main theme script-->
<script src="assets/js/theme.min.js"></script>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">
		<!-- Sidebar (offcanvas on sreens < 992px)-->
		<aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
			<div class="position-lg-sticky top-0">
				<div class="d-none d-lg-block" style="padding-top: 105px;"></div>
				<div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
					<div class="offcanvas-body">
						<div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
							<h3 class="h5 mb-1">${loginMember.name}</h3>
							<p class="fs-sm text-muted mb-0">${loginMember.id}</p>
						</div>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 글 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mypullanner"><i class="ai-pencil fs-5 opacity-60 me-2"></i>풀레너</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/myselling"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/shoppingbag"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/stararticle"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplant"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplace"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 장소</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/overview"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/infochange"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/logout"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a>
						</nav>
					</div>
				</div>
			</div>
		</aside>
		
		<!-- Page content-->
		<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
			<h1 class="h2 mb-4">관심 글</h1>
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
					<!-- Item-->
					<c:forEach var = "switem" items = "${swlist}">
						<div class="col-md-3">
							<div class="card">
								<div class="image-container">
									<c:if test="${not empty switem.RENAMED_FILENAME}">
										<img src="${switem.RENAMED_FILENAME}" class="card-img-top fit-cover" alt="image"
											style="max-height: 180px; min-height: 180px; object-fit : cover;">
									</c:if>
									<c:if test="${empty switem.RENAMED_FILENAME}">
										<img src="/resources/assets/img/blog/list/01.jpg"class="card-img-top fit-cover" alt="image"
										style="max-height: 180px; min-height: 180px; object-fit : cover;">
									</c:if>
								</div>
								<div class="card-body">
									<h5 class="card-title text-truncate">${switem.TITLE}</h5>
									<div class="d-flex justify-content-between">
										<c:if test="${switem.TYPE=='PROUD'}">
											<a href="/PlantProud" type="button" class="btn btn-primary btn-sm rounded-pill">자세히보기</a>
										</c:if>
										<c:if test="${spitem.TYPE=='HONEY'}">
											<a href="/HoneyTip/list?id=${switem.NUM}" type="button" class="btn btn-primary btn-sm rounded-pill">자세히보기</a>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
		</div>
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
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

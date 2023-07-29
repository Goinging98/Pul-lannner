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
							<img class="d-block rounded-circle mb-2" src="/resources/assets/img/avatar/02.jpg" width="80" alt="pic">
							<h3 class="h5 mb-1">${loginMember.name}</h3>
							<p class="fs-sm text-muted mb-0">${loginMember.id}</p>
						</div>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 글 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>풀레너</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/shoppingbag"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/favorites"><i class="ai-heart fs-5 opacity-60 me-2"></i>찜한 상품</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stararticle"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplant"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stargarden"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물원</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/overview"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/infochange"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/main"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a>
						</nav>
					</div>
				</div>
			</div>
		</aside>
		<!-- Page content-->
		<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
			<h1 class="h2 mb-4">내 글 관리</h1>
			<!-- Basic info-->
			<!-- Page title + filters-->
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
				<div class="row align-items-center gy-2 mb-4 pb-1 pb-sm-2 pb-lg-3">
					<div class="col-lg-5">
						<h1 class="mb-lg-0"></h1>
					</div>
					<div class="col-xl-2 offset-xl-1 col-lg-3 col-sm-5">
						<select class="form-select">
							<option>게시판</option>
							<option>식물판매</option>
							<option>씨앗분양</option>
							<option>식물자랑</option>
							<option>식물기르기꿀팁</option>
							<option>관찰일지</option>
						</select>
					</div>
					<div class="col-lg-4 col-sm-7">
						<div class="position-relative">
							<i
								class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
							<input class="form-control ps-5" type="search"
								placeholder="Enter keyword">
						</div>
					</div>
				</div>
				<!-- Post-->
				<article class="row g-0 border-0 pt-3 pt-sm-0 mb-4">
					<a
						class="col-sm-5 col-lg-4 bg-repeat-0 bg-size-cover bg-position-center rounded-5"
						href="blog-single-v2.html"
						style="background-image: url(/resources/assets/img/blog/list/05.jpg); min-height: 16rem"></a>
					<div class="col-sm-7 col-lg-8">
						<div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
							<h3>
								<a href="blog-single-v2.html">New series from Netflix</a>
							</h3>
							<p class="d-sm-none d-md-block">Egestas in neque scelerisque
								semper sit at eu cursus faucibus velit cras at aliquam sed
								dictum at at orci curabitur dictumst viverra non pharetra etiam
								non, vitae tristique eu in morbi felis nulla. Tellus sagittis
								dolor pellentesque vel porttitor magna aliquet arcu. Interdum
								risus mauris pulvinar et vel morbi ...</p>
							<div class="d-flex flex-wrap align-items-center mt-n2">
								<a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3"
									href="#">19<i class="ai-share fs-lg ms-1"></i></a><a
									class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2"
									href="#">7<i class="ai-message fs-lg ms-1"></i></a><span
									class="fs-xs opacity-20 mt-2 mx-3">|</span><span
									class="fs-sm text-muted mt-2">December 15, 2022</span><span
									class="fs-xs opacity-20 mt-2 mx-3">|</span><a
									class="badge text-nav fs-xs border mt-2" href="#">TV shows</a>
							</div>
						</div>
					</div>
				</article>
				<!-- Pagination-->
				<div class="row gy-3 align-items-center mt-lg-5 pt-2 pt-md-3 pt-lg-0 mb-md-2 mb-xl-4">
					<div class="col col-md-4 col-6 order-md-1 order-1"></div>
					<div class="col col-md-4 col-12 order-md-2 order-3 text-center">
					</div>
					<div class="col col-md-4 col-6 order-md-3 order-2">
						<nav aria-label="Page navigation">
							<ul class="pagination pagination-sm justify-content-end">
								<li class="page-item active" aria-current="page"><span
									class="page-link">1<span class="visually-hidden">(current)</span></span></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>

<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>
</button>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

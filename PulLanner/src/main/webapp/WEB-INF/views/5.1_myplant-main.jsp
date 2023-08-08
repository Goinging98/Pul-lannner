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
</style>

<!-- Page content-->
<div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-3 pb-2 breadcrumb">
			<li class="breadcrumb-item">풀레너</li>
			<li class="breadcrumb-item active" aria-current="page">내 풀레너</li>
		</ol>
	</nav>

	<!-- 프로필 -->
	<section class="card border-3 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" style="max-width: 1000px;">
		<div class="card-body">
			<div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
				<i class="ai-user text-primary lead pe-1 me-2"></i>
				<h2 class="h4 mb-0">${loginMember.name}</h2>
				<a class="btn btn-sm btn-secondary ms-auto" href="${path}/Plantwrite"><i class="ai-edit ms-n1 me-2"></i>식물등록</a>
			</div>
			<div class="d-md-flex align-items-center">
				<div class="d-sm-flex align-items-center">
					<div class="pt-3 pt-sm-0 ps-sm-3">
						<div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
							<div class="d-flex align-items-center me-3">
								<i class="ai-mail me-1"></i>${loginMember.id}</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Page title-->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-9 offset-lg-3 pt-lg-3">
			<h1 class="pb-2 pb-sm-3">${loginMember.name}님의정원</h1>
		</div>
	</div>

	<div class="col-lg-9">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
			<!-- Item-->
			<c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
					<div class="col pb-2 pb-sm-3">
						<div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
							<div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
								<a class="swiper-wrapper" href="${path}/MyplantView?bno=${item.bno}">
									<div class="swiper-slide p-2 p-xl-4">
										<img class="d-block mx-auto" src="${path}/Managelist/file/${item.renamedimg}" width="226" alt="Product">
									</div>
								</a>
							</div>
						</div>
						<div class="d-flex mb-1">
							<h3 class="h6 mb-0">
								<a href="${path}/MyplantView?bno=${item.bno}">${item.plantname}</a>
							</h3>
							<div class="d-flex ps-2 mt-n1 ms-auto"></div>
						</div>
					</div>
				</c:forEach>
			</c:if>

		</div>
	</div>
</div>

<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar">
	<i class="ai-filter me-2"></i>
</button>
</main>

<!-- Vendor scripts: js libraries and plugins-->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="assets/vendor/nouislider/dist/nouislider.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<!-- Main theme script-->
<script src="assets/js/theme.min.js"></script>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

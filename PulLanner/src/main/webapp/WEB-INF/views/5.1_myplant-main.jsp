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
	<section class="card border-3 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4"
		style="max-width: 1000px;">
		<div class="card-body">
			<div
				class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
				<i class="ai-user text-primary lead pe-1 me-2"></i>
				<h2 class="h4 mb-0">${loginMember.name}</h2>
				<a class="btn btn-sm btn-secondary ms-auto"
					href="${path}/Plantwrite"><i class="ai-edit ms-n1 me-2"></i>식물등록</a>
			</div>
			<div class="d-md-flex align-items-center">
				<div class="d-sm-flex align-items-center">
					<div
						class="rounded-circle bg-size-cover bg-position-center flex-shrink-0"
						style="width: 130px; height: 130px; background-image: url(assets/img/avatar/02.jpg);"></div>
					<div class="pt-3 pt-sm-0 ps-sm-3">
						<h3 class="h5 mb-2">${loginMember.name}<i
								class="ai-circle-check-filled fs-base text-success ms-2"></i>
						</h3>
						<div
							class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
							<div class="d-flex align-items-center me-3">
								<i class="ai-mail me-1"></i>${loginMember.id}</div>
							<div class="d-flex align-items-center text-nowrap">
								<i class="ai-map-pin me-1"></i>Korea
							</div>
						</div>
					</div>
				</div>
	</section>



	<!-- Page title-->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-9 offset-lg-3 pt-lg-3">
			<h1 class="pb-2 pb-sm-3">${loginMember.name}님의 정원</h1>
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
			<p> 총 보유중인 풀래너</p>
		</div>
	</div>

	</aside>
	<!-- Product grid 이거 지우면 3칸짜리 넓히고 좁히고 차이-->

	<!-- 이게  -->

	
	
	
			
		
	 <div class="col-lg-9">
           
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
              <!-- Item-->
              <c:if test="${not empty list}">
                <c:forEach var="item" items="${list}">
              
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="${path}/MyplantView?bno=${item.bno}">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="${path}/Managelist/file/${item.renamedimg}" width="226" alt="Product"></div></a>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="${path}/MyplantView?bno=${item.bno}">${item.plantname}</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                  </div>
                </div>                      
              </div>
			</c:forEach>
			</c:if>
			
			
			
			<!-- Pagination-->
			<div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
				<div class="col col-md-4 col-6 order-md-1 order-1">
					<div class="d-flex align-items-center">
						<span class="text-muted fs-sm"></span> <select
							class="form-select form-select-flush w-auto">


						</select>
					</div>
				</div>
				<div class="col col-md-4 col-12 order-md-2 order-3 text-center">
				</div>
				<div class="col col-md-4 col-6 order-md-3 order-2">
					<nav aria-label="Page navigation">
						<ul class="pagination pagination-sm justify-content-end">

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

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
			<li class="breadcrumb-item active"><a href="${path}/MyplantMain">풀래너</a></li>
			<li class="breadcrumb-item active" aria-current="page">풀래너스</li>
		</ol>
	</nav>

<!-- Page title-->
	<div class="d-flex align-items-center justify-content-end mb-4 pb-3">
		<div class="me-auto">
			<h1 class="me-3">PUL-LANNER's</h1>
		</div>
		<!-- 검색창 -->
		<div class="col-md-5 mb-5 mt-3">
			<form name="searchForm" action="${path}/arboretumList" method="get">
				<input type="hidden" name="page" value="1">
				<div>
					<div class="input-group input-group-sm rounded-pill">
						<span class="input-group-text"> <i class="ai-search"></i></span>
						<input type="search" id="searchValue" name="searchValue" value="${param.searchValue}" class="form-control" placeholder="검색">
						<button type="submit" class="btn btn-primary rounded-pill">검색</button>
					</div>
				</div>
			</form>
		</div>
	</div>

<!-- Product grid-->
		<div class="col-lg-12">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
				<!-- 첫번째 줄 Item-->
				<c:forEach var="item" items="${list}">
					<div class="col-md-3">
						<div class="card">
							<div class="image-container">
								<img src="${item.thumbA}" class="card-img-top fit-cover" alt="Card image">
							</div>
							<div class="card-body">
								<h5 class="card-title text-truncate">${item.cntntsSj}</h5>
								<div class="d-flex justify-content-between">
									<a href="${path}/GardenDetail?id=${item.cntntsNo}" type="button" class="btn btn-primary btn-sm rounded-pill">자세히보기</a>
									<button type="button" class="btn btn-outline-info btn-icon rounded-pill btn-sm" style="margin-left: auto;"
										onclick="location.href='${path}/scrapplant?num=${item.cntntsNo}'">
										<i class="ai-bookmark"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	
	<!-- Pagination-->
		<div class="col-12 pt-sm-4 mt-md-2 text-end">
			<!-- Pagination-->
			<div class="row gy-3 align-items-center mt-lg-5 pt-2 pt-md-4 pt-lg-0">
				<div class="col col-md-4 col-6 order-md-1 order-1"></div>
				<div class="col col-md-4 col-6 order-md-3 order-2">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-end">
							<li class="page-item active" aria-current="page">
							<!-- 처음 페이지 -->
							<li class="page-item">
								<button class="page-link" onclick="movePage(1)">&lt;&lt;</button>
							</li>
							<!-- 이전 페이지 -->
							<li class="page-item">
								<button class="page-link" onclick="movePage(${pageInfo.prevPage})">&lt;</button>
							</li>
							<!-- 12개 페이지가 보여지는 부분 -->
							<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
								<c:if test="${status.current == pageInfo.currentPage}">
									<li class="page-item active" aria-current="page">
										<button class="page-link" disabled>${status.current}</button>
									</li>
								</c:if>
								<c:if test="${status.current != pageInfo.currentPage}">
									<li class="page-item">
										<button class="page-link" onclick="movePage(${status.current})">${status.current}</button>
									</li>
								</c:if>
							</c:forEach>

							<!-- 다음 페이지 -->
							<li class="page-item">
								<button class="page-link" onclick="movePage(${pageInfo.nextPage})">&gt;</button>
							</li>
							<!-- 마지막 페이지 -->
							<li class="page-item">
								<button class="page-link" onclick="movePage(${pageInfo.maxPage})">&gt;&gt;</button>
							</li>
						</ul>
					</nav>
				</div>
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

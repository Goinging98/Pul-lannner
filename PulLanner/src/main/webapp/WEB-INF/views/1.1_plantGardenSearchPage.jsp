<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
	/* 이미지 크기 맞추기(item에 적용) */
	.image-container {
		height: 220px;
		overflow: hidden;
	}
	/* 이미지 크기 맞추기(item에 적용) */
	.fit-cover {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
</style>

<!-- Page content-->
<div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-3 pb-2 breadcrumb">
			<li class="breadcrumb-item">식물 검색</li>
			<li class="breadcrumb-item active" aria-current="page">실내정원용</li>
		</ol>
	</nav>
	<!-- Banner-->
	<div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #e3e5e9;">
		<div class="row align-items-center g-0">
			<div class="col-md-6 offset-xl-1 text-center text-md-start">
				<div class="py-4 px-4 px-sm-5 pe-md-0 ps-xl-4">
					<p class="fs-xs text-uppercase pt-3 pt-md-0 mb-3 mb-lg-4">Best selling</p>
					<h2 class="h1 pb-2 pb-xl-3">
						Cozy corner for the living room at a <span class='text-primary'>discount up to 40%</span>
					</h2>
				</div>
			</div>
			<div class="col-md-6 col-xl-5 d-flex justify-content-end">
				<img src="/resources/assets/img/shop/banner.jpg" width="491" alt="Banner">
			</div>
		</div>
	</div>
	<!-- Page title-->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-12">
			<h1 class="pb-2 pb-sm-3">식물 검색</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-md-7 mb-5 mt-3">
			<div>
				<a href="${path}/PlantSearch" type="button" class="btn btn-outline-primary active" style="margin-right: 10px;">실내정원용</a>
				<a href="${path}/FlowerSearch" type="button" class="btn btn-outline-primary" style="margin-right: 10px;">꽃</a> 
				<a href="${path}/DryGardenSearch" type="button" class="btn btn-outline-primary" style="margin-right: 10px;">다육이</a>
			</div>
		</div>

		<!-- 검색창 -->
		<div class="col-md-5 mb-5 mt-3">
			<form name="searchForm" action="${path}/PlantSearch" method="get">
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

<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar">
	<i class="ai-filter me-2"></i>
</button>
</main>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
	
    function submitSearchForm() {
        var searchValue = document.getElementById("searchValue").value;
        var form = document.forms["searchForm"];
        form.action = "${path}/PlantSearch?searchValue=" + searchValue + "&page=1";
        form.submit();
    }
</script>


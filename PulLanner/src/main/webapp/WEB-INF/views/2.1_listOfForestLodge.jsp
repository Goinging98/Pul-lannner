<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


      <!-- Page content-->
      <style>
   /* 이미지 크기 맞추기(item에 적용) */
    .image-container {
      height: 500px;
      overflow: hidden;
    }
    /* 이미지 크기 맞추기(item에 적용) */
    .fit-cover {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
	</style>
      <section class="container pt-5 pb-sm-3 mt-5 mb-2 mb-md-3 mb-lg-4 mb-xxl-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Portfolio list v.2</li>
          </ol>
        </nav>
        <!-- Page title-->
        <div class="d-flex align-items-center justify-content-end mb-4 pb-3">
          <div class="me-auto">
            <h1 class="me-3">휴양림</h1>
          </div>
		<!-- 검색창 -->
		<div class="col-md-5 mb-5 mt-3">
			<form name="searchForm" action="${path}/forestLodgeList" method="get">
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
        
        <!-- Item-->
        <c:forEach var="flList" items="${forestLodgeList}">
        <div class="row align-items-center pt-xl-2 pb-5 mb-lg-2 mb-xl-3 mb-xxl-4">
          <div class="col-md-6 col-lg-6 mb-4 mb-md-0">
            <a class="d-block position-relative image-container" href="portfolio-single-v1.html">
              <div class="rounded-5 position-absolute top-0 start-0 w-100 h-100" style="background-color: #d7e4f4;"
                   data-aos="zoom-in" data-aos-duration="600" data-aos-offset="250"></div>
              <img class="d-block position-relative zindex-2 mx-auto rounded-5 fit-cover"
                   src="${flList.firstimage}" width="636" alt="Image" data-aos="fade-in"
                   data-aos-duration="400" data-aos-offset="250">
            </a>
          </div>
          
          <div class="col-md-5 col-xl-5" data-aos="fade-up" data-aos-duration="400" data-aos-offset="170" style="padding-left: 60px;">
            <div class="ps-md-3 ps-lg-0">
              <div class="d-flex align-items-center">
                <h2 class="h4">${flList.title}</h2>
                <button type="button" class="btn btn-outline-info btn-icon rounded-pill btn-sm ms-auto mb-4">
                  <i class="ai ai-bookmark"></i>
                </button>
              </div>
              <p class="fs-sm pb-1 pb-lg-1 mb-1">${flList.overview}</p>
              <div class="d-flex align-items-center pt-2 pt-lg-3 mt-1">
                <h6 class="stext-body mb-0 me-3"><i class="ai ai-compass "></i> 주소:</h6>
                <p class="mb-0">${flList.addr1}</p>
              </div>
              <div class="d-flex align-items-center pt-2 pt-lg-3 mt-1">
                <h6 class="stext-body mb-0 me-3"><i class="ai ai-phone-call"></i> 전화번호:</h6>
                <p class="mb-0">${flList.infocenter}</p>
              </div>
              <a class="btn btn-sm btn-outline-dark rounded-pill mt-4" href="${path}/arboretumDetail?id=${flList.contentid}">더 알아보기</a>
            </div>
          </div>
        </div>
        </c:forEach>
        
<!-- Pagination-->
		<div class="col-12 pt-sm-4 mt-md-2 text-end">
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
										<button class="page-link"
											onclick="movePage(${status.current})">${status.current}</button>
									</li>
								</c:if>
							</c:forEach>

							<!-- 다음 페이지 -->
							<li class="page-item">
								<button class="page-link"
									onclick="movePage(${pageInfo.nextPage})">&gt;</button>
							</li>
							<!-- 마지막 페이지 -->
							<li class="page-item">
								<button class="page-link"
									onclick="movePage(${pageInfo.maxPage})">&gt;&gt;</button>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
      </section>
    </main>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script type="text/javascript">
	function movePage(page) {
	    searchForm.page.value = page;
	    searchForm.submit();
	}
	
	function submitSearchForm() {
	    var searchValue = document.getElementById("searchValue").value;
	    var form = document.forms["searchForm"];
	    form.action = "${path}/DryGardenSearch?searchValue=" + searchValue + "&page=1";
	    form.submit();
	}
</script>


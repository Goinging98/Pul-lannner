<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="식물분양" name="title" />
</jsp:include>

<c:set var="searchType" value="${param.searchType}" />
<c:if test="${empty searchType}">
	<c:set var="searchType" value="${'title'}" />
</c:if>

<!-- Page content-->
<div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
	<!-- Banner-->
	<div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #F2F2DF;">
		<div class="row align-items-center g-0 py-1">
			<div class="col-md-6 offset-xl-1 ">
				<div class="py-5 my-5 px-4 px-sm-5 pe-md-0 ps-xl-4" style="margin-left: 160px;">
					<p class="fs-xs  pt-3 pt-md-0 mb-3 mb-lg-4">2023.08.01 ~ 2023.08.31</p>
					<h2 class="h1 pb-2 pb-xl-3"> 구매하신 식물을 인증하면 <br><span class='text-primary'>포인트가 두배!!!</span>
					</h2>
					<a class="btn btn-sm btn-outline-dark ignore-dark-mode" href="#">리뷰 쓰러 가기</a>
				</div>
			</div>
			<div class="col-md-6 col-xl-5 d-flex justify-content-end">
				<img src="https://www.karinsflorist.com/wp-content/uploads/2019/01/Romantic-Pastels-Bouquet-2.png"
					style="position: relative; transform: rotate(1rad); margin-top: 140px; margin-right: 245px; height: 150px; width: auto;" alt="Banner"> 
				<img src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163150919176222081.png"
					style="position: absolute; margin-right: 250px; margin-top: 10px; height: 300px; width: auto;" alt="Banner">
			</div>
		</div>
	</div>
	
	<!-- Page title-->
	<div class="row pt-xl-3 mt-n1 mt-sm-0">
		<div class="col-lg-9 offset-lg-3 pt-lg-3">
			<h1 class="pb-2 pb-sm-3" style="display: inline;">식물 분양</h1>
			<c:if test="${loginMember != null }">
				<button type="button" class="btn btn-primary btn-icon" style="margin-left: 75%; margin-bottom: 1%; width: 55px; height: 55px;" onclick="location.href='${path}/selling_plant'">
					<i class="ai-edit-alt"></i>
				</button>
			</c:if>
		</div>
	</div>
	<br/><br/>
	<div class="row pb-2 pb-sm-4">
		<!-- Sidebar (offcanvas on sreens < 992px)-->
		<aside class="col-lg-3">
			<div class="offcanvas-lg offcanvas-start" id="shopSidebar">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title">Filters</h5>
					<button class="btn-close" type="button" data-bs-dismiss="offcanvas" data-bs-target="#shopSidebar"></button>
				</div>
				<div class="offcanvas-body pt-2 pt-lg-0 pe-lg-4">
					<form name="searchForm" action="${path}/Plantshop" method="get">
						<!-- 검색 -->
						<div class="col-8" style="height: 70px;">
							<input type="hidden" name="page" value="1"> 
							<label>
								<input type="radio" name="searchType" value="title"
								${searchType == 'title' ? 'checked' : ''}> 제목
							</label> 
							<label> 
								<input type="radio" name="searchType" value="content" 
								${searchType == 'content' ? 'checked' : ''}> 내용
							</label> 
							<label> 
								<input type="radio" name="searchType" value="writer" 
								${searchType == 'writer' ? 'checked' : ''}> 작성자
							</label> 
							<div class="input-group input-group-sm rounded-pill" style="width: 280px;">
								<span class="input-group-text"><i class="ai-search"></i></span>
								<input type="text" id="searchValue" name="searchValue"
									value="${param.searchValue}" class="form-control rounded"
									placeholder="검색">
								<button type="submit" class="btn btn-primary rounded-pill">검색</button>
							</div>
						</div>
						<br/><br/>
						<h3 class="h5">분양 종류</h3>
						<div class="accordion accordion-alt pb-2 mb-4" id="shopCategories">
							<!-- 식물 종류 -->
							<div class="accordion-item mb-0">
								<div class="accordion-collapse collapse show" data-bs-parent="#shopCategories">
									<div class="accordion-body py-1 mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="plant">
											<label class="form-check-label d-flex align-items-center" for="plant">
												<span class="text-nav fw-medium">식물</span>
											</label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="seed">
											<label class="form-check-label d-flex align-items-center" for="seed">
												<span class="text-nav fw-medium">씨앗</span>
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</aside>
		
		<!-- Product grid-->
		<div class="col-lg-9">
			<!-- Active filters + Sorting-->
			  
			<%-- <div class="d-flex align-items-start justify-content-between mb-4">
				<!--              <a href="/Around/03_2.html"> <button class="btn btn-lg btn-primary" type="submit">내 식물분양</button></a>
             <a href="/Around/03_3.html"> <button class="btn btn-lg btn-primary mx-3" type="submit">내 씨앗분양</button></a> -->
				<div class="input-group">
					<div class="col-8" style="height: 70px;">
						<form name="searchForm" action="${path}/Plantshop" method="get">
							<input type="hidden" name="page" value="1"> <label>
								<input type="radio" name="searchType" value="title"
								${searchType == 'title' ? 'checked' : ''}> 제목
							</label> <label> <input type="radio" name="searchType"
								value="content" ${searchType == 'content' ? 'checked' : ''}>
								내용
							</label> <label> <input type="radio" name="searchType"
								value="writer" ${searchType == 'writer' ? 'checked' : ''}>
								작성자
							</label> <input type=text id="searchValue" name="searchValue"
								class="form-control rounded" placeholder="검색어를 입력해주세요"
								aria-label="Search" aria-describedby="search-addon"
								value="${param.searchValue}" />
					</div>
					<span class="col-4">
						<button type="button" class="btn btn-outline-primary "
							style="float: right; height: 65px">검색</button>
					</span>
					</form>
				</div>
			</div> --%>
			
			<!-- 리스트 시작 -->
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
				<c:if test="${not empty list}">
					<c:forEach var="item" items="${list}">
						<!-- Item-->
						<div class="col pb-2 pb-sm-3">
							<div class="card-hover position-relative bg-secondary rounded-2 p-3 mb-4">
								<button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
									<i class="ai-heart fs-xl d-dark-mode-none"> </i> 
									<i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"> </i>
								</button>
								<div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;"
									data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
									<a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html"> <!-- Item -->
										<div class="swiper-slide rounded-2">
											<div class="rounded-2" style="background-image: url('/plant/file/${item.parcelimgedt}' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;"
												alt="Product"></div>
										</div>
									</a>
									<button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button">
										<i class="ai-chevron-left fs-xl d-dark-mode-none"></i>
										<i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i>
									</button>
									<button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button">
										<i class="ai-chevron-right fs-xl d-dark-mode-none"></i>
										<i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i>
									</button>
								</div>
							</div>
							<div class="d-flex mb-1">
								<h3 class="h6 mb-0">
									<a href="${path}/plant-parcel-out?parcelno=${item.parcelno}">
									<c:out value="${item.parceltitle}" /></a>
								</h3>
								<div class="d-flex ps-2 mt-n1 ms-auto"></div>
							</div>
							<div class="d-flex align-items-center">
								<span class="me-2"><c:out value="${item.parcelprice}" />&nbsp;원</span>
								<div class="nav ms-auto" data-bs-toggle="" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;"
									data-bs-placement="left">
									<a class="nav-link fs-lg py-2 px-1" style=" font-weight: bold;">${item.writername}</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>

			</div>
			<!-- Pagination-->
			<div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
				<!--               <div class="col col-md-4 col-6 order-md-1 order-1">
                <div class="d-flex align-items-center"><span class="text-muted fs-sm">Show</span>
                  <select class="form-select form-select-flush w-auto">
                    <option value="12">12</option>
                    <option value="18">18</option>
                    <option value="24">24</option>
                    <option value="30">30</option>
                  </select>
                </div>
              </div> -->
				<div class="col col-md-4 col-12 order-md-2 order-3 text-center">
					<!-- <button class="btn btn-primary w-md-auto w-100" type="button">Load more products</button> -->
				</div>
				<div class="col col-md-4 col-6 order-md-3 order-2">
					<nav aria-label="Page navigation">
						<ul class="pagination pagination-sm justify-content-end">
							<li class="page-item"><a href="javascript:void(0);"
								onclick="movePage(1); return false;" class="page-link">&lt;&lt;</a>
							</li>
							<li class="page-item"><a href="javascript:void(0);"
								onclick="movePage(${pageInfo.prevPage}); return false;"
								class="page-link">Prev</a></li>
							<c:forEach begin="${pageInfo.startPage}"
								end="${pageInfo.endPage}" varStatus="status" step="1">
								<c:if test="${status.current == pageInfo.currentPage}">
									<li class="page-item active" aria-current="page"><span
										class="page-link">${status.current}<span
											class="visually-hidden">(current)</span></span></li>
								</c:if>
								<c:if test="${status.current != pageInfo.currentPage}">
									<li class="page-item"><a class="page-link" href="#">${status.current}</a></li>
								</c:if>
							</c:forEach>
							<li class="page-item"><a href="javascript:void(0);"
								onclick="movePage(${pageInfo.nextPage}); return false;"
								class="page-link">Next</a></li>
							<li class="page-item"><a href="javascript:void(0);"
								onclick="movePage(${pageInfo.maxPage}); return false;"
								class="page-link">&gt;&gt;</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar">
	<i class="ai-filter me-2"></i>Filters
</button>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>

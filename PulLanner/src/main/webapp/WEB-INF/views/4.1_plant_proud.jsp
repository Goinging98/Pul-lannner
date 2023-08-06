<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- Page content-->
<div class="container pt-5 pb-md-4 pb-2 my-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
			<li class="breadcrumb-item">커뮤니티</li>
			<li class="breadcrumb-item active" aria-current="page">식물 자랑하기</li>
		</ol>
	</nav>
	<div class="row mb-md-2 mb-xl-4">

		<!-- Blog posts-->
		<div class="col-lg-9 pe-lg-4 pe-xl-5">
			<h1 class="pb-3 pb-lg-4">
				식물 자랑하기

				<!-- Button trigger modal -->
				<c:if test="${loginMember != null}">
					<button type="button" class="btn btn-secondary btn-icon"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						style="margin-left: 60%">
						<i class="ai-edit-alt"></i>
					</button>
				</c:if>

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<label class="form-label mt-3"><br />
							<h3>내 식물 자랑하기</h3></label>
							<form method="post" action="${path}/PlantProud"
								enctype="multipart/form-data">
								<input type="hidden" name="id" value="${loginMember.id}"
									readonly class="input-text"> <label class="form-label">제목</label>
								<div class="form-floating">
									<div class="form-floating">
										<input class="form-control" type="text" name="title"
											id="fl-text" placeholder="Title"> <label
											for="fl-text">Title</label>
									</div>
								</div>
								<label class="form-label">자랑글</label>
								<textarea class="form-control" name="content" id="fl-textarea"
									style="height: 100px;" placeholder="자랑해주세요!"></textarea>

								<!-- File input -->
								<div class="mb-3">
									<label for="file-input" class="form-label">첨부파일</label> <input
										class="form-control" name="upfile" type="file" id="file-input">
								</div>
								<div class="modal-footer">
									<button type="reset" class="btn btn-secondary"
										data-bs-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</h1>

			<!-- Post-->
			<c:if test="${empty list}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>

			<c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
					<article class="row g-0 border-0 mb-4 ">
						<a
							class="swiper-slide col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5"
							style="background-image: url('/proud/file/${item.renamedFileName}'); min-height: 14rem">
						</a>
						<div class="col-sm-7">
							<div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
								<h3>
									<c:out value="${item.title}"></c:out>
								</h3>
								<p class="d-sm-none d-md-block">
									<c:out value="${item.content}"></c:out>
								</p>
								<div class="d-flex flex-wrap align-items-center mt-n2">
									<button class="nav-link text-muted fs-sm fw-normal p-0 mt-2" type="button">
										<i class="ai-heart fs-xl" style="color: var(--ar-gray-500)" onclick="addLike(this, ${item.BNo})"></i>
									</button>
									<span class="fs-xs opacity-20 mt-2 mx-3">|</span> <span
										class="fs-sm text-muted mt-2"><fmt:formatDate
											type="both" dateStyle="full" value="${item.createDate}" /></span> <span
										class="fs-xs opacity-20 mt-2 mx-3">|</span> <a
										class="badge text-nav fs-xs border mt-2" href="#">"${item.name}"</a><span
										class="fs-xs opacity-20 mt-2 mx-3">|</span>
										<c:if	test="${!empty loginMember && (loginMember.id == item.id || loginMember.role == 'ROLE_ADMIN') }">
											<button type="button" id="btnDelete" class="btn btn-icon btn-sm btn-outline-danger rounded-circle">
												<i class="ai-trash"></i>
											</button>
										</c:if>
								</div>
							</div>
						</div>
					</article>
				</c:forEach>
			</c:if>

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
								<button class="page-link"
									onclick="movePage(${pageInfo.prevPage})">&lt;</button>
							</li>
							<!-- 10개 페이지가 보여지는 부분 -->
							<c:forEach begin="${pageInfo.startPage}"
								end="${pageInfo.endPage}" varStatus="status" step="1">
								<c:if test="${status.current == pageInfo.currentPage}">
									<li class="page-item active" aria-current="page">
										<button class="page-link" disabled>${status.current}</button>
									</li>
								</c:if>
								<c:if test="${status.current != pageInfo.currentPage}">
									<button class="page-link" onclick="movePage(${status.current})">${status.current}</button>
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

		<!-- Sidebar (offcanvas on sreens < 992px)-->
		<aside class="col-lg-3">
			<form name="searchForm" action="${path}/PlantProud" method="get">
				<input type="hidden" name="page" value="1">
				<div class="offcanvas-lg offcanvas-end" id="sidebarBlog">
					<div class="offcanvas-header">
						<h4 class="offcanvas-title">Sidebar</h4>
						<button class="btn-close ms-auto" type="button"
							data-bs-dismiss="offcanvas" data-bs-target="#sidebarBlog"></button>
					</div>
					<div class="offcanvas-body">
						<!-- Search box-->
						<div class="position-relative mb-4 mb-lg-5">
							<label> <input type="radio" name="searchType"
								value="title" ${searchType == 'title' ? 'checked' : ''}>
								제목
							</label> <label> <input type="radio" name="searchType"
								value="content" ${searchType == 'content' ? 'checked' : ''}>
								내용
							</label> <label> <input type="radio" name="searchType"
								value="name" ${searchType == 'name' ? 'checked' : ''}>
								작성자
							</label>
							<div class="input-group input-group-sm rounded-pill">
								<span class="input-group-text"> <i class="ai-search"></i></span>
								<input type="search" id="searchValue" name="searchValue"
									value="${param.searchValue}" class="form-control"
									placeholder="검색">
								<button type="submit" class="btn btn-primary rounded-pill">검색</button>
							</div>
						</div>
						<!-- Category links-->
						<h4 class="pt-1 pt-lg-0 mt-lg-n2">커뮤니티</h4>
						<ul class="nav flex-column mb-lg-5 mb-4">
							<li class="mb-2"><a class="nav-link d-flex p-0 active"
								href="${path}/PlantProud">식물 자랑하기<span
									class="fs-sm text-muted ms-2">(${proudBoardCount})</span></a></li>
							<li class="mb-2"><a class="nav-link d-flex p-0"
								href="${path}/HoneyTip/list">식물 기르기 꿀팁<span
									class="fs-sm text-muted ms-2">(${honeyBoardCount})</span></a></li>
						</ul>

						<!-- Featured posts widget-->
						<h4 class="pt-3 pt-lg-0 pb-1">인기글</h4>
						<div class="mb-lg-5 mb-4">
							<article class="position-relative d-flex align-items-center mb-4">
								<img class="rounded"
									src="resources/assets/img/blog/sidebar/01.jpg" width="92"
									alt="Post image">
								<div class="ps-3">
									<h4 class="h6 mb-2">
										<a class="stretched-link" href="blog-single-v1.html">Instagram
											trends that will definitely work</a>
									</h4>
									<span class="fs-sm text-muted">13 hours ago</span>
								</div>
							</article>
							<article class="position-relative d-flex align-items-center mb-4">
								<img class="rounded"
									src="resources/assets/img/blog/sidebar/02.jpg" width="92"
									alt="Post image">
								<div class="ps-3">
									<h4 class="h6 mb-2">
										<a class="stretched-link" href="blog-single-v2.html">A
											session with a psychologist</a>
									</h4>
									<span class="fs-sm text-muted">May 12, 2022</span>
								</div>
							</article>
							<article class="position-relative d-flex align-items-center">
								<img class="rounded"
									src="resources/assets/img/blog/sidebar/03.jpg" width="92"
									alt="Post image">
								<div class="ps-3">
									<h4 class="h6 mb-2">
										<a class="stretched-link" href="blog-single-v3.html">How
											to look for inspiration for new goals</a>
									</h4>
									<span class="fs-sm text-muted">June 10, 2022</span>
								</div>
							</article>
						</div>
						<!-- Banner-->
						<div class="position-relative mb-3">
							<div
								class="ignore-dark-mode position-absolute w-100 text-center top-0 start-50 translate-middle-x pt-4"
								style="max-width: 15rem;">
								<h3 class="h2 pt-3 mb-0">Your banner here!</h3>
							</div>
							<img class="rounded-5"
								src="resources/assets/img/blog/sidebar/banner.jpg" alt="Banner">
						</div>
					</div>
				</div>
			</form>
		</aside>
	</div>
</div>
<!-- Sidebar toggle button-->
<button
	class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom"
	data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog">
	<i class="ai-layout-column me-2"></i>Sidebar
</button>



<!-- Back to top button-->
<a class="btn-scroll-top" href="#top" data-scroll> <svg
		viewBox="0 0 40 40" fill="currentColor"
		xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor"
			stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>

<!-- Vendor scripts: js libraries and plugins-->
<script
	src="resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="resources/assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="resources/assets/js/theme.min.js"></script>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
	
	$(document).ready(() => {
		$("#btnUpdate").click((e) => {
			location.href = "${path}/PlantProud/update?no=${proudBoard.BNo}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/PlantProud/delete?proudBoardNo=${proudBoard.BNo}");
			}
		});
	});
	
	function fileDownload(oriname, rename) {
		const url = "/board/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
	
	function addLike(proudLike, bno) {
		console.log('bno: ', bno);
		var $proudLike = $(proudLike)
		$.ajax({
			type: "POST",
			url: "/PlantProud/Like",
			data: JSON.stringify({proudBoardNo: bno}),
			dataType: "json",
			contentType: "application/json;charset=UTF-8",
			success: function (response){
				alert(response.message);
				
				if(response.message === "좋아요 성공!"){
					$proudLike.attr("class", "ai-heart-filled fs-xl");
					$proudLike.css("color", "var(--ar-warning)");
				}
				if(response.message === "좋아요를 취소합니다!"){
					$proudLike.attr("class", "ai-heart fs-xl");
					$proudLike.css("color", "var(--ar-gray-500)");
				}
			},
			error: function (xhr, status, error){
				console.log("에러 발생:" , error);
			}
		});
	}
	
</script>












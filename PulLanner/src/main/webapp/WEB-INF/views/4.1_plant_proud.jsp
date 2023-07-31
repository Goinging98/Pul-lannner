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
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">내 식물 자랑하기</li>
          </ol>
        </nav>
        <div class="row mb-md-2 mb-xl-4">
        
          <!-- Blog posts-->
          <div class="col-lg-9 pe-lg-4 pe-xl-5">
			<h1 class="pb-3 pb-lg-4">
				내 식물 자랑하기

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-secondary btn-icon" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left: 60%">
					<i class="ai-edit-alt"></i>
				</button>

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<label class="form-label mt-3">
								<h3>글쓰기</h3>
							</label>
							<form method="post" action="${path}/PlantProud" enctype="multipart/form-data">
							<input type="hidden" name="id" value="${loginMember.id}" readonly class="input-text">
							<label class="form-label">제목</label>
							<div class="form-floating">
					        	<div class="form-floating">
					            	<input class="form-control" type="text" name="title" id="fl-text" placeholder="Title">
					              		<label for="fl-text">Title</label>
					        	</div>
							</div>
							<label class="form-label">내용</label>
							<textarea class="form-control" name="content" id="fl-textarea" style="height: 100px;" placeholder="자랑해주세요!"></textarea>
							<!-- File input -->
					        <div class="mb-3">
					          <label for="file-input" class="form-label">첨부파일</label>
					          <input class="form-control" type="file" id="file-input">
					        </div>
							<div class="modal-footer">
								<button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="submit" class="btn btn-primary">등록</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</h1>


        	<c:if test="${empty list}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			
			<!-- Post-->
			<c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
					<article class="row g-0 border-0 mb-4 ">
					<a class="swiper-slide col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5"
              style="background-image: url(assets/img/blog/list/01.jpg); min-height: 14rem">
					<c:if test="${not empty board.originalFileName 
								and (fn:contains(board.originalFileName,'.jpg')
									 or fn:contains(board.originalFileName,'.png')
									  or fn:contains(board.originalFileName,'.jpeg'))}">
							<img src="${path}/resources/static/upload/board/${board.renamedFileName}"
								width="100%" height="100%"/>
				</c:if>
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
									<a class="nav-link text-muted fs-sm fw-normal p-0 mt-2" href="#">${item.readCount}<i class="ai-heart fs-lg ms-1" ></i></a>
									<span class="fs-xs opacity-20 mt-2 mx-3">|</span>
									<span class="fs-sm text-muted mt-2"><fmt:formatDate type="date" value="${item.createDate}" /></span>
									<span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">"${item.name}"</a>
								</div>
							</div>
						</div>
					</article>
				</c:forEach>
			</c:if>




			<!-- Pagination-->
            <div class="row gy-3 align-items-center mt-lg-5 pt-2 pt-md-4 pt-lg-0">
              <div class="col col-md-4 col-6 order-md-1 order-1">
              </div>
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
					<!-- 10개 페이지가 보여지는 부분 -->
					<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
						<c:if test="${status.current == pageInfo.currentPage}">
							<button class="page-link" disabled>${status.current}</button>
						</c:if>
						<c:if test="${status.current != pageInfo.currentPage}">
							<button class="page-link" onclick="movePage(${status.current})">
								${status.current}
							</button>
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
          
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3">
          	<form name="searchForm" action="${path}/PlantProud" method="get">
          	<input type="hidden" name="page" value="1">
            <div class="offcanvas-lg offcanvas-end" id="sidebarBlog">
              <div class="offcanvas-header">
                <h4 class="offcanvas-title">Sidebar</h4>
                <button class="btn-close ms-auto" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarBlog"></button>
              </div>
              <div class="offcanvas-body">
                <!-- Search box-->
                <div class="position-relative mb-4 mb-lg-5">
                <label>
					<input type="radio" name="searchType" value="title" 
									${searchType == 'title' ? 'checked' : ''}> 제목
				</label>
				<label>
					<input type="radio" name="searchType" value="content" 
									${searchType == 'content' ? 'checked' : ''}> 내용
				</label>
				<label>
					<input type="radio" name="searchType" value="name" 
									${searchType == 'name' ? 'checked' : ''}> 작성자
				</label>
                <i class="ai-search position-absolute top-50 bottom-50 start-0 translate-middle-y ms-3"></i>
                  <input class="form-control ps-5" type="text" id="searchValue" name="searchValue" class="input_text" value="${param.searchValue}" placeholder="search"/>
                </div>
                <!-- Category links-->
                <h4 class="pt-1 pt-lg-0 mt-lg-n2">Categories:</h4>
                <ul class="nav flex-column mb-lg-5 mb-4">
                  <li class="mb-2"><a class="nav-link d-flex p-0 active" href="${path}/PlantProud">내 식물 자랑하기<span class="fs-sm text-muted ms-2">(${proudBoardCount})</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="${path}/HoneyTip">기르기 꿀팁<span class="fs-sm text-muted ms-2">(${honeyBoardCount})</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="${path}/Observe">관찰일지<span class="fs-sm text-muted ms-2">(${observeBoardCount})</span></a></li>
                </ul>

                <!-- Featured posts widget-->
                <h4 class="pt-3 pt-lg-0 pb-1">인기글</h4>
                <div class="mb-lg-5 mb-4">
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="resources/assets/img/blog/sidebar/01.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v1.html">Instagram trends that will definitely work</a></h4><span class="fs-sm text-muted">13 hours ago</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="resources/assets/img/blog/sidebar/02.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v2.html">A session with a psychologist</a></h4><span class="fs-sm text-muted">May 12, 2022</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center"><img class="rounded" src="resources/assets/img/blog/sidebar/03.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v3.html">How to look for inspiration for new goals</a></h4><span class="fs-sm text-muted">June 10, 2022</span>
                    </div>
                  </article>
                </div>
                <!-- Social buttons-->
                <h4 class="pt-3 pt-lg-0 pb-1">Join us:</h4>
                <div class="mt-n3 ms-n3 mb-lg-5 mb-4 pb-3 pb-lg-0"><a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle mt-3 ms-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mt-3 ms-3" href="#"><i class="ai-facebook"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-telegram rounded-circle mt-3 ms-3" href="#"><i class="ai-telegram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-twitter rounded-circle mt-3 ms-3" href="#"><i class="ai-twitter"></i></a></div>
                <!-- Banner-->
                <div class="position-relative mb-3">
                  <div class="ignore-dark-mode position-absolute w-100 text-center top-0 start-50 translate-middle-x pt-4" style="max-width: 15rem;">
                    <h3 class="h2 pt-3 mb-0">Your banner here!</h3>
                  </div><img class="rounded-5" src="resources/assets/img/blog/sidebar/banner.jpg" alt="Banner">
                </div>
              </div>
            </div>
            </form>
          </aside>
        </div>
      </div>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
		
		
    
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
      
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
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
			location.href = "${path}/board/update?no=${board.BNo}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?no=${board.BNo}");
			}
		});
	});
	
	function fileDownload(oriname, rename) {
		const url = "/board/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
</script>
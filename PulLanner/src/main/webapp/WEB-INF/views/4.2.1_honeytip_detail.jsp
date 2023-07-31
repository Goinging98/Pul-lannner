<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

      <!-- Page content-->
      <!-- Container-->
      <section class="container pt-5 mt-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="blog-grid-sidebar.html">기르기 꿀팁</a></li>
            <li class="breadcrumb-item active" aria-current="page">글보기</li>
          </ol>
        </nav>
        <div class="row">
          <div style="padding-left: 100px; padding-right: 100px;">
            <!-- Post title + post meta-->
            
            <h1 class="pb-2 pb-lg-3"><c:out value="${honeyBoard.title}"/>
              <button type="button" class="btn btn-outline-info btn-icon rounded-pill" style="float:right; margin-left:20px" data-bs-toggle="tooltip" data-bs-placement="top" title="즐겨찾기">
                <i class="ai-bookmark"></i>
              </button>
              <button type="button" class="btn btn-secondary btn-icon" style="float:right" data-bs-toggle="tooltip" data-bs-placement="top" title="수정하기">
                <i class="ai-edit-alt"></i>
              </button>
            </h1>
            <div class="d-flex flex-wrap align-items-center justify-content-between border-bottom mb-4">
              <div class="d-flex align-items-center mb-4 me-4"><span class="fs-sm me-2">By:</span><a class="nav-link position-relative fw-semibold p-0" href="#author" data-scroll data-scroll-offset="80">${honeyBoard.name}<span class="d-block position-absolute start-0 bottom-0 w-100" style="background-color: currentColor; height: 1px;"></span></a></div>
            </div>
            <!-- Post content-->
            
            <!-- Slider with fade transition between slides -->
            <div class="swiper" data-swiper-options='{
              "effect": "fade",
              "loop": true,
              "navigation": {
                "prevEl": ".btn-prev",
                "nextEl": ".btn-next"
              }
            }'>
              <div class="swiper-wrapper">

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-info">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">First</div>
                  </div>
                </div>

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-danger">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">Second</div>
                  </div>
                </div>

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-warning">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">Third</div>
                  </div>
                </div>
              </div>

              <!-- Prev button -->
              <button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle">
                <i class="ai-arrow-left"></i>
              </button>

              <!-- Next button -->
              <button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle">
                <i class="ai-arrow-rigsht"></i>
              </button>
            </div>
            <p class="fs-lg pt-2 pt-sm-3">${honeyBoard.content}</p>
            <hr>
            
            <!-- Comments-->
            <div class="pt-4 pt-xl-5 mt-4" id="comments">
              <h2 class="h1 py-lg-1 py-xl-3">comments</h2>
              
              <!-- 리플출력 -->
				<c:if test="${!empty honeyReplyList}">
					<c:forEach var="reply" items="${honeyReplyList}">
						<div class="border-bottom pt-3 pb-2">
							<div class="d-flex align-items-center pb-1 mb-3">
								<img class="rounded-circle" src="/resources/assets/img/avatar/08.jpg"
									width="48" alt="Comment author">
								<div class="ps-3">
									<h6 class="mb-0">${reply.id}</h6>
									<span class="fs-sm text-muted"><fmt:formatDate type="both" value="${reply.createDate}" /></span>
								</div>
							</div>
							<p class="pb-2 mb-0">${reply.content}</p>
							<c:if	test="${!empty loginMember && (loginMember.id == reply.id 	|| loginMember.role == 'ROLE_ADMIN') }">
								<button class="btn-delete"	onclick="deleteHoneyReply('${reply.RNo}','${honeyBoard.BNo}');">삭제</button>
							</c:if>
						</div>
					</c:forEach>
				</c:if>


				<!-- All comments button-->
              <div class="text-end pb-5 mb-lg-1 mb-xl-3"><a class="btn btn-link px-0" href="#">Show all comments<i class="ai-chevron-right fs-lg ms-1"></i></a></div>
              
              <!-- 리플 작성 form-->
              
              <div class="card border-0 bg-secondary pt-2 p-md-2 p-xl-3 p-xxl-4 mt-n3 mt-md-2">
                <div class="card-body">
                  <h2 class="pb-2 pb-lg-3 pb-xl-4">Leave a comment</h2>
                  <form class="row needs-validation g-4" action="${path}/HoneyTip/reply" method="post" novalidate>
                    <div class="col-12">
                      <label class="form-label" for="c-comment">Comment</label>
	                  <input type="hidden" name="BNo" value="${honeyBoard.BNo}" />
	                  <input type="hidden" name="id" value="${loginMember.id}" />
                      <textarea class="form-control"  name="content" id="replyContent" rows="4" placeholder="Type your comment here..." required id="c-comment"></textarea>
                      <div class="invalid-feedback">Please enter a comment message!</div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary" type="submit" id="btn-insert">Post a comment</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />


<script type="text/javascript">
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
	
	function deleteHoneyReply(honeyReplyNo, honeyBoardNo){
		var url = "${path}/HoneyTip/replyDel?RNo=";
		var requestURL = url + honeyReplyNo +"&BNo=" + honeyBoardNo;
		location.replace(requestURL);
	}
	
	function fileDownload(oriname, rename) {
		const url = "/board/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
</script>
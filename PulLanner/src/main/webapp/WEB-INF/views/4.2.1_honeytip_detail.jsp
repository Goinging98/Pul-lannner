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
            <li class="breadcrumb-item">커뮤니티</li>
            <li class="breadcrumb-item"><a href="${path}/HoneyTip/list">식물 기르기 꿀팁</a></li>
            <li class="breadcrumb-item active" aria-current="page">글보기</li>
          </ol>
        </nav>
        <div class="row">
          <div style="padding-left: 100px; padding-right: 100px;">
            <!-- Post title + post meta-->
            
            <h1 class="pb-2 pb-lg-3"><c:out value="${honeyBoard.title}"/>
              <button type="button" class="btn btn-outline-info btn-icon rounded-pill" style="float:right; margin-left:20px" data-bs-toggle="tooltip" data-bs-placement="top" title="즐겨찾기" onclick="location.href='${path}/scrapwriting?num=${honeyBoard.BNo}'">
                <i class="ai-bookmark"></i>
              </button>
            <c:if test="${not empty loginMember && (loginMember.id == honeyBoard.id 
									|| loginMember.role == 'ROLE_ADMIN')}">
              <button type="button" id="btnDelete" class="btn btn-outline-danger btn-icon" style="float:right; margin-left:20px" data-bs-toggle="tooltip" data-bs-placement="top" title="삭제하기">
				<i class="ai-trash"></i>
			  </button>
              <button type="button" id="btnUpdate" class="btn btn-secondary btn-icon" onclick="location.href='${path}/HoneyTip/update'" style="float:right" data-bs-toggle="tooltip" data-bs-placement="top" title="수정하기">
                <i class="ai-edit-alt"></i>
              </button>
              </c:if>
            </h1>
            <div class="d-flex flex-wrap align-items-center justify-content-between border-bottom mb-4">
              <div class="d-flex align-items-center mb-4 me-4"><span class="fs-sm me-2">By:</span>
              	<a class="nav-link position-relative fw-semibold p-0" href="#author" data-scroll data-scroll-offset="80">${honeyBoard.name}<span class="d-block position-absolute start-0 bottom-0 w-100" style="background-color: currentColor; height: 1px;"></span></a></div>
            </div>
            <!-- Post content-->
            
            <!-- Slider with fade transition between slides -->
            <c:if test="${not empty honeyBoard.renamedFileName}">
            <div class="col-12 image-container" style="display: flex; justify-content: center;">
            <img src="honey/file/${honeyBoard.renamedFileName}" class="d-block rounded-5 fit-cover" style="text-align: center; width: 500px;">
            </div>
            </c:if>
            <p class="fs-lg pt-2 pt-sm-3">${honeyBoard.content}</p>
            <hr>
            
            <!-- Comments-->
            <div class="pt-4 pt-xl-5 mt-4" id="comments">
              <h2 class="h1 py-lg-1 py-xl-3">댓글</h2>
              
              <!-- 리플출력 -->
				<c:if test="${!empty honeyReplyList}">
					<c:forEach var="reply" items="${honeyReplyList}">
						<div class="border-bottom pt-3 pb-2">
							<div class="d-flex align-items-center pb-1 mb-3">
								<div class="ps-3">
									<h6 class="mb-0">${reply.name}
										<c:if	test="${!empty loginMember && (loginMember.id == reply.id || loginMember.role == 'ROLE_ADMIN') }">
											<button type="button" class="btn btn-icon btn-sm btn-outline-danger rounded-circle">
												<i class="ai-trash" onclick="deleteHoneyReply('${reply.RNo}','${honeyBoard.BNo}');"></i>
											</button>
										</c:if>
									</h6>
									<span class="fs-sm text-muted"><fmt:formatDate
											type="both" value="${reply.createDate}" /></span>
								</div>
							</div>
							<p class="pb-2 ps-3 mb-0">${reply.content}</p>
						</div>
					</c:forEach>
				</c:if>


				<!-- All comments button-->
              <!-- <div class="text-end pb-5 mb-lg-1 mb-xl-3"><a class="btn btn-link px-0" href="#">Show all comments<i class="ai-chevron-right fs-lg ms-1"></i></a></div> -->
              
              <!-- 리플 작성 form-->
              
              <div class="card border-0 bg-secondary pt-2 p-md-2 p-xl-3 p-xxl-4 mt-n3 mt-md-2 mb-2">
                <div class="card-body">
                  <h2 class="pb-2 pb-lg-3 pb-xl-4">댓글 남기기</h2>
                  <form class="row needs-validation g-4" action="${path}/HoneyTip/reply" method="post" novalidate>
                    <div class="col-12">
                      <label class="form-label" for="c-comment">댓글</label>
	                  <input type="hidden" name="BNo" value="${honeyBoard.BNo}" />
	                  <input type="hidden" name="id" value="${loginMember.id}" />
	                  <input type="hidden" name="name" value="${loginMember.name}" />
                      <textarea class="form-control"  name="content" id="replyContent" rows="4" placeholder="Type your comment here..." required id="c-comment"></textarea>
                      <div class="invalid-feedback">댓글을 남겨주세요</div>
                    </div>
                    <div class="col-12">
                    <c:if test="${loginMember != null}">
                      <button class="btn btn-primary" type="submit" id="btn-insert">등록하기</button>
                      </c:if>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <br/><br/><br/><br/><br/><br/>

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
			location.href = "${path}/HoneyTip/update?no=${honeyBoard.BNo}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/HoneyTip/delete?honeyBoardNo=${honeyBoard.BNo}");
			}
		});
	});
	
	function deleteHoneyReply(honeyReplyNo, honeyBoardNo){
		var url = "${path}/HoneyTip/replyDel?honeyReplyNo=";
		var requestURL = url + honeyReplyNo +"&honeyBoardNo=" + honeyBoardNo;
		location.replace(requestURL);
	}
	
	function fileDownload(oriname, rename) {
		const url = "/board/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
</script>
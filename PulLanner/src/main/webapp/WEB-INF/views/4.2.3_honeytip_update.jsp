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
            <li class="breadcrumb-item"><a href="${path}/HoneyTip/list">기르기 꿀팁</a></li>
            <li class="breadcrumb-item active" aria-current="page">글 수정하기</li>
          </ol>
        </nav>
        
        <!-- 글 수정하기 -->
        <div class="row">
          <div style="padding-left: 100px; padding-right: 100px;">
        <form action="${path}/HoneyTip/update" method="post" enctype="multipart/form-data" >
        <input type="hidden" name="BNo" value="${honeyBoard.BNo}">
        <input type="hidden" name="originalFileName" value="${honeyBoard.originalFileName}" />
		<input type="hidden" name="renamedFileName" value="${honeyBoard.renamedFileName}" />
            <h1 class="pb-2 pb-lg-3">글쓰기</h1>
            <div class="mb-3">
              <label class="form-label">제목</label>
              <input class="form-control" type="text" name="title" id="fl-text" placeholder="Title" value="${honeyBoard.title}"> 
            </div>
            
            <!-- File input -->
            <div class="mb-3">
              <label for="file-input" class="form-label">사진</label>
              <input class="form-control" name="reloadFile" type="file" id="file-input">
              <c:if test="${!empty honeyBoard.originalFileName}"><br>
						현재 업로드 파일 :
						<a>
							${honeyBoard.originalFileName}
						</a>
					</c:if>
            </div>
            
            <!-- Textarea -->
            <div class="mb-3">
              <label for="textarea-input" class="form-label">내용</label>
              <textarea class="form-control" name="content" id="fi-textarea" rows="20" placeholder="꿀팁을 작성해주세요">${honeyBoard.content}</textarea>
            </div>
            <button type="submit" class="btn btn-primary" style="float:right;">수정</button>
            <input class="btn btn-primary" type="button" onclick="location.replace('${path}/HoneyTip/list')" value="목록으로">
        </form>
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
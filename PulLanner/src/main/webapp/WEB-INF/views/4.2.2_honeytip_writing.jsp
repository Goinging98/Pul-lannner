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
            <li class="breadcrumb-item active" aria-current="page">글쓰기</li>
          </ol>
        </nav>
        <div class="row">
          <div style="padding-left: 100px; padding-right: 100px;">
            <h1 class="pb-2 pb-lg-3">글쓰기</h1>
            <div class="mb-3">
              <label for="text-input" class="form-label">Title</label>
              <input class="form-control" type="text" id="text-input" value="title">
            </div>
            <!-- File input -->
            <div class="mb-3">
              <label for="file-input" class="form-label">File</label>
              <input class="form-control" type="file" id="file-input">
            </div>
            <!-- Textarea -->
            <div class="mb-3">
              <label for="textarea-input" class="form-label">Content</label>
              <textarea class="form-control" id="textarea-input" rows="20">꿀팁을 작성해주세요</textarea>
            </div>
            <button type="button" class="btn btn-primary" style="float:right;">등록</button>
          </div>
        </div>
      </div>
    </section>
  </main>

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
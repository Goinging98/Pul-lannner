<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
  <!-- Body-->
  <body>
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper">
      <!-- Page content-->
      <div class="d-flex flex-column position-relative h-100 pt-5">
        <!-- Home button--><a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 zindex-2 p-0 mt-3 me-3 mt-sm-4 me-sm-4" href="index.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Back to home"><i class="ai-home"></i></a>
        <div class="container mt-auto">
          <div class="row align-items-center">
            <!-- Sign in form-->
            <div class="col-md-3 mb-5 mb-md-0">
              
               
              
            </div>
            <div class="col-md-5 col-xl-5 offset-xl-1">
              <div class="ps-md-3 ps-lg-5 ps-xl-0">

                <style>
                
                  .btn-group {
                    margin-bottom: 10px; 
                  }
                </style>
                
                <style>
                  .h1.pb-2.pb-lg-3 {
                    font-size: 25px; 
                    font-weight: bold;
                  }
                </style>

                <div class="col-md-5 col-xl-5 offset-xl-1">
                  <div class="ps-md-3 ps-lg-5 ps-xl-0">
                    <h2 class="h1 pb-2 pb-lg-3">풀래너 간편히 기록하기</h2>
                    <form class="needs-validation" novalidate>
                      <div class="btn-group">
                        <button type="button" class="btn btn-outline-primary">환기하기</button>
                        <button type="button" class="btn btn-outline-primary">물주기</button>
                        <button type="button" class="btn btn-outline-primary">분무하기</button>
                      </div>
                      <div class="btn-group">
                        <button type="button" class="btn btn-outline-primary">가지치기</button>
                        <button type="button" class="btn btn-outline-primary">분갈이하기</button>
                      </div>
                      <div class="btn-group">
                        <button type="button" class="btn btn-outline-primary">영양관리</button>
                      </div>
                    </form>
                  </div>
                </div>
                
                <h2 class="h1 pb-2 pb-lg-3"></h2>
                <h3>메모하기</h3>
                <h4>어느날짜로 기록해드릴까요?</h4>
            <style>
              h3 {
                  font-size: 23px;
                  font-weight: bold;

              }
      
              h4 {
                  font-size: 18px;
                  font-weight: bold;

              }
          </style>
            
               <div class="row row-cols-1 row-cols-sm-2 row-cols-md-1 row-cols-lg-2">
                
                    <div class="col mb-4">
                      
                   
                    <!-- Date picker -->
                    <div class="position-relative">
                    <input class="form-control date-picker pe-5" type="text" placeholder="Choose date" data-datepicker-options='{"altInput": true, "altFormat": "F j, Y", "dateFormat": "Y-m-d"}'>
                     <i class="ai-calendar position-absolute top-50 end-0 translate-middle-y me-3"></i>
                     </div>
                   
                    </div>
                  </div>

                  <h5>본문</h5>

                   <textarea class="form-control" id="textarea-input" rows="5"></textarea>
                    </div>
                  <div class="pb-4">
                    <div class="form-check my-2">
                      
      
                    </div>
                  </div>
                  <!-- 폼 -->
                  <style>
                    /* Custom CSS for decreasing font size */
                    .h1.pb-2.pb-lg-3 {
                      font-size: 20px; /* Adjust the font size as per your requirement */
                      font-weight: bold;
                    }
                  </style>
                  
                  <div class="d-flex justify-content-end">
                    <button class="btn btn-lg btn-primary w-50 mb-4" type="submit">제출</button>
                  </div>
                  
                 </div>
        <!-- Copyright
        <div class="container fs-sm pt-5 mt-auto mb-5"><span class="text-muted">&copy; All rights reserved. Made by</span><a class="nav-link d-inline-block p-0 ms-1" href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></div>
      </div>-->
    </main>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
  <jsp:include page="/WEB-INF/views/common/footer.jsp" />

</html>
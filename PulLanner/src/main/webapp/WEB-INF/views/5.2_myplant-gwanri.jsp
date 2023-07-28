<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

      <!-- Page content-->
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
         
          
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <h1 class="h2 mb-4">식물관리</h1>
            <!-- Basic info-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4"style="max-width: 1000px;">
              <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">내 식물 등록하기</h2>
                </div>
                <div class="d-flex align-items-center">
                  <div class="dropdown">
                    <label for="profile-picture" class="d-flex flex-column justify-content-end position-relative overflow-hidden rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 80px; height: 80px; background-image: url(assets/img/avatar/36.jpg);">
                      <span class="d-block text-light text-center lh-1 pb-1" style="background-color: rgba(0,0,0,.5)"><i class="ai-camera"></i></span>
                    </label>
                    <input type="file" id="profile-picture" style="display: none;">
                    <div class="dropdown-menu my-1">
                      <a class="dropdown-item fw-normal" href="#" onclick="handleUploadClick()"><i class="ai-camera fs-base opacity-70 me-2"></i>Upload new photo</a>
                      <a class="dropdown-item text-danger fw-normal" href="#" onclick="handleDeleteClick()"><i class="ai-trash fs-base me-2"></i>Delete photo</a>
                    </div>
                  </div>
                  <div class="ps-3">
                    <h3 class="h6 mb-1">무민</h3>
                    <p class="fs-sm text-muted mb-0">PNG or JPG no bigger than 1000px wide and tall.</p>
                  </div>
                </div>
                <div class="row g-3 g-sm-4 mt-0 mt-lg-2">
                  <div class="col-sm-6">
                    <label class="form-label" for="fn">키우기 시작한 날</label>
                    <input class="form-control" type="text" id="fn" placeholder="choose date">
                  </div>
                  
                 <!-- 달력 추가하기 (j.son으로 설정하는것같음) 물어볼것 <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
                  <script>
                    flatpickr("#fn", {
                      enableTime: false, // 시간 선택 비활성화
                      dateFormat: "Y-m-d", // 날짜 형식 지정
                      placeholder: "choose date" // 플레이스홀더 텍스트
                    });
                  </script> -->
                  <div class="col-sm-6">
                    <label class="form-label" for="ln">마지막 물 준 날</label>
                    <input class="form-control" type="text" placeholder="choose date" id="ln">
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="email">애칭</label>
                    <input class="form-control" type="text" placeholder="애칭을 입력해주세요" id="email">
                  </div>
                  <div class="col-sm-6">
                   <!-- <label class="form-label" for="phone">Phone <span class='text-muted'>(optional)</span></label>
                    <input class="form-control" type="tel" data-format="{&quot;numericOnly&quot;: true, &quot;delimiters&quot;: [&quot;+1 &quot;, &quot; &quot;, &quot; &quot;], &quot;blocks&quot;: [0, 3, 3, 2]}" placeholder="+1 ___ ___ __" id="phone">
                  --></div> 
                  <div class="col-sm-6">
                    <label class="form-label" for="country">어느 화분에서 키우고 있나요?</label>
                    <input class="form-control" type="text" value="" id="email">

                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="language">빛을 어떻게 받고 있나요?</label>
                    <select class="form-select" id="language">
                      <option value="" selected disabled>선택</option>
                      <option value="실내">실내</option>
                      <option value="야외">야외</option>
                  
                    </select>
                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="timezone">어떤 공간에서 키우고 있나요?</label>
                    <input class="form-control" type="text" value="" id="email">

                  </div>
                  <div class="col-sm-6">
                    <label class="form-label" for="currency">바람은 얼마나 통하나요?</label>
                    <select class="form-select" id="currency">
                      <option value="" selected disabled>바람세기</option>
                      <option value="약"> 약</option>
                      <option value="중"> 중</option>
                      <option value="강"> 강</option>
                    </select>
                  </div>
                  <div class="col-12">
                    <label class="form-label" for="bio">식물을 소개해주세요.</label>
                    <textarea class="form-control" rows="5" placeholder="식물을 소개해주세요!" id="bio"></textarea>
                  </div>
                 
                  </div>
                  <div class="col-12 d-flex justify-content-end pt-3">
                    <button class="btn btn-secondary" type="button">취소</button>
                    <button class="btn btn-primary ms-3" type="button">변경</button>
                  </div>
                </div>
              </div>
            </section>
         
      <!-- Divider for dark mode only-->
      <hr class="d-none d-dark-mode-block">
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
    </main>
   
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/cleave.js/dist/cleave.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

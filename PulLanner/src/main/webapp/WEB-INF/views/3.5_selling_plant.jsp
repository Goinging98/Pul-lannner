<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
      <!-- Page content -->
      <div class="container py-5 mt-3 mt-lg-5 mb-lg-4 my-xl-5">
       <div class="row pt-sm-2 pt-lg-0">
        <!-- Breadcrumb -->
        

      

      <!-- Page title + contact form-->
      <section class="container pt-3 pb-lg-2 pb-xl-4  my-5">
        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
          <h2 class="h4 mb-0">내 식물 분양하기</h2>
        </div>

        <!-- Breadcrumb-->
        <!-- <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Contacts v.2</li>
          </ol>
        </nav> -->
        <div class="row pb-1 pb-sm-3 pb-lg-4">
         
  
          <div class="col-lg-12 col-xl-12 ">
            <form class="row g-4 needs-validation" action="${path}/selling_plant" method="post" enctype="multipart/form-data">

              <div class="col-sm-12">
                <input class="form-control form-control-lg"  type="text" placeholder="제목" required id="title" name="parceltitle">
              </div>

              <div class="col-sm-12">
                <textarea name="parcelcontent" class="form-control form-control-lg" rows="15"
                 placeholder="내용" required id="message"></textarea>
              </div>

              <div class="alert alert-primary d-flex mb-4"><i class="ai-bell fs-xl me-2"></i>
                <p class="mb-0"></p>
              </div>
              
           	<label class="form-label fs-base" for="category">분류를 선택하세요</label>   
			<select name="parceltype" class="form-select" aria-label="Default select example" id="category">
			<option value="">${plantshop.parceltype}</option>
			  <option value="P1">식물</option>
			  <option value="P2">씨앗</option>
			</select>
			<div class="btn-group dropdown">
			  <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    식물/씨앗
			  </button>
			  
<%-- 			  <c:forEach var="item" items="${list}">
			  <div class="dropdown-menu my-1">
			    <a href="#" class="dropdown-item">${item.cntntsSj}</a>
			  </div>
			  </c:forEach> --%>
			</div>

              <div class="col-sm-6 inline-col">
                  <label class="form-label fs-base text-end" for="plantName">식물학명</label>
                  <input class="form-control form-control-lg"  type="text" placeholder="식물학명"  id="plantName" name="plantName">
              </div>


              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="amount">금액</label>
                <input class="form-control form-control-lg"  type="number" placeholder="가격"  id="amount" name="parcelprice">
              </div>


              <div class="col-sm-12 inline-col">
                <label class="form-label fs-base " for="picture" style="width: 9%;">사진첨부</label>
                <input class="form-control form-control-lg"  type="file" placeholder="사진첨부"  id="picture" name="upfile">
              </div>
                

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="originInformation">원산지 정보</label>
                <input class="form-control form-control-lg"  type="text" placeholder="원산지 정보"  id="originInformation" name="originInformation">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="management">관리 요구도</label>
                <select class="form-select form-select-lg" id="management" name="management">
                  <option value="잘견딤">잘견딤</option>
                  <option value="필요함">필요함</option>
                  <option value="특별관리">특별관리</option>
                  <option value="기타">기타</option>
                </select>
              </div>


              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="temperature">생육 온도</label>
                <input class="form-control form-control-lg"  type="text" placeholder="생육 온도"  id="temperature" name="temperature">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="height">성장 높이</label>
                <input class="form-control form-control-lg"  type="text" placeholder="성장 높이"  id="height" name="height">
              </div>


              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base text-end" for="humidity">습도</label>
                <input class="form-control form-control-lg"  type="text" placeholder="습도"  id="humidity" name="humidity">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="area">성장 넓이</label>
                <input class="form-control form-control-lg"  type="text" placeholder="성장 넓이"  id="area" name="area">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="fertilizer">비료</label>
                <input class="form-control form-control-lg"  type="text" placeholder="비료"  id="fertilizer" name="fertilizer">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="leaf">잎 형태</label>
                <input class="form-control form-control-lg"  type="text" placeholder="잎 형태"  id="leaf" name="leaf">
              </div>

     
              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="smell">냄새 정보</label>
                <input class="form-control form-control-lg"  type="text" placeholder="냄새 정보"  id="smell" name="smell">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="flowerColor">꽃색 </label>
                <input class="form-control form-control-lg"  type="text" placeholder="꽃색"  id="flowerColor" name="flowerColor">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="breeding">번식 시기</label>
                <input class="form-control form-control-lg"  type="text" placeholder="번식 시기"  id="breeding" name="breeding">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="soil">토양 정보</label>
                <input class="form-control form-control-lg"  type="text" placeholder="토양 정보"  id="soil" name="soil">
              </div>


              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="toxicity">독성 정보</label>
                <input class="form-control form-control-lg"  type="text" placeholder="독성 정보"  id="toxicity" name="toxicity">
              </div>

              <div class="col-sm-12 pt-2 text-end">
                <button class="btn btn-lg btn-primary" type="submit">저장하기</button>
              </div>

            </form>
          </div>
       
       
        </div>
      </section>





      
      
       </div>


      </div>
    </main>

<%-- 

    <!-- Footer-->
    <footer class="footer pt-lg-5 pt-4 pb-5">
      <div class="container">
        <div class="row gy-md-5 gy-4 mb-md-5 mb-4 pb-lg-2">
          <div class="col-lg-3"><a class="navbar-brand d-inline-flex align-items-center mb-lg-4 mb-3" href="index.html"><span class="text-primary flex-shrink-0 me-2">
                <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                  <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
                </svg></span><span class="text-nav">Around</span></a>
            <p class="mb-4 pb-lg-3 fs-xs text-muted" style="max-width: 306px;">Morbi et massa fames ac scelerisque sit commodo dignissim faucibus vel quisque proin lectus laoreet sem adipiscing sollicitudin erat massa tellus lorem enim aenean phasellus in hendrerit</p>
            <div class="mt-n3 ms-n3"><a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle mt-3 ms-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mt-3 ms-3" href="#"><i class="ai-facebook"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-linkedin rounded-circle mt-3 ms-3" href="#"><i class="ai-linkedin"></i></a></div>
          </div>
          <div class="col-xl-8 offset-xl-1 col-lg-9">
            <div class="row row-cols-sm-4 row-cols-1">
              <div class="col">
                <!-- <ul class="nav flex-column mb-0">
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Relevant Blogs</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Top Author</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Latest News</a></li>
                </ul> -->
              </div>

              
              <div class="col">
                <ul class="nav flex-column mb-0">
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Business</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Marketing</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Design</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Psychology</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Books</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Inspiration</a></li>
                </ul>
              </div>
              <div class="col">
                <ul class="nav flex-column mb-0">
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Analytics</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Ecommerce</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Brand strategy</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Travels</a></li>
                </ul>
              </div>
              <div class="col">
                <ul class="nav flex-column mb-0">
                  <li class="nav-item mb-2"><a class="nav-link p-0 text-primary" href="#">example@gmail.com</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0" href="#">Privacy policy</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="fs-sm text-muted">&copy; All rights reserved. Made by <a href='https://createx.studio/' target='_blank' rel='noopener' class='text-dark text-decoration-none opacity-90'>Createx Studio</a></div>
      </div>
    </footer>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="assets/vendor/shufflejs/dist/shuffle.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
     --%>
    
    
  </body>
  
  
  
  
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


      <!-- Page content-->
      <style>
        /* 이미지 크기 맞추기(item에 적용) */
	    .image-container {
	      height: 450px;
	      overflow: hidden;
	    }
	    /* 이미지 크기 맞추기(item에 적용) */
	    .fit-cover {
	      width: 100%;
	      height: 100%;
	      object-fit: cover;
	    }
      </style>
      
      <div class="overflow-hidden">
        <div class="container pt-5 pb-sm-3 mt-5 mb-2 mb-md-3 mb-lg-4 mb-xxl-5">
          <!-- Breadcrumb-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Portfolio list v.1</li>
            </ol>
          </nav>
        
          <!-- 식물 정보 시작 -->
          <article class="row align-items-center card-hover pb-3 mb-md-2 mb-lg-3 mb-xl-4" data-aos="fade-up"
            data-aos-duration="600" data-aos-offset="280">
            <div class="col-5 image-container">
              <a href="assets\img\landing\yoga-studio\trainers\sample.jpeg" class="gallery-item d-block card-hover fit-cover">
                <img src="assets\img\landing\yoga-studio\trainers\sample.jpeg" class="d-block rounded-4 fit-cover"
                  alt="Image #1" style="width: 500px;">
              </a>
            </div>
            <div class="col-7" data-aos="fade-up" data-aos-duration="850" data-aos-offset="180" data-disable-parallax-down="md">
              <div class="ms-md-4 ms-lg-6 ms-xxl-0" style="margin-bottom: 50px; ">
                <div class="col row">
                  <div class="col" style="margin-top: 50px;">
                    <div class="text-muted mb-2">꽃</div>
                    <h2 class="mb-lg-3">식물학명을입력해주세요</h2>
                    <!-- <h4 class="mb-lg-3 text-muted" style=' line-height: 30%'>식물영명입력</h4> -->
                  </div>
                  <div class="col-1">
                    <button type="button" class="btn btn-outline-info btn-icon rounded-pill btn-sm" style="margin-top: 50px;" >
                      <i class="ai-bookmark"></i>
                    </button>
                  </div>
                </div>
                <div style="width: 750px; height: 350px; overflow: auto; margin-bottom: 15px;">
                  <p class="mb-lg-3 mb-md-1 mb-lg-3 mt-3 pb-2">진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다.
                    암석정원에 잘 어울린다진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이다. </p>
                </div>
              </div>
            </div>
          </article>  
        </div>  
      </div>
    </main>
    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

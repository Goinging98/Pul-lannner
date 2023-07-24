<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp" />


 <!-- Page content-->
 <body style="background-color: #FCFBED">
 
 <!-- Hero + Features-->
 <section class=" position-relative pt-lg-3 pt-xl-4 pt-xxl-5" style="color:#fef7d8;">
	 <div class=" position-absolute start-0 bottom-0 w-100 d-none d-xl-block" style="background-color: #568A75; height: 900px;"></div>
	 <div class="bg-primary position-absolute start-0 bottom-0 w-100 d-none d-lg-block d-xl-none" style="height: 800px;"></div>
	 <div class="bg-primary position-absolute start-0 bottom-0 w-100 d-lg-none d-xl-none" style="height: 2%;"></div>
	 <div class="bg-warning rounded-circle position-absolute start-50 d-none d-lg-block " style=" bottom: 220px; width: 300px; height: 300px; margin-left: -165px;" data-aos="zoom-in" data-aos-duration="700" data-aos-delay="200" data-aos-offset="300" ></div>
	 <div class="container position-relative zindex-5 mt-2 pt-5 pb-2 pb-sm-4 pb-lg-5">
	 <div class="row justify-content-center pt-3 pt-sm-4 pt-md-5 mt-sm-1">
		 <div class="col-8 col-lg-4 order-lg-2" style="margin-top: -105px;">
		 <!-- Middle sticky app screen-->
		 	<div class="position-sticky top-0 mb-5 pb-sm-2 pb-xl-4" style="padding-top: 110px;">
		 		<img class=" mx-auto d-none d-lg-block" src="https://cdn-icons-png.flaticon.com/512/5775/5775998.png" width="550" alt="App screen">
            </div>
         </div>
         <div class="col-sm-6 col-lg-4 order-lg-1 overflow-hidden mt-lg-4 pt-xl-3">
			<!-- Left app sceen-->
            <b><p class=" mx-4 " style="font-size: 23px; color:#568A75;">플래너,</b><br><b>건강한 반려식물을 키우는 습관</p></b>
            <h1 class="display-2 mt-3 text-uppercase mx-4 mb-sm-4" style="color:#568A75;">
            	<span class='fw-bold' >pul-<br>Lanner</span>
            </h1>
            <div class="mx-auto mx-md-0" style="max-width: 400px;">
			<!-- 검색창 -->
            	<div class="input-group">
                	<span class="input-group-text text-muted">
                	<i class="ai-flower"></i>
              		</span>
                	<input class="form-control" type="text" placeholder="Search">
                	<button class="btn btn-outline-warning" type="button">검색</button>
              	</div>
            </div>
              <div class="d-none d-xxl-block" style="height: 310px;"></div>
              <div class="d-none d-xl-block d-xxl-none" style="height: 280px;"></div>
              <div class="d-none d-lg-block d-xl-none" style="height: 200px;"></div>
              <!-- Left features list-->
              <div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-search fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3" >검색 서비스</h2></a>
                <p class="text-white opacity-80 mb-0">식물 검색 서비스는 사용자들에게 식물에 관한 정보를 검색하고 제공하는 서비스입니다. 이 서비스는 다양한 식물에 대한 정보를 찾고자 하는 사람들에게 도움을 줍니다. </p>
              </div>

              <div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-right" data-aos-delay="200" data-aos-offset="250" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-calendar-check fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                  
                <h2 class="h4 text-white mb-2 mb-lg-3">식물 관리 서비스</h2></a>
                <p class="text-white opacity-80 mb-0">식물 관리 서비스는 사용자들이 식물을 효과적으로 관리하고 성장시킬 수 있도록 도와주는 서비스입니다. 식물의 성장 상태를 추적하고 기록하여 보다 효과적인 관리를 할 수 있습니다.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 order-lg-3 overflow-hidden mt-lg-4 pt-xl-3">
              <!-- Right app screen-->
              <b><p class=" mx-4 " style="font-size: 37px; color:#568A75;">Pul-Lanner와 함께</b><br><b>준비하고 키워보세요!</p></b>
             <p class=" mx-4 " style="font-size: 15px; color:#7c807ffb;">
              초보 pul-lanner분들을 위한 식물의 모든것이 담겨 있는 곳입니다. 반려 식물 분양, 대여 또는 씨앗 구매와 원예도구 구매도 가능하며 식물에 대한 정보와 기르는데 필요한 꿀팁들을 제공합니다.</p>
            
              <div class="d-none d-xxl-block" style="height: 520px;"></div>
              <div class="d-none d-xl-block d-xxl-none" style="height: 490px;"></div>
              <div class="d-none d-lg-block d-xl-none" style="height: 400px;"></div>
              <!-- Right features list-->
              <div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-left" data-aos-offset="250" data-aos-delay="400" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-cart fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3">식물, 씨앗 구매</h2></a>
                <p class="text-white opacity-80 mb-0">식물 판매 서비스는 사람들에게 다양한 종류의 식물을 판매하는 서비스입니다. 다양한 종류와 품종의 식물을 선택할 수 있습니다. 개별적인 취향과 환경에 맞는 식물을 찾을 수 있으며, 원하는 목적에 맞게 식물을 선택할 수 있습니다.</p>
              </div>
              <div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-left" data-aos-offset="200" data-aos-delay="600" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-droplet fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3">원예도구 구매</h2></a>
                <p class="text-white opacity-80 mb-0">원예도구 판매 서비스는 사람들에게 원예 작업을 수행하는 데 필요한 다양한 도구와 용품을 판매하는 서비스입니다. 사용자는 다양한 제품을 쉽게 찾고, 신뢰할 수 있는 품질과 성능을 가진 제품을 선택할 수 있습니다.</p>
              </div>
            </div>
          </div>
        </div>
      </section>

  <!-- Page title-->
  <div class="masonry-filterable py-5 mt-5">

    <h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-5 mb-lg-4">직접 엄선한 반려식물</h3>


      <!-- Classes (Tabs)-->
      <section class="container">
        <!-- Nav tabs-->
        <ul class="nav nav-tabs flex-nowrap overflow-auto text-nowrap fs-sm flex-nowrap overflow-auto text-nowrap w-100 mx-auto pb-4 mb-5 mb-sm-3" style="max-width: 250px;">
          <li class="nav-item mb-0"><a class="nav-link active bor" href="#beginners" data-bs-toggle="tab" role="tab">식물분양</a></li>
          <li class="nav-item mb-0"><a class="nav-link " href="#stretching" data-bs-toggle="tab" role="tab">씨앗분양</a></li>
          
        </ul>
        <!-- Tab content-->
        <div class="tab-content">

          <!-- Beginers A-->
          <div class="tab-pane fade show active" id="beginners" role="tabpanel">
            <div class="masonry-grid " data-columns="4" id="a">
        <!-- Item-->        
      <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" role="tabpanel" data-groups="[&quot;a&quot;]">
        <div class="card-hover zoom-effect mx-auto">
          <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
            <div class="zoom-effect-img"><img src="https://cdn.imweb.me/upload/S201905295cee7c0f94cee/003a9e2fc6189.jpeg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
          </div>
          <div class="pt-4 mt-lg-2">
            <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">가울테리아</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
          </div>
        </div>
      </div>

<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://www.flowerrepublic.co.kr/shopimages/sungmo9160/0090010004832.jpg?1665473103" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">개운죽</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://cb.scene7.com/is/image/Crate/PottedZZPlantSHS20/$web_pdp_main_carousel_low$/191217102319/potted-zz-plant.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">공작야자</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1372896722/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%ED%99%94%EB%B6%84-%EB%B0%94%EB%82%98%EB%82%98-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=R_oZjWbJwOnW8oR6ORnkQrYHQmg1NL1NzCqnAYpiFCc=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">금목서</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img" >
        <img src="https://img.freepik.com/free-photo/monstera-deliciosa-plant-in-a-pot_53876-133119.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">금사철나무</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto" >
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1330360581/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%83%84%EB%B9%84%EC%97%90-%EC%8B%A4%EB%82%B4-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=UkMXBZroGOsdZ_IGczcfYkrYuMrB11F9FW7oYENwBbw=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">나도풍란</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Product design</span><span class="fs-sm text-muted d-sm-none">Product design</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://img.freepik.com/free-photo/calathea-plant-in-a-jug_53876-134281.jpg?w=2000" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">나한송</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Packaging design</span><span class="fs-sm text-muted d-sm-none">Packaging design</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto" >
    <div class="zoom-effect-wrapper rounded-5 " style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://ll9flower.cafe24.com/prog/goods/imgz/st_d/d600/st_d600z02.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav " href="/Around/02_3plant-parcel-out.html">꽃베고니아</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Cover design</span><span class="fs-sm text-muted d-sm-none">Cover design</span>
    </div>
  </div>
</div>
            </div>
          </div>


          <!-- Stretching B-->
          <div class="tab-pane fade " id="stretching" role="tabpanel">
            <div class="masonry-grid " data-columns="4" id="b">
     <!-- Item-->
    
     <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" role="tabpanel" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://cdn.imweb.me/upload/S201905295cee7c0f94cee/003a9e2fc6189.jpeg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">가울테리아</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://www.flowerrepublic.co.kr/shopimages/sungmo9160/0090010004832.jpg?1665473103" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">개운죽</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://cb.scene7.com/is/image/Crate/PottedZZPlantSHS20/$web_pdp_main_carousel_low$/191217102319/potted-zz-plant.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">공작야자</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1372896722/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%ED%99%94%EB%B6%84-%EB%B0%94%EB%82%98%EB%82%98-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=R_oZjWbJwOnW8oR6ORnkQrYHQmg1NL1NzCqnAYpiFCc=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">금목서</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    

    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img" >
            <img src="https://img.freepik.com/free-photo/monstera-deliciosa-plant-in-a-pot_53876-133119.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">금사철나무</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto" >
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1330360581/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%83%84%EB%B9%84%EC%97%90-%EC%8B%A4%EB%82%B4-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=UkMXBZroGOsdZ_IGczcfYkrYuMrB11F9FW7oYENwBbw=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">나도풍란</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Product design</span><span class="fs-sm text-muted d-sm-none">Product design</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://img.freepik.com/free-photo/calathea-plant-in-a-jug_53876-134281.jpg?w=2000" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="portfolio-single-v1.html">나한송</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Packaging design</span><span class="fs-sm text-muted d-sm-none">Packaging design</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto" >
        <div class="zoom-effect-wrapper rounded-5 " style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://ll9flower.cafe24.com/prog/goods/imgz/st_d/d600/st_d600z02.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav " href="/Around/02_2seed-parcel-out.html">꽃베고니아</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Cover design</span><span class="fs-sm text-muted d-sm-none">Cover design</span>
        </div>
      </div>
</div>
          </div>
        </div>
        </div>
      </div>

      </section>



            
 <!-- Industries (Binded accordion)-->
 <section class="container py-5 mt-2 mt-sm-3 mt-md-4">

  <div class="row align-items-lg-center">
    <!-- Accordion-->
    <div class="col-md-7 col-lg-7 pb-2 pb-lg-0 mb-4 mb-md-0">
          <img class="rounded-5" src="https://cdn.imweb.me/upload/S2017101359e025984d346/bff36a6d2ced4.jpg" alt="Image">

      <div class="accordion accordion-alt" id="industries">
        <div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1 mt-sm-3">
          <h2 class="accordion-header" style="color: rgb(0, 0, 0);">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-binded-content="#finance-img" data-bs-target="#finance" aria-expanded="true" aria-controls="finance">꽃베고니아</button>
          </h2>
          <div class="accordion-collapse collapse show" id="finance" data-bs-parent="#industries">
            <div class="accordion-body">Sit purus platea nunc semper auctor integer semper et ac odio eget a lacus eu duis ante sed molestie varius tempus gravida libero pretium sit etiam morbi orci et vestibulum velit.</div>
          </div>
        </div>

      </div>
    </div>







    <!-- Binded images-->

    
    <div class="col-md-4 col-lg-4 col-xl-4 offset-1 d-none d-sm-none d-md-block" style="margin-top: -100px;">
      <div class="ps-lg-4 ps-xl-0">
        <h2 >오늘의 꽃 나들이 장소 추천</h2>
        <div class="position-relative d-flex align-items-center mb-4">
          <img class="rounded"  src="https://i.namu.wiki/i/rLVLCqzMl8LdATocQsOXyFOLgUASgznbOQbK4SkPNpO5ZpVZfHFW7So-U8w4P94WFm7SGd16xzypYYPcNyqGKw.webp" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v1.html">세종식물원</a></h4><span class="text-muted" style="font-size : 16px;">17:00에 운영 종료</span>
          </div>
        </div>
        <article class="position-relative d-flex align-items-center mb-4">
          <img class="rounded" src="https://img.newspim.com/news/2020/10/15/2010151646296730.jpg" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v2.html">한택식물원</a></h4><span class="text-muted" style="font-size : 16px;">17:00에 운영 종료</span>
          </div>
        </article>
        <article class="position-relative d-flex align-items-center">
          <img class="rounded" src="https://50plus.or.kr/upload/im/2020/07/3bebe063-4899-4dce-bc1a-0048f6af1e49.jpg" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v3.html">식물원들꽃세상</a></h4><span class="text-muted" style="font-size : 16px;">17:00에 운영 종료</span>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>

      <!-- Resources (Blog)-->
      <section class="bg-faded-primary py-5 mt-5">
        <div class="container py-sm-2 pt-md-3 py-lg-2 py-xl-4 py-xxl-5">
          <h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-3 mb-lg-4">식물 자랑</h3>
          <!-- Swiper-->
          <div class="swiper" data-swiper-options="
        {
          &quot;spaceBetween&quot;: 24,
          &quot;pagination&quot;: {
            &quot;el&quot;: &quot;.swiper-pagination&quot;,
            &quot;clickable&quot;: true
          },
          &quot;breakpoints&quot;: {
            &quot;576&quot;: { &quot;slidesPerView&quot;: 2 },
            &quot;992&quot;: { &quot;slidesPerView&quot;: 3 }
          }
        }
      ">
            <div class="swiper-wrapper">
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">August 13, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">나를 식집사로 만들어준 피쉬본 포실이 🌵</a></h3>
                    <p class="card-text">포실이가 우리집에 온지 한달째 되는 날 💚
                      아직은 많이 부족한 초보 식집사지만 .. 🥹
                      다행히 과습도 오지않고 그 사이 새로운 아기 자구가 올라온 거 같아 아마도 ?</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/10.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Guy Hawkins</h6></a></div>
                </div>
              </article>
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">July 25, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">고슬딸기 열매가 빨갛게 익었어요</a></h3>
                    <p class="card-text">2개는 꽤나 튼실하게 잘 익은거 같아요 가장 작은 1개는 따서 먹어보니 역시 단맛은 안나네요🤣 물푸레 영양제를 줘야하는걸까 싶어요
                      지금은 알비료만 얹어놨어요</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/07.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Cody Fisher</h6></a></div>
                </div>
              </article>
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">July 08, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">비 자발적 미니멀리스트가 되었다🌿😐</a></h3>
                    <p class="card-text">어느새 식물들이 내 화장대를 점령했다🥹 장마와 무더위로 인해 베란다 식물들을 하나둘씩 방으로 피신시킨게 시작이었다. 그러면서도 식물공부를 하며 </p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/09.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Jane Cooper</h6></a></div>
                </div>
              </article>
            </div>
            <!-- Pagination (bullets)-->
            <div class="swiper-pagination position-relative bottom-0 mt-2 pt-4 d-lg-none"></div>
          </div>
          <!-- Read more button-->
          <div class="text-center pt-4 pb-sm-2 pb-md-4 py-lg-5 my-2 mt-lg-0"><a class="btn btn-outline-primary" href="#">식물자랑 더보기</a></div>

          
      <div class="container position-relative zindex-5 py-sm-4 py-lg-5 ">
        <!-- Text + button-->
        <div class="d-flex align-items-center justify-content-between mb-3">
          <div class="fw-medium text-black text-uppercase">나만 몰랐던 식집사의 필수템</div>
          <!-- Slider prev/next buttons-->
          <div class="d-flex">
            <button class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle me-2"  type="button" id="popular-prev"><i class="ai-arrow-left"></i></button>
            <button class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-2" type="button" id="popular-next"><i class="ai-arrow-right"></i></button>
          </div>
        </div>
        <!-- Slider (popular items)-->
        <div class="swiper" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;loop&quot;: true,
      &quot;navigation&quot;: {
        &quot;prevEl&quot;: &quot;#popular-prev&quot;,
        &quot;nextEl&quot;: &quot;#popular-next&quot;
      },
      &quot;breakpoints&quot;: {
        &quot;500&quot;: {
          &quot;slidesPerView&quot;: 2
        },
        &quot;860&quot;: {
          &quot;slidesPerView&quot;: 3
        },
        &quot;1200&quot;: {
          &quot;slidesPerView&quot;: 4
        }
      }
    }">
          <div class="swiper-wrapper">
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://punggok.kr/shopimages/punggok337/0080120000103.jpg?1563931569" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">모종삽(녹색손잡이)</h3>
                      <p class="fs-sm mb-0">3,000원</p>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://www.myplant.co.kr/shopimages/myplant/0020010001382.jpg?1618471791" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">분갈이 매트 대형 화분분갈이 분갈이흙 
                      </h3>
                      <p class="fs-sm mb-0">2,500원 <del class='text-muted fs-xs'>3,000원</del></p>
                    </div>
                  </div>
                </div>
              </a>
              </div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://www.nousbo.com/files/thumbnails/995/046/300x300.ratio.jpg?20220627102917" width="97" alt="Product">
                    <div class="ps-4">
                      <h3 class="fs-sm mb-2">
                        프리미엄 분갈이흙</h3>
                      <p class="fs-sm mb-0">6,000원</p>
                    </div>
                  </div>
                </div></a></div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://papa-garden.com/web/product/big/202011/5bde755495839e39f6f89922727e599a.jpg" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">분갈이 세트</h3>
                      <p class="fs-sm mb-0">15,000원</p>
                    </div>
                  </div>
                </div></a></div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="assets/img/landing/shop/hero/05.png" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">Scented candle in ceramic shell</h3>
                      <p class="fs-sm mb-0">$13.00</p>
                    </div>
                  </div>
                </div></a></div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
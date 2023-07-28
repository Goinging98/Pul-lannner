<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
      <!-- Page content-->
      <div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Shop catalog</li>
          </ol>
        </nav>
        <!-- Banner-->
        <div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #F2F2DF;">
          <div class="row align-items-center g-0 py-1">
            <div class="col-md-6 offset-xl-1 ">
              <div class="py-5 my-5 px-4 px-sm-5 pe-md-0 ps-xl-4" style="margin-left: 160px;">
                <p class="fs-xs  pt-3 pt-md-0 mb-3 mb-lg-4"  >2023.08.01 ~ 2023.08.31</p>
                <h2 class="h1 pb-2 pb-xl-3"   >구매하신 식물을 인증하면 <br><span class='text-primary'>포인트가 두배!!!</span></h2><a class="btn btn-sm btn-outline-dark ignore-dark-mode" href="#">리뷰 쓰러가기</a>
              </div>
            </div>
            <div class="col-md-6 col-xl-5 d-flex justify-content-end">
              <img src="https://www.karinsflorist.com/wp-content/uploads/2019/01/Romantic-Pastels-Bouquet-2.png"  style="position:relative; transform: rotate( 1rad ); margin-top: 140px; margin-right: 245px; height: 150px; width: auto;" alt="Banner">
              <img src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163150919176222081.png" style="position:absolute; margin-right: 250px; margin-top: 10px; height: 300px; width: auto;" alt="Banner">
            </div>
          </div>
        </div>
        <!-- Page title-->
        <div class="row pt-xl-3 mt-n1 mt-sm-0">
          <div class="col-lg-9 offset-lg-3 pt-lg-3">
            <h1 class="pb-2 pb-sm-3">식물 판매</h1>
          </div>
        </div>
        <div class="row pb-2 pb-sm-4">
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3">
            <div class="offcanvas-lg offcanvas-start" id="shopSidebar">
              <div class="offcanvas-header">
                <h5 class="offcanvas-title">Filters</h5>
                <button class="btn-close" type="button" data-bs-dismiss="offcanvas" data-bs-target="#shopSidebar"></button>
              </div>
              <div class="offcanvas-body pt-2 pt-lg-0 pe-lg-4">
                <!-- Categories (accordion with checkboxes)-->
                <h3 class="h5">Categories</h3>
                <div class="accordion accordion-alt pb-2 mb-4" id="shopCategories">
                  <div class="accordion-item mb-0">
                    <h4 class="accordion-header">
                      <button class="accordion-button fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#difficulty" aria-expanded="true" aria-controls="difficulty"><span class="fs-base">관리 난이도</span></button>
                    </h4>
                    <div class="accordion-collapse collapse show" id="difficulty" data-bs-parent="#shopCategories">
                      <div class="accordion-body py-1 mb-1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="difficulty-all">
                          <label class="form-check-label d-flex align-items-center" for="difficulty-all"><span class="text-nav fw-medium">모두 보기</span><span class="fs-xs text-muted ms-auto">697</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" checked id="beginner">
                          <label class="form-check-label d-flex align-items-center" for="beginner"><span class="text-nav fw-medium">초보자</span><span class="fs-xs text-muted ms-auto">234</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="intermediate">
                          <label class="form-check-label d-flex align-items-center" for="intermediate"><span class="text-nav fw-medium">경험자</span><span class="fs-xs text-muted ms-auto">182</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="expert">
                          <label class="form-check-label d-flex align-items-center" for="expert"><span class="text-nav fw-medium">전문가</span><span class="fs-xs text-muted ms-auto">133</span></label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item mb-0">
                    <h4 class="accordion-header">
                      <button class="accordion-button collapsed fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#plant" aria-expanded="false" aria-controls="plant"><span class="fs-base">식물 종류</span></button>
                    </h4>
                    <div class="accordion-collapse collapse" id="plant" data-bs-parent="#shopCategories">
                      <div class="accordion-body py-1 mb-1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="plant-all">
                          <label class="form-check-label d-flex align-items-center" for="plant-all"><span class="text-nav fw-medium">모두 보기</span><span class="fs-xs text-muted ms-auto">813</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="foliage-plant">
                          <label class="form-check-label d-flex align-items-center" for="foliage-plant"><span class="text-nav fw-medium">관엽 식물</span><span class="fs-xs text-muted ms-auto">387</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="flower-plant">
                          <label class="form-check-label d-flex align-items-center" for="flower-plant"><span class="text-nav fw-medium">관화 식물</span><span class="fs-xs text-muted ms-auto">124</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="seed">
                          <label class="form-check-label d-flex align-items-center" for="seed"><span class="text-nav fw-medium">씨앗</span><span class="fs-xs text-muted ms-auto">59</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="indoor-garden">
                          <label class="form-check-label d-flex align-items-center" for="indoor-garden"><span class="text-nav fw-medium">실내정원용</span><span class="fs-xs text-muted ms-auto">227</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="fleshy-plant">
                          <label class="form-check-label d-flex align-items-center" for="fleshy-plant"><span class="text-nav fw-medium">다육식물</span><span class="fs-xs text-muted ms-auto">16</span></label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item mb-0">
                    <h4 class="accordion-header">
                      <button class="accordion-button collapsed fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#pot" aria-expanded="false" aria-controls="pot"><span class="fs-base">화분 구매</span></button>
                    </h4>
                    <div class="accordion-collapse collapse" id="pot" data-bs-parent="#shopCategories">
                      <div class="accordion-body py-1 mb-1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="pot-all">
                          <label class="form-check-label d-flex align-items-center" for="pot-all"><span class="text-nav fw-medium">모두 보기</span><span class="fs-xs text-muted ms-auto">1416</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="clay-pot">
                          <label class="form-check-label d-flex align-items-center" for="clay-pot"><span class="text-nav fw-medium">토분</span><span class="fs-xs text-muted ms-auto">113</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="ceramics">
                          <label class="form-check-label d-flex align-items-center" for="ceramics"><span class="text-nav fw-medium">도자기</span><span class="fs-xs text-muted ms-auto">98</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="plastic">
                          <label class="form-check-label d-flex align-items-center" for="plastic"><span class="text-nav fw-medium">플라스틱</span><span class="fs-xs text-muted ms-auto">205</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="cement">
                          <label class="form-check-label d-flex align-items-center" for="cement"><span class="text-nav fw-medium">시멘트</span><span class="fs-xs text-muted ms-auto">747</span></label>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item mb-0">
                    <h4 class="accordion-header">
                      <button class="accordion-button collapsed fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#care" aria-expanded="false" aria-controls="care"><span class="fs-base">관리용품 구매</span></button>
                    </h4>
                    <div class="accordion-collapse collapse" id="care" data-bs-parent="#shopCategories">
                      <div class="accordion-body py-1 mb-1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="care-all">
                          <label class="form-check-label d-flex align-items-center" for="care-all"><span class="text-nav fw-medium">모두 보기</span><span class="fs-xs text-muted ms-auto">1219</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="repotting">
                          <label class="form-check-label d-flex align-items-center" for="repotting"><span class="text-nav fw-medium">분갈이</span><span class="fs-xs text-muted ms-auto">43</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="water">
                          <label class="form-check-label d-flex align-items-center" for="water"><span class="text-nav fw-medium">물주기</span><span class="fs-xs text-muted ms-auto">528</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="temp">
                          <label class="form-check-label d-flex align-items-center" for="temp"><span class="text-nav fw-medium">온도, 습도</span><span class="fs-xs text-muted ms-auto">391</span></label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </aside>
          <!-- Product grid-->
          <div class="col-lg-9">
            <!-- Active filters + Sorting-->
            <div class="d-flex align-items-start justify-content-between mb-4">
             <a href="/Around/03_2.html"> <button class="btn btn-lg btn-primary" type="submit">내 식물분양</button></a>
             <a href="/Around/03_3.html"> <button class="btn btn-lg btn-primary mx-3" type="submit">내 씨앗분양</button></a>
              <div class="input-group" style="width: 500px; margin-left: 30%;">

                <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                <button type="button" class="btn btn-outline-primary">search</button>
              </div>
            </div>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-2 p-3 mb-4" >
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
                    <i class="ai-heart fs-xl d-dark-mode-none">
                    </i>
                    <i class="ai-heart text-nav fs-xl d-none d-dark-mode-block">
                    </i>
                  </button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                      <!-- Item -->
                      <div class="swiper-slide rounded-2"  >
                        <div class="rounded-2" style="background-image: url( 'https://mblogthumb-phinf.pstatic.net/MjAyMDAyMDRfMTI2/MDAxNTgwNzc3MTk5MDAw.vMd7XrRNB_E0s9YGLufqnzc-CK_6keUUJ3bAuiVMBkgg.zoYguWvqLazUn7EUzXgRiTQ5RDnjkDq9_LZFgx5DJOcg.JPEG.flowervine/DSC03078.JPG?type=w800' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                       <!-- Item -->
                       <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>

                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Loft style lamp</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">

                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
                  <del class="fs-sm text-muted">$35.00</del>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
     <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                   <!-- Item -->
                   <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164274836271446071.jpg?gif=1&w=360&h=360&c=c&q=0.8&webp=1' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                  </div>
                  </div>
                   <!-- Item -->
                   <div class="swiper-slide rounded-2"  >
                  <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                  </div>
                  </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Dispenser for soap</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$16.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://thumbnail.10x10.co.kr/webimage/image/basic600/412/B004120835.jpg?cmd=thumb&w=400&h=400&fit=true&ws=false' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Glossy round vase</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <!-- <div class="ms-1">
                      <input class="btn-check" type="radio" name="color2" value="Light gray" checked id="color2-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color2-1"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #d5d4d3;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color2" value="Dark gray" id="color2-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color2-2"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #576071;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color2" value="Blue" id="color2-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color2-3"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a1b7d9;"></span></label>
                    </div> -->
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$11.00</span>
                  <del class="fs-sm text-muted">$15.00</del>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                    <!-- Item -->
                    <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PE1055_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Ceramic flower pot</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <!-- <div class="ms-1">
                      <input class="btn-check" type="radio" name="color3" value="Gray concrete" checked id="color3-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color3-1"><span class="d-block bg-size-cover bg-position-center rounded-circle" style="width: .625rem; height: .625rem; background-color: #c0c0c0; background-image: url(assets/img/shop/pattern/marble.jpg);"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color3" value="Beige" id="color3-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color3-2"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #d9c9a1;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color3" value="Blue" id="color3-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color3-3"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a1b7d9;"></span></label>
                    </div> -->
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$19.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Pendant lamp</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <!-- <div class="ms-1">
                      <input class="btn-check" type="radio" name="color4" value="Gray" checked id="color4-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color4-1"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #bab8b7;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color4" value="Woody brown" id="color4-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color4-2"><span class="d-block bg-size-cover bg-position-center rounded-circle" style="width: .625rem; height: .625rem; background-color: #c0c0c0; background-image: url(assets/img/shop/pattern/wood.jpg);"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color4" value="Gray marble" id="color4-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color4-3"><span class="d-block bg-size-cover bg-position-center rounded-circle" style="width: .625rem; height: .625rem; background-color: #c0c0c0; background-image: url(assets/img/shop/pattern/marble.jpg);"></span></label>
                    </div> -->
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$22.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                    <!-- Item -->
                    <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://img.marieclairekorea.com/2021/04/mck_60657bd4d3c01.jpg' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Living room table</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$46.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                    <!-- Item -->
                    <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Teapot for hot drinks</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$17.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                     <!-- Item -->
                     <div class="swiper-slide rounded-2"  >
                    <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                    </div>
                    </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Analogue wall clock</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <!-- <div class="ms-1">
                      <input class="btn-check" type="radio" name="color5" value="Turquoise" checked id="color5-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color5-1"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a8c2c0;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color5" value="Lilac" id="color5-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color5-2"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #b4a9c3;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color5" value="Blue" id="color5-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color5-3"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a1b7d9;"></span></label>
                    </div> -->
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$25.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                      <!-- Item -->
                      <div class="swiper-slide rounded-2"  >
                        <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                       <!-- Item -->
                       <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Scented candle</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$13.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                   <!-- Item -->
                      <div class="swiper-slide rounded-2"  >
                        <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                       <!-- Item -->
                       <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Matte color pitcher</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <!-- <div class="ms-1">
                      <input class="btn-check" type="radio" name="color6" value="Light brown" checked id="color6-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color6-1"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #aea6a6;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color6" value="Beige" id="color6-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color6-2"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #d9c9a1;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color6" value="Blue" id="color6-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color6-3"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a1b7d9;"></span></label>
                    </div> -->
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$11.00</span>
                  <del class="fs-sm text-muted">$15.00</del>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                 <!-- Item -->
                 <div class="swiper-slide rounded-2"  >
                  <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                </div>
                </div>
                 <!-- Item -->
                 <div class="swiper-slide rounded-2"  >
                <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                </div>
                </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Plate with granite print</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$9.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">

                      <!-- Item -->
                      <div class="swiper-slide rounded-2"  >
                        <div class="rounded-2" style="background-image: url( 'https://rosedayflower.com/IS/U=halfflower2/PC1007_01.jpg&S=500x500' ); object-fit: scale-down; background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                       <!-- Item -->
                       <div class="swiper-slide rounded-2"  >
                      <div class="rounded-2" style="background-image: url( 'https://littledeep.com/wp-content/uploads/2020/12/illustration-plant-main-1024x607.png' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>
                      </div>
                      
                    </a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="/Around/02_2seed-parcel-out.html">Exquisite glass vase</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$23.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Pagination-->
            <div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
              <div class="col col-md-4 col-6 order-md-1 order-1">
                <!-- <div class="d-flex align-items-center"><span class="text-muted fs-sm">Show</span>
                  <select class="form-select form-select-flush w-auto">
                    <option value="12">12</option>
                    <option value="18">18</option>
                    <option value="24">24</option>
                    <option value="30">30</option>
                  </select>
                </div> -->
              </div>
              <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                <!-- <button class="btn btn-primary w-md-auto w-100" type="button">Load more products</button> -->
              </div>
              <div class="col col-md-4 col-6 order-md-3 order-2">
                <nav aria-label="Page navigation">
                  <ul class="pagination pagination-sm justify-content-end">
                    <li class="page-item active" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar"><i class="ai-filter me-2"></i>Filters</button>
  </body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
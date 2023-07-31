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
            <li class="breadcrumb-item"><a href="index.html">식물관리</a></li>
            <li class="breadcrumb-item active" aria-current="page">개인 식물저장소</li>
          </ol>
        </nav>
        
        <!-- 프로필정보-->
        <section class="card border-3 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4" style="max-width: 1000px;">
          <div class="card-body">
            <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
              <h2 class="h4 mb-0">${loginMember.name}</h2><a class="btn btn-sm btn-secondary ms-auto" href="${path}/Plantwrite"><i class="ai-edit ms-n1 me-2"></i>식물등록</a>
            </div>
            <div class="d-md-flex align-items-center">
              <div class="d-sm-flex align-items-center">
                <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 130px; height: 130px; background-image: url(assets/img/avatar/02.jpg);"></div>
                <div class="pt-3 pt-sm-0 ps-sm-3">
                  <h3 class="h5 mb-2">${loginMember.name}<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                  <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                    <div class="d-flex align-items-center me-3"><i class="ai-mail me-1"></i>${loginMember.id}</div>
                    <div class="d-flex align-items-center text-nowrap"><i class="ai-map-pin me-1"></i>korea</div>
                  </div>
                </div>
              </div>
            
        </section>
        
        <!-- Banner
        <div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #e3e5e9;">
          <div class="row align-items-center g-0">
            <div class="col-md-6 offset-xl-1 text-center text-md-start">
              <div class="py-4 px-4 px-sm-5 pe-md-0 ps-xl-4">
                <p class="fs-xs text-uppercase pt-3 pt-md-0 mb-3 mb-lg-4">Best selling</p>
                <h2 class="h1 pb-2 pb-xl-3">Cozy corner for the living room at a <span class='text-primary'>discount up to 40%</span></h2><a class="btn btn-sm btn-outline-dark ignore-dark-mode" href="#">Explore</a>
              </div>
            </div>
            <div class="col-md-6 col-xl-5 d-flex justify-content-end"><img src="assets/img/shop/banner.jpg" width="491" alt="Banner"></div>
          </div>
        </div> -->

        
        <!-- Page title-->
        <div class="row pt-xl-3 mt-n1 mt-sm-0">
          <div class="col-lg-9 offset-lg-3 pt-lg-3">
            <h1 class="pb-2 pb-sm-3">무민님의 정원</h1>
          </div>
        </div>
        <div class="row pb-2 pb-sm-4">
          <div class="col-lg-9">
            <style>
              .col-lg-9.offset-lg-3 {
                margin-left: 0;
              }
              .col-lg-9 h1 {
                font-size: 25px;   font-weight: bold;

              }
              .col-lg-9 p {
                color: rgb(65, 128, 65); font-size: 20px;   font-weight: bold;

              }
            </style>
            <p>총 131개 플래너를 작성했어요</p>
          </div>
        </div>
               
          </aside>
          <!-- Product grid 이거 지우면 3칸짜리 넓히고 좁히고 차이-->
          <div class="col-lg-9">
           
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4"><span class="badge bg-faded-danger text-danger position-absolute top-0 start-0 mt-3 ms-3">Sale</span>
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/01.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Loft style lamp</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color1" value="Dark gray" checked id="color1-1">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color1-1"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #576071;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color1" value="Light gray" id="color1-2">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color1-2"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #d5d4d3;"></span></label>
                    </div>
                    <div class="ms-1">
                      <input class="btn-check" type="radio" name="color1" value="Blue" id="color1-3">
                      <label class="btn btn-icon btn-xs btn-outline-secondary rounded-circle" for="color1-3"><span class="d-block rounded-circle" style="width: .625rem; height: .625rem; background-color: #a1b7d9;"></span></label>
                    </div>
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
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/02.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Dispenser for soap</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$16.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4"><span class="badge bg-faded-danger text-danger position-absolute top-0 start-0 mt-3 ms-3">Sale</span>
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/03.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Glossy round vase</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
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
                    </div>
                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$11.00</span>
                  <del class="fs-sm text-muted">$15.00</del>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4"><span class="badge bg-faded-primary text-primary position-absolute top-0 start-0 mt-3 ms-3">New</span>
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/04.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Ceramic flower pot</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
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
                    </div>
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
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/05.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Pendant lamp</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
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
                    </div>
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
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/06.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Living room table</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$46.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/07.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Teapot for hot drinks</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$17.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4"><span class="badge bg-faded-primary text-primary position-absolute top-0 start-0 mt-3 ms-3">New</span>
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/08.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Analogue wall clock</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
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
                    </div>
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
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/09.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Scented candle</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$13.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4"><span class="badge bg-faded-danger text-danger position-absolute top-0 start-0 mt-3 ms-3">Sale</span>
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/10.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Matte color pitcher</a></h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">
                    <div class="ms-1">
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
                    </div>
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
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/11.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Plate with granite print</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$9.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
              <!-- Item-->
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-1 p-3 mb-4">
                  <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button"><i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  <div class="swiper swiper-nav-onhover" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}"><a class="swiper-wrapper" href="shop-single.html">
                      <div class="swiper-slide p-2 p-xl-4"><img class="d-block mx-auto" src="assets/img/shop/products/12.png" width="226" alt="Product"></div></a>
                    <button class="btn btn-prev btn-icon btn-sm btn-light bg-light border-0 rounded-circle start-0" type="button"><i class="ai-chevron-left fs-xl d-dark-mode-none"></i><i class="ai-chevron-left text-nav fs-xl d-none d-dark-mode-block"></i></button>
                    <button class="btn btn-next btn-icon btn-sm btn-light bg-light border-0 rounded-circle end-0" type="button"><i class="ai-chevron-right fs-xl d-dark-mode-none"></i><i class="ai-chevron-right text-nav fs-xl d-none d-dark-mode-block"></i></button>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0"><a href="shop-single.html">Exquisite glass vase</a></h3>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">$23.00</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Pagination-->
            <div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
              <div class="col col-md-4 col-6 order-md-1 order-1">
                <div class="d-flex align-items-center"><span class="text-muted fs-sm"></span>
                  <select class="form-select form-select-flush w-auto">
           
                   
                  </select>
                </div>
              </div>
              <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                <button class="btn btn-primary w-md-auto w-100" type="button">Load more products</button>
              </div>
              <div class="col col-md-4 col-6 order-md-3 order-2">
                <nav aria-label="Page navigation">
                  <ul class="pagination pagination-sm justify-content-end">
                   
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar"><i class="ai-filter me-2"></i>Filters</button>
    </main>

    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/nouislider/dist/nouislider.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
      <!-- Page content-->
      <section class="container py-5 mt-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-2 pb-md-4 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="shop-catalog.html">Shop catalog</a></li>
            <li class="breadcrumb-item active" aria-current="page">Single product</li>
          </ol>
        </nav>
        <!-- Title + price shown on screens < 768px-->
        <h2 class="h1 d-md-none">Scented candle</h2>
        <div class="d-flex d-md-none align-items-center pb-3 mb-3">
          <div class="h3 mb-0 me-3">$14.00</div>
          <del class="fs-5 fw-medium text-muted me-3">$19.00</del><span class="badge bg-faded-danger text-danger d-md-none">Sale</span>
        </div>
        <div class="row pb-sm-1 pb-md-4">
          <!-- Gallery-->
          <div class="col-md-6 gallery mb-3 mb-md-0">
            <!-- Item -->
            <div class="col">
              <a href="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_01.jpg" class="gallery-item d-block card-hover">
                <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
                  <i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
                  <div class="position-absolute bottom-0 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
                    Image #1
                  </div>
                  <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
                </div>
                <img src="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_01.jpg" class="d-block rounded-4" alt="Image #1">
              </a>
            </div>
                <!-- Item -->
              <div class="d-flex justify-content-between mt-3">
                <a href="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_02.jpg" style="width: 310px; height: 100%;" class="gallery-item d-block card-hover">
                  <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
                    <i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
                    <div class="position-absolute bottom-0 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
                      Image #1
                    </div>
                    <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
                  </div>
                  <img src="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_02.jpg" style="width: 310px; height: 100%;" class="d-block rounded-4" alt="Image #1">
                </a>
              
              <!-- Item -->
              
                <a href="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_02.jpg" style="width: 310px; height: 100%;" class="gallery-item d-block card-hover">
                  <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
                    <i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
                    <div class="position-absolute bottom-0 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
                      Image #1
                    </div>
                    <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
                  </div>
                  <img src="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_02.jpg" style="width: 310px; height: 100%;" class="d-block rounded-4" alt="Image #1">
                </a>
              </div>
            <!-- Item -->
              <div class="col mt-3">
                <a href="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_03.jpg" class="gallery-item d-block card-hover">
                  <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
                    <i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
                    <div class="position-absolute bottom-0 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
                      Image #1
                    </div>
                    <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
                  </div>
                  <img src="https://www.nongsaro.go.kr/cms_contents/301/12938_MF_ATTACH_03.jpg" class="d-block rounded-4" alt="Image #1">
                </a>
              </div>
</a>
          </div>
          <!-- Product details-->
          <div class="col-md-6 col-xl-5 offset-xl-1">
            <div class="d-none d-md-block" style="margin-top: -90px;"></div>
            <div class="position-md-sticky top-0 ps-md-4 ps-lg-5 ps-xl-0">
              <div class="d-none d-md-block" style="padding-top: 90px;"></div>
              <!-- <div class="d-flex align-items-center pt-3 py-3"><span class="badge bg-faded-danger text-danger d-none d-md-inline-block me-4">Sale</span><span class="fs-sm">V00273124</span></div> -->
              <div class="pb-2 pb-lg-0 mb-4 mb-lg-5"><img class="d-block rounded-circle mb-2" src="assets/img/avatar/02.jpg" width="80" alt="Isabella Bocouse">
                <h3 class="h5 mb-1">Isabella Bocouse</h3>
              </div>
              <h1 class="d-none d-md-inline-block pb-1 mb-2">가울 테리아</h1>
              <p class="fs-sm mb-4">진달래과의 작은 관목으로 척박한 산성토양에서 잘 자라며 키는 20cm정도로 포복형이고, 암석정원에 잘 어울립니다.</p>
              <div class="d-none d-md-flex align-items-center pb-3 mb-3">
                <div class="h3 mb-0 me-3">$14.00</div>
                <del class="fs-5 fw-medium text-muted">$19.00</del>
              </div>
              <!-- Color button selector-->
              <!-- <div class="h6">Color:<span class="text-muted fw-normal ms-1" id="colorOption">Gray concrete</span></div> -->
              <div class="d-flex pb-3">
                <div class="accordion-item mb-0">
                  <h4 class="accordion-header">
                    <button class="accordion-button fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#difficulty" aria-expanded="true" aria-controls="difficulty"><span class="fs-base">
                      <i class="ai-chevrons-down"></i>&nbsp;상세 정보</span></button>
                  </h4>
                  <div class="accordion-collapse collapse show" id="difficulty" data-bs-parent="#shopCategories">
                    <div class="accordion-body py-1 mb-1">
                      <div class="form-check">
                        <!-- <input class="form-check-input" type="checkbox" id="difficulty-all"> -->
                        <label class="form-check-label d-flex align-items-center" for="difficulty-all"><span class="text-nav fw-medium">관리 수준 : 경험자</span>
                          <!-- <span class="fs-xs text-muted ms-auto">697</span> -->
                        </label>
                      </div>
                      <div class="form-check">
                        <!-- <input class="form-check-input" type="checkbox" checked id="beginner"> -->
                        <label class="form-check-label d-flex align-items-center" for="beginner"><span class="text-nav fw-medium">광요구도 : 중간 광도(800~1,500 Lux),높은 광도(1,500~10,000 Lux)</span>
                          <!-- <span class="fs-xs text-muted ms-auto">234</span> -->
                        </label>
                      </div>
                      <div class="form-check">
                        <!-- <input class="form-check-input" type="checkbox" id="intermediate"> -->
                        <label class="form-check-label d-flex align-items-center" for="intermediate"><span class="text-nav fw-medium">비료 : 비료를 보통 요구함</span>
                          <!-- <span class="fs-xs text-muted ms-auto">182</span> -->
                        </label>
                      </div>
                      <div class="form-check">
                        <!-- <input class="form-check-input" type="checkbox" id="expert"> -->
                        <label class="form-check-label d-flex align-items-center" for="expert"><span class="text-nav fw-medium">병충해 : 응애, 깍지벌레</span>
                          <!-- <span class="fs-xs text-muted ms-auto">133</span> -->
                        </label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- <div class="me-2 mb-2">
                  <input class="btn-check" type="radio" name="color" data-binded-label="colorOption" value="Gray concrete" checked id="color1">
                  <label class="btn btn-icon btn-sm btn-outline-secondary rounded-circle" for="color1"><span class="d-block bg-size-cover bg-position-center rounded-circle" style="width: 1.5rem; height: 1.5rem; background-color: #c0c0c0; background-image: url(../assets/img/shop/pattern/marble.jpg);"></span></label>
                </div>
                <div class="me-2 mb-2">
                  <input class="btn-check" type="radio" name="color" data-binded-label="colorOption" value="Soft beige" id="color2">
                  <label class="btn btn-icon btn-sm btn-outline-secondary rounded-circle" for="color2"><span class="d-block rounded-circle" style="width: 1.5rem; height: 1.5rem; background-color: #d9c9a1;"></span></label>
                </div>
                <div class="me-2 mb-2">
                  <input class="btn-check" type="radio" name="color" data-binded-label="colorOption" value="Bluish sky" id="color3">
                  <label class="btn btn-icon btn-sm btn-outline-secondary rounded-circle" for="color3"><span class="d-block rounded-circle" style="width: 1.5rem; height: 1.5rem; background-color: #a1b7d9;"></span></label>
                </div>
                <div class="me-2 mb-2">
                  <input class="btn-check" type="radio" name="color" data-binded-label="colorOption" value="Green grass" id="color4">
                  <label class="btn btn-icon btn-sm btn-outline-secondary rounded-circle" for="color4"><span class="d-block rounded-circle" style="width: 1.5rem; height: 1.5rem; background-color: #74947d;"></span></label>
                </div>
                <div class="me-2 mb-2">
                  <input class="btn-check" type="radio" name="color" data-binded-label="colorOption" value="Woody brown" id="color5">
                  <label class="btn btn-icon btn-sm btn-outline-secondary rounded-circle" for="color5"><span class="d-block bg-size-cover bg-position-center rounded-circle" style="width: 1.5rem; height: 1.5rem; background-color: #af8352; background-image: url(../assets/img/shop/pattern/wood.jpg);"></span></label>
                </div> -->
              </div>
              <!-- Weight button selector-->
              <!-- <div class="h6">Weight</div> -->
              <div class="d-flex">
                <!-- <div class="me-3">
                  <input class="btn-check" type="radio" name="weight" value="140 g" checked id="weight1">
                  <label class="btn btn-outline-secondary px-2" for="weight1"><span class="mx-1">140 g</span></label>
                </div>
                <div class="me-3">
                  <input class="btn-check" type="radio" name="weight" value="260 g" id="weight2">
                  <label class="btn btn-outline-secondary px-2" for="weight2"><span class="mx-1">260 g</span></label>
                </div>
                <div class="me-3">
                  <input class="btn-check" type="radio" name="weight" value="440 g" id="weight3">
                  <label class="btn btn-outline-secondary px-2" for="weight3"><span class="mx-1">440 g</span></label>
                </div> -->
              </div>
              <!-- Action buttons-->
              <div class="d-sm-flex d-md-block d-lg-flex py-4 py-md-5 my-3 my-md-0 mt-lg-0 mb-lg-4">
                <!-- <div class="count-input bg-gray rounded-3 me-4 mb-3 mb-sm-0 mb-md-3 mb-lg-0">
                  <button class="btn btn-icon btn-lg fs-xl" type="button" data-decrement>-</button>
                  <input class="form-control" type="number" value="1" readonly>
                  <button class="btn btn-icon btn-lg fs-xl" type="button" data-increment>+</button>
                </div>
                <div class="d-flex align-items-center">
                  <button class="btn btn-lg btn-primary w-100 w-lg-auto me-2" type="button"><i class="ai-cart me-2 ms-n1"></i>Add to cart</button>
                  <div class="nav"><a class="nav-link fs-3 px-3" href="#" data-bs-toggle="tooltip" title="Add to Favorites"><i class="ai-heart"></i></a></div>
                </div> -->
              </div>
              <!-- Sharing-->
              <div class="d-flex align-items-center">
                <!-- <h4 class="h6 me-4">Share product:</h4><a class="btn btn-secondary btn-icon btn-sm btn-telegram rounded-circle me-3 mb-3" href="#"><i class="ai-telegram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle me-3 mb-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mb-3" href="#"><i class="ai-facebook"></i></a> -->
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Dscription section #1-->
            <!-- Comments-->
            <section class="container pt-xl-2 pb-5 mb-md-2 mb-lg-4 mb-xl-5" id="comments">
              <div class="border-top border-bottom">
                <!-- Comments collapse-->
                <div class="collapse" id="commentsCollapse" style="max-width: 54rem;">
                  <!-- Comment-->
                  <div class="border-bottom py-4 mt-2 mb-4">
                    <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/08.jpg" width="48" alt="Comment author">
                      <div class="ps-3">
                        <h6 class="mb-0">Albert Flores</h6><span class="fs-sm text-muted">5 hours ago</span>
                      </div>
                    </div>
                    <p class="pb-2 mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tellus lectus, tempus eu urna eu, imperdiet dignissim augue. Aliquam fermentum est a ligula bibendum, ac gravida ipsum dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur suscipit quam ut velit condimentum, nec mollis risus semper. Curabitur quis mauris eget ligula tincidunt venenatis. Sed congue pulvinar hendrerit.</p>
                    <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
                  </div>
                  <!-- Comment-->
                  <div class="border-bottom pt-2 pb-4">
                    <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/11.jpg" width="48" alt="Comment author">
                      <div class="ps-3">
                        <h6 class="mb-0">Jenny Wilson</h6><span class="fs-sm text-muted">2 days ago at 9:20</span>
                      </div>
                    </div>
                    <p class="pb-2 mb-0">Pellentesque urna pharetra, quis maecenas. Sit dolor amet nulla aenean eu, ac. Nisl mi tempus, iaculis viverra vestibulum scelerisque imperdiet montes mauris massa elit pretium elementum eget tortor quis</p>
                    <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
                    <!-- Comment reply-->
                    <div class="card card-body border-0 bg-secondary mt-4">
                      <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/10.jpg" width="48" alt="Comment author">
                        <div class="ps-3">
                          <h6 class="mb-0">Ralph Edwards</h6><span class="fs-sm text-muted">2 days ago at 11:45</span>
                        </div>
                      </div>
                      <p class="mb-0"><a class="fw-bold text-decoration-none" href="#">@Jenny Wilson</a> Massa morbi duis et ornare urna dictum vestibulum pulvinar nunc facilisis ornare id at at ut arcu integer tristique placerat non turpis nibh turpis ullamcorper est porttitor.</p>
                    </div>
                  </div>
                  <!-- Comment-->
                  <div class="pt-4 mt-2 mb-2">
                    <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/07.jpg" width="48" alt="Comment author">
                      <div class="ps-3">
                        <h6 class="mb-0">Esther Howard</h6><span class="fs-sm text-muted">May 19, 2022</span>
                      </div>
                    </div>
                    <p class="pb-2 mb-0">Donec et sollicitudin tellus. Duis maximus, dui eget egestas mattis, purus ex tempor nulla, quis tempor sapien neque at nisl. Aliquam eu nisi ut nisl ultrices posuere. Praesent dignissim efficitur nisi, a hendrerit ipsum elementum sit amet. Vivamus non ante nisl. Nunc faucibus velit at eros mollis semper.</p>
                    <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
                  </div>
                </div>
                <!-- Comments toggle-->
                <div class="nav">
                  <button class="btn-more nav-link collapsed w-100 justify-content-center p-3" type="button" data-bs-toggle="collapse" data-bs-target="#commentsCollapse" aria-expanded="false" aria-controls="commentsCollapse" data-show-label="리뷰 보기" data-hide-label="리뷰 숨기기"><span class="fw-normal opacity-70 ms-1">(4)</span></button>
                </div>
              </div>
            </section>
      <!-- <section class="container pb-4 pb-md-5 mb-lg-4">
        <div class="bg-size-cover bg-repeat-0 bg-position-center rounded-1 mb-md-2 py-xl-4 py-xxl-5" style="background-image: url(assets/img/shop/single/01.jpg);">
          <div class="row py-lg-5">
            <div class="col-md-8 offset-md-3 col-lg-6 offset-lg-5 col-xl-5 offset-xl-6 py-5">
              <div class="bg-light rounded-1 mx-4 p-4 p-md-5">
                <div class="py-3 p-sm-3">
                  <h2 class="h3 mb-sm-4">Scented candle</h2>
                  <p class="mb-0">Ut sit at orci cursus gravida pretium proin nulla id purus, placerat eget mauris eu ac volutpat facilisi eget morbi ullamcorper turpis nisi aconsequat cursus malesuada leo ultrices nisl dictumst turpis tortor sem amet, euismod aliquam, lacus laoreet dui facilisi morbi ullamcorper turpis nisi aconsequat cursus volutpat facilisi eget.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> -->
      <!-- Dscription section #2-->
      <!-- <section class="container pb-5 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
        <div class="row align-items-center pb-md-3">
          <div class="col-md-6 col-lg-5 mb-4 mb-md-0"><img class="rounded-1" src="assets/img/shop/single/02.jpg" alt="Image"></div>
          <div class="col-md-6 col-lg-5 offset-lg-1">
            <div class="ps-md-4 ps-lg-0">
              <h2 class="h3 mb-sm-4">Description</h2>
              <p class="mb-4 mb-lg-5">Ut sit at orci cursus gravida pretium proin nulla id purus, placerat eget mauris eu ac volutpat facilisi eget morbi ullamcorper turpis nisi aconsequat cursus malesuada leo ultrices nisl dictumst turpis tortor sem eu ac volutpat facilisi eget morbi</p>
              <ul class="list-unstyled mb-0">
                <li class="mb-3">Weight:<span class="text-dark fw-semibold ms-2">140 - 440 gramms</span></li>
                <li class="mb-3">Material:<span class="text-dark fw-semibold ms-2">Concrete bowl</span></li>
                <li class="mb-3">Duration:<span class="text-dark fw-semibold ms-2">60 hours of comfort and combustion</span></li>
                <li class="mb-3">Composition:<span class="text-dark fw-semibold ms-2">100% soy wax, cotton wick</span></li>
                <li>Country:<span class="text-dark fw-semibold ms-2">Frances</span></li>
              </ul>
            </div>
          </div>
        </div>
      </section> -->
      <hr class="d-md-none mb-5">
      <!-- Relevant products carousel-->
      <section class="container pb-5 mb-lg-3 mb-xl-4 mb-xxl-5">
        <div class="d-flex align-items-center justify-content-between pb-4 mb-2 mb-md-3">
          <h2 class="h1 pt-1 mb-0">추천 상품</h2>
          <!-- Slider prev/next buttons-->
          <div class="d-flex">
            <button class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle ms-3" type="button" id="relevant-prev"><i class="ai-arrow-left"></i></button>
            <button class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-3" type="button" id="relevant-next"><i class="ai-arrow-right"></i></button>
          </div>
        </div>
        <!-- Slider (popular items)-->
        <div class="swiper pb-sm-2 pb-md-3" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;loop&quot;: true,
      &quot;navigation&quot;: {
        &quot;prevEl&quot;: &quot;#relevant-prev&quot;,
        &quot;nextEl&quot;: &quot;#relevant-next&quot;
      },
      &quot;breakpoints&quot;: {
        &quot;500&quot;: {
          &quot;slidesPerView&quot;: 2
        },
        &quot;768&quot;: {
          &quot;slidesPerView&quot;: 3
        },
        &quot;1000&quot;: {
          &quot;slidesPerView&quot;: 4
        }
      }
    }">
          <div class="swiper-wrapper">
                  
            <!-- Item-->
            <div class="swiper-slide">
            <div class="card-hover position-relative bg-secondary rounded-1  mb-4">
              <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
                <i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
              </button>
              <a class="d-block " href="shop-single.html">
                <img class="d-block mx-auto object-fit: cover;" src="https://blog.kakaocdn.net/dn/c93wPN/btrao7BzrpV/lkkqYbvkcIGQ0LvLwUEk31/img.jpg"  style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
              </a>
            </div>
            <div class="d-flex mb-1">
              <h3 class="h6 mb-0"><a href="shop-single.html">개운죽</a></h3>
              <div class="d-flex ps-2 mt-n1 ms-auto">

              </div>
            </div>
            <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
              <del class="fs-sm text-muted">$35.00</del>
              <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
            </div>
          </div>

          <!-- Item-->
            <!-- Item-->
            <div class="swiper-slide">
            <div class="card-hover position-relative bg-secondary rounded-1  mb-4">
              <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
                <i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
              </button>
              <a class="d-block " href="shop-single.html">
                <img class="d-block mx-auto object-fit: cover;" src="https://blog.kakaocdn.net/dn/c93wPN/btrao7BzrpV/lkkqYbvkcIGQ0LvLwUEk31/img.jpg"  style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
              </a>
            </div>
            <div class="d-flex mb-1">
              <h3 class="h6 mb-0"><a href="shop-single.html">개운죽</a></h3>
              <div class="d-flex ps-2 mt-n1 ms-auto">

              </div>
            </div>
            <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
              <del class="fs-sm text-muted">$35.00</del>
              <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
            </div>
          </div>

      <!-- Item-->
      <div class="swiper-slide">
      <div class="card-hover position-relative bg-secondary rounded-1  mb-4">
      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
      <i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
      </button>
      <a class="d-block " href="shop-single.html">
      <img class="d-block mx-auto object-fit: cover;" src="https://blog.kakaocdn.net/dn/c93wPN/btrao7BzrpV/lkkqYbvkcIGQ0LvLwUEk31/img.jpg"  style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
      </a>
      </div>
      <div class="d-flex mb-1">
      <h3 class="h6 mb-0"><a href="shop-single.html">개운죽</a></h3>
      <div class="d-flex ps-2 mt-n1 ms-auto">

      </div>
      </div>
      <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
      <del class="fs-sm text-muted">$35.00</del>
      <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
      </div>
      </div>

          <!-- Item-->
          <div class="swiper-slide">
            <div class="card-hover position-relative bg-secondary rounded-1  mb-4">
              <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
                <i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
              </button>
              <a class="d-block " href="shop-single.html">
                <img class="d-block mx-auto object-fit: cover;" src="https://cdn.edujin.co.kr/news/photo/202004/32873_59244_305.jpg"  style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
              </a>
            </div>
            <div class="d-flex mb-1">
              <h3 class="h6 mb-0"><a href="shop-single.html">개운죽</a></h3>
              <div class="d-flex ps-2 mt-n1 ms-auto">

              </div>
            </div>
            <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
              <del class="fs-sm text-muted">$35.00</del>
              <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
            </div>
          </div>

      <!-- Item-->
      <div class="swiper-slide">
      <div class="card-hover position-relative bg-secondary rounded-1  mb-4">
      <button class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0" type="button">
      <i class="ai-heart fs-xl d-dark-mode-none"></i><i class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
      </button>
      <a class="d-block " href="shop-single.html">
      <img class="d-block mx-auto object-fit: cover;" src="https://blog.kakaocdn.net/dn/c93wPN/btrao7BzrpV/lkkqYbvkcIGQ0LvLwUEk31/img.jpg"  style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
      </a>
      </div>
      <div class="d-flex mb-1">
      <h3 class="h6 mb-0"><a href="shop-single.html">개운죽</a></h3>
      <div class="d-flex ps-2 mt-n1 ms-auto">

      </div>
      </div>
      <div class="d-flex align-items-center"><span class="me-2">$21.00</span>
      <del class="fs-sm text-muted">$35.00</del>
      <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
      </div>
      </div>

        </div>
      </div>
      </section>
      <!-- Features (carousel on screens < 992px)-->
      <section class="container border-top py-5 mb-1 mb-sm-2 mb-md-4 mb-lg-5">
        <div class="swiper" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;pagination&quot;: {
        &quot;el&quot;: &quot;.swiper-pagination&quot;,
        &quot;clickable&quot;: true
      },
      &quot;breakpoints&quot;: {
        &quot;400&quot;: {
          &quot;slidesPerView&quot;: 2,
          &quot;spaceBetween&quot;: 24
        },
        &quot;700&quot;: {
          &quot;slidesPerView&quot;: 3,
          &quot;spaceBetween&quot;: 30
        },
        &quot;991&quot;: {
          &quot;slidesPerView&quot;: 4,
          &quot;spaceBetween&quot;: 40
        }
      }
    }">
          <div class="swiper-wrapper">
            <!-- Item-->
            <div class="swiper-slide text-center text-sm-start">
              <div class="text-primary mb-3 mb-sm-4">
                <svg width="40" height="40" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                  <path d="M37.7794 10.6909L20.2794 1.94092C20.1926 1.89757 20.097 1.875 20 1.875C19.903 1.875 19.8074 1.89757 19.7206 1.94092L2.22063 10.6909C2.11674 10.7428 2.02936 10.8227 1.96832 10.9215C1.90727 11.0203 1.87496 11.1341 1.87501 11.2503V28.7503C1.87437 28.867 1.90641 28.9815 1.96749 29.0809C2.02857 29.1803 2.11626 29.2606 2.22063 29.3128L19.7206 38.0628C19.8074 38.1061 19.903 38.1287 20 38.1287C20.097 38.1287 20.1926 38.1061 20.2794 38.0628L37.7794 29.3128C37.8838 29.2606 37.9714 29.1803 38.0325 29.0809C38.0936 28.9815 38.1256 28.867 38.125 28.7503V11.2503C38.1251 11.1341 38.0928 11.0203 38.0317 10.9215C37.9706 10.8227 37.8833 10.7428 37.7794 10.6909ZM20 19.3015L15.1144 16.8584L30.7306 8.56279L36.1056 11.2503L20 19.3015ZM10.1144 14.3584L25.7306 6.06279L29.3556 7.87529L13.7413 16.1722L10.1144 14.3584ZM9.37501 15.3865L13.125 17.2615V22.2415L11.6919 20.8084C11.5747 20.6912 11.4158 20.6253 11.25 20.6253H9.37501V15.3865ZM20 3.19904L24.3575 5.37529L8.74126 13.6722L3.89751 11.2503L20 3.19904ZM3.12501 12.2615L8.12501 14.7615V21.2503C8.12501 21.416 8.19086 21.575 8.30807 21.6922C8.42528 21.8094 8.58425 21.8753 8.75001 21.8753H10.9913L13.3081 24.1922C13.3955 24.2795 13.5069 24.339 13.6281 24.3632C13.7493 24.3873 13.875 24.3749 13.9892 24.3276C14.1034 24.2803 14.201 24.2002 14.2696 24.0974C14.3383 23.9947 14.375 23.8739 14.375 23.7503V17.8865L19.375 20.3865V36.489L3.12501 28.364V12.2615ZM20.625 36.489V20.3865L36.875 12.2615V28.364L20.625 36.489Z" fill="currentColor"></path>
                </svg>
              </div>
              <h3 class="h5 mb-2 mb-sm-3">Fast and free delivery</h3>
              <p class="fs-sm mb-0">Free delivery for all orders over $200 honcus egestas lorem honcus egestas</p>
            </div>
            <!-- Item-->
            <div class="swiper-slide text-center text-sm-start">
              <div class="text-primary mb-3 mb-sm-4">
                <svg width="40" height="40" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                  <path d="M38 27.4c-1.5 3.5-4 6.6-7.2 8.7s-6.9 3.3-10.8 3.3c-3.3 0-6.5-.8-9.4-2.4-2.4-1.3-4.4-3.1-6-5.2v3.1c0 .2-.1.3-.2.4a.76.76 0 0 1-.4.2.76.76 0 0 1-.4-.2c-.1-.1-.2-.2-.2-.4V30c0-.2.1-.3.2-.4 0 0 .1 0 .1-.1h0s.1 0 .1-.1h.1 4.8c.2 0 .3.1.4.2a.76.76 0 0 1 .2.4.76.76 0 0 1-.2.4.76.76 0 0 1-.4.2H5.1c2.3 3.3 5.7 5.7 9.6 6.9 4.2 1.3 8.8 1 12.8-.8s7.3-5 9.1-9c1.9-4 2.2-8.5 1-12.8C36.4 10.7 33.7 7 30 4.6s-8.1-3.4-12.5-2.8C13.1 2.5 9.1 4.7 6.2 8s-4.5 7.6-4.5 12c0 .2-.1.3-.2.4a.76.76 0 0 1-.4.2c-.2 0-.3-.1-.4-.2s-.2-.2-.2-.4c0-3.8 1.1-7.6 3.3-10.8S9 3.5 12.6 2C16.1.6 20 .2 23.8 1s7.2 2.6 10 5.3c2.7 2.7 4.6 6.2 5.3 10 .7 3.7.3 7.6-1.1 11.1zm-14.1-3.8c0 1-.4 2-1.1 2.8-.6.5-1.3.9-2 1.1v.7c0 .2-.1.4-.2.5s-.3.2-.5.2-.4-.1-.5-.2-.2-.3-.2-.5v-.7a3.09 3.09 0 0 1-2-1.1c-.7-.7-1.1-1.7-1.1-2.8 0-.2.1-.4.2-.5s.3-.2.5-.2.4.1.5.2.2.3.2.5c0 .7.3 1.3.7 1.8.5.5 1.1.7 1.8.7s1.3-.3 1.8-.7c.5-.5.7-1.1.7-1.8s-.3-1.8-2.7-2.5c-3-.9-3.7-2.6-3.7-3.8 0-1 .4-2 1.1-2.8.6-.6 1.3-.9 2-1.1v-.7c0-.2.1-.4.2-.5s.3-.2.5-.2.4.1.5.2.2.3.2.5v.7a3.09 3.09 0 0 1 2 1.1c.7.7 1.1 1.7 1.1 2.8 0 .2-.1.4-.2.5s-.3.2-.5.2-.4-.1-.5-.2-.2-.3-.2-.5c0-.7-.3-1.3-.7-1.8-.5-.5-1.1-.7-1.8-.7s-1.3.3-1.8.7c-.5.5-.7 1.1-.7 1.8 0 .4 0 1.7 2.7 2.5 2.4.7 3.7 2 3.7 3.8z" fill="currentColor"></path>
                </svg>
              </div>
              <h3 class="h5 mb-2 mb-sm-3">Money back guarantee</h3>
              <p class="fs-sm mb-0">We return money within 30 days honcus egestas lorem honcus egestas</p>
            </div>
            <!-- Item-->
            <div class="swiper-slide text-center text-sm-start">
              <div class="text-primary mb-3 mb-sm-4">
                <svg width="40" height="40" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                  <path d="M33.6825 13.683C33.6825 6.12609 27.5564 0 19.9995 0C12.4426 0 6.31646 6.12609 6.31646 13.683C4.36283 13.9263 2.51562 15.2033 2.51562 18.168V25.3136C2.51562 28.6583 4.85694 29.8746 7.07663 29.8746H9.28111C9.70091 29.8746 10.0413 29.5342 10.0413 29.1144V14.3976C10.0413 13.9778 9.70091 13.6374 9.28111 13.6374H7.83679C7.83679 6.92018 13.2823 1.47472 19.9995 1.47472C26.7167 1.47472 32.1621 6.92018 32.1621 13.6374H30.7178C30.298 13.6374 29.9577 13.9778 29.9577 14.3976V29.0916C29.9577 29.5114 30.298 29.8518 30.7178 29.8518H32.1621C31.9493 35.0741 29.4407 36.298 24.4312 36.5184V36.0091C24.4312 35.1694 23.7506 34.4888 22.9109 34.4888H18.1295C17.2898 34.4888 16.6091 35.1694 16.6091 36.0091V38.4797C16.6091 39.3194 17.2898 40 18.1295 40H22.9261C23.7658 40 24.4464 39.3194 24.4464 38.4797V38.0388C29.2659 37.8183 33.4316 36.8225 33.6825 29.8062C35.6361 29.5629 37.4833 28.2858 37.4833 25.3212V18.1756C37.4833 15.1957 35.6437 13.9263 33.6825 13.683ZM8.52094 15.1045V28.3314H7.03862C5.91357 28.3314 3.99795 27.9361 3.99795 25.2908V18.1452C3.99795 15.5226 5.89077 15.1045 7.03862 15.1045H8.52094ZM22.9261 37.3318V38.4873H18.1295V36.0167H22.9261V37.3318ZM35.963 25.3136C35.963 27.9361 34.0702 28.3542 32.9223 28.3542H31.478V15.1577H32.9603C34.0854 15.1577 36.001 15.553 36.001 18.1984L35.963 25.3136Z" fill="currentColor"></path>
                </svg>
              </div>
              <h3 class="h5 mb-2 mb-sm-3">24/7 customer support</h3>
              <p class="fs-sm mb-0">Friendly 24/7 customer support honcus egestas lorem honcus egestas</p>
            </div>
            <!-- Item-->
            <div class="swiper-slide text-center text-sm-start">
              <div class="text-primary mb-3 mb-sm-4">
                <svg width="40" height="40" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                  <path d="M35.1422 8.0989L20.1085 0.0881401C19.8855 -0.0308936 19.6182 -0.0292231 19.3968 0.0923166L4.77905 8.10308C4.53931 8.23464 4.39062 8.48607 4.39062 8.75964V19.2237C4.3994 27.8255 9.49571 35.6074 17.377 39.0535L19.406 39.9377C19.5956 40.0204 19.8115 40.0208 20.0016 39.9385L22.2879 38.9512C30.3153 35.5798 35.5378 27.7228 35.5386 19.0162V8.75964C35.5386 8.48315 35.3862 8.22879 35.1422 8.0989ZM34.0417 19.0162C34.04 27.1226 29.1764 34.4371 21.7019 37.5742L21.6969 37.5767L19.7059 38.4362L17.9759 37.6815C10.6397 34.4738 5.89546 27.2307 5.88711 19.2237V9.20278L19.7614 1.59882L34.0417 9.20821V19.0162Z" fill="currentColor"></path>
                  <path d="M14.2398 18.7389C13.9713 18.4244 13.4989 18.3873 13.1844 18.6558C12.8699 18.924 12.8327 19.3967 13.1013 19.7108L17.0549 24.3406C17.3188 24.6497 17.7812 24.6919 18.0961 24.4354L27.3039 16.9442C27.6247 16.6836 27.6731 16.2121 27.4121 15.8913C27.1514 15.571 26.6799 15.5221 26.3591 15.7831L17.7185 22.8124L14.2398 18.7389Z" fill="currentColor"></path>
                </svg>
              </div>
              <h3 class="h5 mb-2 mb-sm-3">Secure online payment</h3>
              <p class="fs-sm mb-0">We possess SSL / Secure сertificate honcus egestas lorem honcus egestas</p>
            </div>
          </div>
          <!-- Pagination (Bullets)-->
          <div class="swiper-pagination position-relative bottom-0 pt-1 mt-4 d-lg-none"></div>
        </div>
      </section>
    </main>
  </body>
  <jsp:include page="/WEB-INF/views/common/footer.jsp" />

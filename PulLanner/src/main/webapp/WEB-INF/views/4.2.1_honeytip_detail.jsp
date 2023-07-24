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
            <li class="breadcrumb-item active" aria-current="page">글보기</li>
          </ol>
        </nav>
        <div class="row">
          <div style="padding-left: 100px; padding-right: 100px;">
            <!-- Post title + post meta-->
            <h1 class="pb-2 pb-lg-3">산세베리아는 이게 정석입니다.
              <button type="button" class="btn btn-outline-info btn-icon rounded-pill" style="float:right; margin-left:20px" data-bs-toggle="tooltip" data-bs-placement="top" title="즐겨찾기">
                <i class="ai-bookmark"></i>
              </button>
              <button type="button" class="btn btn-secondary btn-icon" style="float:right" data-bs-toggle="tooltip" data-bs-placement="top" title="수정하기">
                <i class="ai-edit-alt"></i>
              </button>
            </h1>
            <div class="d-flex flex-wrap align-items-center justify-content-between border-bottom mb-4">
              <div class="d-flex align-items-center mb-4 me-4"><span class="fs-sm me-2">By:</span><a class="nav-link position-relative fw-semibold p-0" href="#author" data-scroll data-scroll-offset="80">Darlene Robertson<span class="d-block position-absolute start-0 bottom-0 w-100" style="background-color: currentColor; height: 1px;"></span></a></div>
            </div>
            <!-- Post content-->
            <!-- Slider with fade transition between slides -->
            <div class="swiper" data-swiper-options='{
              "effect": "fade",
              "loop": true,
              "navigation": {
                "prevEl": ".btn-prev",
                "nextEl": ".btn-next"
              }
            }'>
              <div class="swiper-wrapper">

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-info">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">First</div>
                  </div>
                </div>

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-danger">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">Second</div>
                  </div>
                </div>

                <!-- Item -->
                <div class="swiper-slide bg-light">
                  <div class="ratio ratio-16x9 bg-faded-warning">
                    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center display-5">Third</div>
                  </div>
                </div>
              </div>

              <!-- Prev button -->
              <button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle">
                <i class="ai-arrow-left"></i>
              </button>

              <!-- Next button -->
              <button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle">
                <i class="ai-arrow-rigsht"></i>
              </button>
            </div>
            <p class="fs-lg pt-2 pt-sm-3">Dolor laoreet fermentum lectus praesent aenean molestie mollis integer. Sem ullamcorper montes, lorem ullamcorper orci, pellentesque ipsum malesuada gravida. Donec imperdiet nulla suscipit in. Dignissim ornare ac lorem consectetur massa a. Pellentesque urna pharetra, quis maecenas. Sit dolor amet nulla aenean eu, ac. Nisl mi tempus, iaculis viverra vestibulum scelerisque imperdiet montes. Mauris massa elit pretium elementum eget tortor quis. Semper interdum lectus odio diam.</p>
            <p class="fs-lg mb-3">Ut pellentesque bibendum dignissim a molestie. Ultrices diam ut vel neque tincidunt eget. Sed ut quis sit semper nunc at etiam lacinia. Quam laoreet eget id sapien a pharetra, ornare diam dignissim. Lorem amet nisl, enim mi aenean mauris. Porta nisl a ultrices ut libero id. Gravida a mi neque, tristique justo, et pharetra. Laoreet nulla est nulla cras ac arcu sed mattis tristique. Morbi convallis suspendisse enim blandit massa. Cursus augue dui mattis morbi velit.</p>
            <h2 class="h4 mb-lg-4 pt-3 pt-md-4 pt-xl-5">Cursus augue dui mattis morbi velit</h2>
            <p class="fs-lg pb-2 pb-lg-0 mb-4 mb-lg-5">Proin non congue sem, sed tristique ante. Donec et sollicitudin tellus. Duis maximus, dui eget egestas mattis, purus ex tempor nulla, quis tempor sapien neque at nisl. Aliquam eu nisi ut nisl ultrices posuere. Praesent dignissim efficitur nisi, a hendrerit ipsum elementum sit amet. Vivamus non ante nisl. Nunc faucibus velit at eros mollis semper. Curabitur aliquam eros tellus, nec facilisis nisl finibus sit amet. Ut et dolor nec lorem gravida elementum.</p>
            <p class="fs-lg">Donec diam neque, efficitur vitae ante a, eleifend placerat est. Phasellus dapibus scelerisque diam, eu rhoncus lorem vulputate lobortis. Praesent pulvinar venenatis mauris, eget fringilla sem.</p>
            <hr>
            <!-- Comments-->
            <div class="pt-4 pt-xl-5 mt-4" id="comments">
              <h2 class="h1 py-lg-1 py-xl-3">(count) comments</h2>
              <!-- Comment-->
              <div class="border-bottom py-4 mt-2 mb-4">
                <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/08.jpg" width="48" alt="Comment author">
                  <div class="ps-3">
                    <h6 class="mb-0">Albert Flores</h6><span class="fs-sm text-muted">5 hours ago</span>
                  </div>
                </div>
                <p class="pb-2 mb-0">와 정말 좋은 꿀팁이네요 저도 이렇게 해봐야 겠어요!</p>
                <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
              </div>
              <!-- Comment-->
              <div class="border-bottom pt-2 pb-4">
                <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/11.jpg" width="48" alt="Comment author">
                  <div class="ps-3">
                    <h6 class="mb-0">Jenny Wilson</h6><span class="fs-sm text-muted">2 days ago at 9:20</span>
                  </div>
                </div>
                <p class="pb-2 mb-0">이거랑 비슷하게 해봤는데 제꺼는 왜 싱싱하지 않을까요 ㅠㅠ 뭐가 잘못된 건지 도통 모르겠어요</p>
                <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
                <!-- Comment reply-->
                <div class="card card-body border-0 bg-secondary mt-4">
                  <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/10.jpg" width="48" alt="Comment author">
                    <div class="ps-3">
                      <h6 class="mb-0">Ralph Edwards</h6><span class="fs-sm text-muted">2 days ago at 11:45</span>
                    </div>
                  </div>
                  <p class="mb-0"><a class="fw-bold text-decoration-none" href="#">@Jenny Wilson</a> 아마 영양제 양이 너무 많았거나 그래서 그럴거에요</p>
                </div>
              </div>
              <!-- Comment-->
              <div class="border-bottom py-4 mt-2 mb-4">
                <div class="d-flex align-items-center pb-1 mb-3"><img class="rounded-circle" src="assets/img/avatar/07.jpg" width="48" alt="Comment author">
                  <div class="ps-3">
                    <h6 class="mb-0">Esther Howard</h6><span class="fs-sm text-muted">May 19, 2022</span>
                  </div>
                </div>
                <p class="pb-2 mb-0">혹시 꽃집 운영하시나요? 식물에 대해서 굉장히 자세히 알고 계신것 같아요!</p>
                <button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">Reply<i class="ai-redo fs-xl ms-2"></i></button>
              </div>
              <!-- All comments button-->
              <div class="text-end pb-5 mb-lg-1 mb-xl-3"><a class="btn btn-link px-0" href="#">Show all comments<i class="ai-chevron-right fs-lg ms-1"></i></a></div>
              <!-- Comment form-->
              <div class="card border-0 bg-secondary pt-2 p-md-2 p-xl-3 p-xxl-4 mt-n3 mt-md-0">
                <div class="card-body">
                  <h2 class="pb-2 pb-lg-3 pb-xl-4">Leave a comment</h2>
                  <form class="row needs-validation g-4" novalidate>
                    <div class="col-12">
                      <label class="form-label" for="c-comment">Comment</label>
                      <textarea class="form-control" rows="4" placeholder="Type your comment here..." required id="c-comment"></textarea>
                      <div class="invalid-feedback">Please enter a comment message!</div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary" type="submit">Post a comment</button>
                    </div>
                  </form>
                </div>
              </div>
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
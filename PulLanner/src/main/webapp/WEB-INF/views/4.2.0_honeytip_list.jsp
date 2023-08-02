<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

      <!-- Page content-->
      <div class="container pt-5 pb-lg-5 pb-md-4 pb-2 my-5">
      
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">기르기 꿀팁</li>
          </ol>
        </nav>
        <div class="row mb-md-2 mb-xl-4">
        
          <!-- Blog posts-->
          <div class="col-lg-9 col-xl-8 pe-lg-4 pe-xl-0">
            <h1 class="pb-3 pb-lg-4">기르기 꿀팁<button type="button" class="btn btn-secondary btn-icon" 
              onClick="location.href='${path}/HoneyTip/write'" style="margin-left:45em" data-bs-toggle="tooltip" data-bs-placement="top" title="글쓰기"><i class="ai-edit-alt"></i>
            </button></h1>
            <div class="masonry-grid mb-2 mb-md-4 pb-lg-3" data-columns="2">
            
              <!-- Post-->
              <c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
              <article class="masonry-grid-item">
                <div class="card border-0 bg-secondary">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted"><fmt:formatDate type="both" dateStyle="full" value="${item.createDate}"/></span></div>
                    <h3 class="h4 card-title"><a href="${path}/HoneyTip/view?no=${item.BNo}">${item.title}</a></h3>
                    <p class="card-text">${item.content}</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#">
                      <h6 class="ps-3 mb-0">${item.id}</h6></a></div>
                </div>
              </article>
              </c:forEach>
              </c:if>
              <!-- Post-->
              <article class="masonry-grid-item">
                <div class="card border-0 bg-secondary"><a href="blog-single-v3.html"><img class="card-img-top" src="resources/assets/img/blog/grid/01.jpg" alt="Post image"></a>
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">12 hours ago</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Books</a></div>
                    <h3 class="h4 card-title"><a href="blog-single-v3.html">세번 죽이고 네번째 분양 드디어 성공</a></h3>
                    <p class="card-text">Vulputate auctor lacus imperdiet facilisi tristique nisl pulvinar porta diam duis odio</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="resources/assets/img/avatar/06.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Jenny Wilson</h6></a></div>
                </div>
              </article>
              <!-- Post-->
              <article class="masonry-grid-item">
                <div class="card border-0 bg-secondary">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">July 16, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="blog-single-v3.html">분갈이는 함부로 해선 안돼요</a></h3>
                    <p class="card-text">Pharetra in morbi quis is massa maecenas arcu vulputate pulvinar elit non nullage a, duis tortor mi massa ipsum in eu eu eget libero pulvinar elit vulputate...</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="resources/assets/img/avatar/12.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Guy Hawkins</h6></a></div>
                </div>
              </article>

 
            </div>
            
            <!-- Pagination-->
            <div class="row gy-3 align-items-center">
              <div class="col col-md-4 col-6 order-md-1 order-1">
                <div class="d-flex align-items-center"><span class="text-muted fs-sm">Show</span>
                  <select class="form-select form-select-flush w-auto">
                    <option value="6">6</option>
                    <option value="9">9</option>
                    <option value="12">12</option>
                    <option value="24">24</option>
                  </select>
                </div>
              </div>
              <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                <button class="btn btn-primary w-md-auto w-100" type="button">Load more posts</button>
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
          
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3 offset-xl-1">
            <div class="offcanvas-lg offcanvas-end" id="sidebarBlog">
              <div class="offcanvas-header">
                <h4 class="offcanvas-title">Sidebar</h4>
                <button class="btn-close ms-auto" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarBlog"></button>
              </div>
              <div class="offcanvas-body">
                <!-- Search box-->
                <div class="position-relative mb-4 mb-lg-5"><i class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                  <input class="form-control ps-5" type="search" placeholder="Enter keyword">
                </div>
                
                <!-- Category links-->
                <h4 class="pt-1 pt-lg-0 mt-lg-n2">Categories:</h4>
                <ul class="nav flex-column mb-lg-5 mb-4">
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="#">All categories<span class="fs-sm text-muted ms-2">(contents count)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="${path}/PlantProud">내 식물 자랑하기<span class="fs-sm text-muted ms-2">(contents count)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0 active" href="${path}/HoneyTip">기르기 꿀팁<span class="fs-sm text-muted ms-2">(contents count)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="${path}/Observe">관찰일지<span class="fs-sm text-muted ms-2">(contents count)</span></a></li>
                </ul>
                <!-- Featured posts widget-->
                <h4 class="pt-3 pt-lg-0 pb-1">인기글</h4>
                <div class="mb-lg-5 mb-4">
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="assets/img/blog/sidebar/01.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v1.html">Instagram trends that will definitely work</a></h4><span class="fs-sm text-muted">13 hours ago</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="assets/img/blog/sidebar/02.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v2.html">A session with a psychologist</a></h4><span class="fs-sm text-muted">May 12, 2022</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center"><img class="rounded" src="assets/img/blog/sidebar/03.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v3.html">How to look for inspiration for new goals</a></h4><span class="fs-sm text-muted">June 10, 2022</span>
                    </div>
                  </article>
                </div>
                <!-- Social buttons-->
                <h4 class="pt-3 pt-lg-0 pb-1">Join us:</h4>
                <div class="mt-n3 ms-n3 mb-lg-5 mb-4 pb-3 pb-lg-0"><a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle mt-3 ms-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mt-3 ms-3" href="#"><i class="ai-facebook"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-telegram rounded-circle mt-3 ms-3" href="#"><i class="ai-telegram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-twitter rounded-circle mt-3 ms-3" href="#"><i class="ai-twitter"></i></a></div>
                <!-- Banner-->
                <div class="position-relative mb-3">
                  <div class="ignore-dark-mode position-absolute w-100 text-center top-0 start-50 translate-middle-x pt-4" style="max-width: 15rem;">
                    <h3 class="h2 pt-3 mb-0">Your banner here!</h3>
                  </div><img class="rounded-5" src="assets/img/blog/sidebar/banner.jpg" alt="Banner">
                </div>
              </div>
            </div>
          </aside>
        </div>
      </div>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
    </main>
    
    
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
  </body>

   <jsp:include page="/WEB-INF/views/common/footer.jsp" />
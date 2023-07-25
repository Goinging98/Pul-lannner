<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

      <!-- Page content-->
      <div class="container pt-5 pb-md-4 pb-2 my-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
          <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">내 식물 자랑하기</li>
          </ol>
        </nav>
        <div class="row mb-md-2 mb-xl-4">
          <!-- Blog posts-->
          <div class="col-lg-9 pe-lg-4 pe-xl-5">
            <h1 class="pb-3 pb-lg-4">내 식물 자랑하기</h1>
            <!-- Post-->
            <article class="row g-0 border-0 mb-4 ">
              <a class="swiper-slide col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5" href="blog-single-v1.html" 
              style="background-image: url(resources/assets/img/blog/list/01.jpg); min-height: 14rem"></a>
              <div class="col-sm-7">
                <div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
                  <h3><a href="blog-single-v1.html">내 책상엔 이런 식물이 있지!</a></h3>
                  <p class="d-sm-none d-md-block">Morbi et massa fames ac scelerisque sit commodo dignissim faucibus vel quisque proin lectus et massa fames ac scelerisque fames velit diam sit...</p>
                  <div class="d-flex flex-wrap align-items-center mt-n2"><a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3" href="#">6<i class="ai-share fs-lg ms-1"></i></a><a class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2" href="#">12<i class="ai-message fs-lg ms-1"></i></a><span class="fs-xs opacity-20 mt-2 mx-3">|</span><span class="fs-sm text-muted mt-2">8 hours ago</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">Business</a></div>
                </div>
              </div>
            </article> 
            <!-- Post-->
            <article class="row g-0 border-0 pt-3 pt-sm-0 mb-4">
              <a class="col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5" href="blog-single-v2.html" 
              style="background-image: url(resources/assets/img/blog/list/02.jpg); min-height: 14rem"></a>
              <div class="col-sm-7">
                <div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
                  <h3><a href="blog-single-v2.html">저는 스투키가 참 좋아요</a></h3>
                  <p class="d-sm-none d-md-block">Sapien ultrices egestas at faucibus eu diam velit diam id amet nibh quam rutrum fermentum diam natoque scelerisque viverra viverra molestie fames...</p>
                  <div class="d-flex flex-wrap align-items-center mt-n2"><a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3" href="#">10<i class="ai-share fs-lg ms-1"></i></a><a class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2" href="#">4<i class="ai-message fs-lg ms-1"></i></a><span class="fs-xs opacity-20 mt-2 mx-3">|</span><span class="fs-sm text-muted mt-2">12 hours ago</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">Books</a></div>
                </div>
              </div>
            </article>
            <!-- Post-->
            <article class="row g-0 border-0 pt-3 pt-sm-0 mb-4"><a class="col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5" href="blog-single-v3.html" style="background-image: url(resources/assets/img/blog/list/03.jpg); min-height: 14rem"></a>
              <div class="col-sm-7">
                <div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
                  <h3><a href="blog-single-v3.html">꽃보다는 선인장이지~</a></h3>
                  <p class="d-sm-none d-md-block">Sapien ultrices egestas at faucibus eu diam velit diam id amet nibh quam rutrum diam fermentum diam natoque scelerisque viverra molestie fames...</p>
                  <div class="d-flex flex-wrap align-items-center mt-n2"><a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3" href="#">8<i class="ai-share fs-lg ms-1"></i></a><a class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2" href="#">5<i class="ai-message fs-lg ms-1"></i></a><span class="fs-xs opacity-20 mt-2 mx-3">|</span><span class="fs-sm text-muted mt-2">April 25, 2022</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">Travel</a></div>
                </div>
              </div>
            </article>
            <!-- Post-->
            <article class="row g-0 border-0 pt-3 pt-sm-0 mb-4"><a class="col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5" href="blog-single-v1.html" style="background-image: url(resources/assets/img/blog/list/04.jpg); min-height: 14rem"></a>
              <div class="col-sm-7">
                <div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
                  <h3><a href="blog-single-v1.html">처음 키워본 식물입니다.</a></h3>
                  <p class="d-sm-none d-md-block">Pharetra in morbi quis is massa maecenas arcu vulputate pulvinar elit non nullage a, duis tortor mi massa ipsum in eu eu eget libero pulvinar elit...</p>
                  <div class="d-flex flex-wrap align-items-center mt-n2"><a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3" href="#">11<i class="ai-share fs-lg ms-1"></i></a><a class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2" href="#">3<i class="ai-message fs-lg ms-1"></i></a><span class="fs-xs opacity-20 mt-2 mx-3">|</span><span class="fs-sm text-muted mt-2">May 12, 2022</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">Marketing</a></div>
                </div>
              </div>
            </article>
            <!-- Post-->
            <article class="row g-0 border-0 pt-3 pt-sm-0 mb-4"><a class="col-sm-5 bg-repeat-0 bg-size-cover bg-position-center rounded-5" href="blog-single-v2.html" style="background-image: url(resources/assets/img/blog/list/05.jpg); min-height: 14rem"></a>
              <div class="col-sm-7">
                <div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
                  <h3><a href="blog-single-v2.html">다시 살아났어요!!!</a></h3>
                  <p class="d-sm-none d-md-block">Egestas in neque scelerisque semper sit at eu cursus faucibus velit cras at aliquam sed dictum at at orci curabitur dictumst viverra non pharetra etiam non, vitae tristique eu in morbi felis morbi nulla fermentum diam natoque...</p>
                  <div class="d-flex flex-wrap align-items-center mt-n2"><a class="nav-link text-muted fs-sm fw-normal p-0 mt-2 me-3" href="#">19<i class="ai-share fs-lg ms-1"></i></a><a class="nav-link text-muted fs-sm fw-normal d-flex align-items-end p-0 mt-2" href="#">7<i class="ai-message fs-lg ms-1"></i></a><span class="fs-xs opacity-20 mt-2 mx-3">|</span><span class="fs-sm text-muted mt-2">December 15, 2022</span><span class="fs-xs opacity-20 mt-2 mx-3">|</span><a class="badge text-nav fs-xs border mt-2" href="#">TV shows</a></div>
                </div>
              </div>
            </article>
            <!-- Pagination-->
            <div class="row gy-3 align-items-center mt-lg-5 pt-2 pt-md-4 pt-lg-0">
              <div class="col col-md-4 col-6 order-md-1 order-1">
                <div class="d-flex align-items-center"><span class="text-muted fs-sm">Show</span>
                  <select class="form-select form-select-flush w-auto">
                    <option value="5">5</option>
                    <option value="10">10</option>
                    <option value="15">15</option>
                    <option value="25">25</option>
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
          <aside class="col-lg-3">
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
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="#">All categories<span class="fs-sm text-muted ms-2">(110)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0 active" href="blog-list-sidebar.html">내 식물 자랑하기<span class="fs-sm text-muted ms-2">(34)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="blog-grid-sidebar.html">기르기 꿀팁<span class="fs-sm text-muted ms-2">(8)</span></a></li>
                  <li class="mb-2"><a class="nav-link d-flex p-0" href="blog-list-sidebar-v2.html">관찰일지<span class="fs-sm text-muted ms-2">(45)</span></a></li>
                </ul>
                <!-- Featured posts widget-->
                <h4 class="pt-3 pt-lg-0 pb-1">인기글</h4>
                <div class="mb-lg-5 mb-4">
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="resources/assets/img/blog/sidebar/01.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v1.html">Instagram trends that will definitely work</a></h4><span class="fs-sm text-muted">13 hours ago</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center mb-4"><img class="rounded" src="resources/assets/img/blog/sidebar/02.jpg" width="92" alt="Post image">
                    <div class="ps-3">
                      <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v2.html">A session with a psychologist</a></h4><span class="fs-sm text-muted">May 12, 2022</span>
                    </div>
                  </article>
                  <article class="position-relative d-flex align-items-center"><img class="rounded" src="resources/assets/img/blog/sidebar/03.jpg" width="92" alt="Post image">
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
                  </div><img class="rounded-5" src="resources/assets/img/blog/sidebar/banner.jpg" alt="Banner">
                </div>
              </div>
            </div>
          </aside>
        </div>
      </div>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
    </main>

    <!-- Insert post-->
    <div class="container pb-md-4 pb-2 my-5">
      <h1 class="pb-3 pb-lg-4">내 식물 자랑하기</h1>
      <div class="col-lg-9 pe-lg-4 pe-xl-5">
        
        <!-- Floating label: Text input -->
        <label class="form-label">제목</label>
          <div class="form-floating mb-2">
            <input class="form-control" type="text" id="fl-text" placeholder="Title">
              <label for="fl-text">Title</label>
        </div>
        

        <!-- Floating label: Textarea -->
        <label class="form-label">내용</label>
        <div class="form-floating mb-2">
          <textarea class="form-control" id="fl-textarea" style="height: 120px;" placeholder="Your message"></textarea>
          <label for="fl-textarea">내 풀을 자랑해보세요!</label>
        </div>
        
        
        <!-- file input -->
        <label class="form-label">파일</label>
		<div class="insert mb-4">
		    <form method="POST" onsubmit="return false;" enctype="multipart/form-data">
		        <input type="file" onchange="addFile(this);" multiple />
		        <div class="file-list"></div>
		    </form>
		</div>
		
		<script>
		var fileNo = 0;
		var filesArr = new Array();

		/* 첨부파일 추가 */
		function addFile(obj){
		    var maxFileCnt = 5;   // 첨부파일 최대 개수
		    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
		    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
		    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

		    // 첨부파일 개수 확인
		    if (curFileCnt > remainFileCnt) {
		        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
		    } else {
		        for (const file of obj.files) {
		            // 첨부파일 검증
		            if (validation(file)) {
		                // 파일 배열에 담기
		                var reader = new FileReader();
		                reader.onload = function () {
		                    filesArr.push(file);
		                };
		                reader.readAsDataURL(file);

		                // 목록 추가
		                let htmlData = '';
		                htmlData += '<div id="file' + fileNo + '" class="filebox">';
		                htmlData += '   <div class="name">' + file.name;
		                htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far ai-circle-minus"></i></a></div>';
		                htmlData += '</div>';
		                $('.file-list').append(htmlData);
		                fileNo++;
		            } else {
		                continue;
		            }
		        }
		    }
		    // 초기화
		    document.querySelector("input[type=file]").value = "";
		}

		/* 첨부파일 검증 */
		function validation(obj){
		    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif'];
		    if (obj.name.length > 100) {
		        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
		        return false;
		    } else if (obj.size > (100 * 1024 * 1024)) {
		        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
		        return false;
		    } else if (obj.name.lastIndexOf('.') == -1) {
		        alert("확장자가 없는 파일은 제외되었습니다.");
		        return false;
		    } else if (!fileTypes.includes(obj.type)) {
		        alert("첨부가 불가능한 파일은 제외되었습니다.");
		        return false;
		    } else {
		        return true;
		    }
		}

		/* 첨부파일 삭제 */
		function deleteFile(num) {
		    document.querySelector("#file" + num).remove();
		    filesArr[num].is_delete = true;
		}

		/* 폼 전송 */
		function submitForm() {
		    // 폼데이터 담기
		    var form = document.querySelector("form");
		    var formData = new FormData(form);
		    for (var i = 0; i < filesArr.length; i++) {
		        // 삭제되지 않은 파일만 폼데이터에 담기
		        if (!filesArr[i].is_delete) {
		            formData.append("attach_file", filesArr[i]);
		        }
		    }

		    $.ajax({
		        method: 'POST',
		        url: '/register',
		        dataType: 'json',
		        data: formData,
		        async: true,
		        timeout: 30000,
		        cache: false,
		        headers: {'cache-control': 'no-cache', 'pragma': 'no-cache'},
		        success: function () {
		            alert("파일업로드 성공");
		        },
		        error: function (xhr, desc, err) {
		            alert('에러가 발생 하였습니다.');
		            return;
		        }
		    })
		}
		</script>
		<button type="button" class="btn btn-outline-primary btn-sm" style="margin:auto; display: block;">자랑하기!</button>
      </div>
	</div>


    
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
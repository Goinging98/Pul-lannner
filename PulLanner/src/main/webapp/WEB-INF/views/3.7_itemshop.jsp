<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<form name="searchForm" action="${path}/ItemShop" method="get">
      <input type="hidden" name="page" >
      <!-- Page content-->
      <div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
        <!-- Banner-->
        <div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #F2F2DF;">
          <div class="row align-items-center g-0 py-1">
            <div class="col-md-6 offset-xl-1 ">
              <div class="py-5 my-5 px-4 px-sm-5 pe-md-0 ps-xl-4" style="margin-left: 160px;">
                <p class="fs-xs  pt-3 pt-md-0 mb-3 mb-lg-4">2023.08.01 ~ 2023.08.31</p>
                <h2 class="h1 pb-2 pb-xl-3">구매하신 식물을 인증하면 <br><span class='text-primary'>포인트가 두배!!!</span></h2><a class="btn btn-sm btn-outline-dark ignore-dark-mode" href="#">리뷰 쓰러가기</a>
              </div>
            </div>
            <div class="col-md-6 col-xl-5 d-flex justify-content-end">
              <img src="https://www.karinsflorist.com/wp-content/uploads/2019/01/Romantic-Pastels-Bouquet-2.png"  style="position:relative; transform: rotate( 1rad ); margin-top: 140px; margin-right: 245px; height: 150px; width: auto;" alt="Banner">
              <img src="https://bucketplace-v2-development.s3.amazonaws.com/uploads/product_category/163150919176222081.png" style="position:absolute; margin-right: 250px; margin-top: 10px; height: 300px; width: auto;" alt="Banner">
            </div>
          </div>
        </div>
        
        <div class="row pb-2 pb-sm-4">
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3">
            <div class="offcanvas-lg offcanvas-start" id="shopSidebar">
              <div class="offcanvas-header">
                <h5 class="offcanvas-title">Filters</h5>
                <button class="btn-close" type="submit" type="button" data-bs-dismiss="offcanvas" data-bs-target="#shopSidebar"></button>
              </div>
              
              
              <div class=" mb-4" align="center">
              <div class="input-group" style="width: 280px;">
                <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="title"
                value="${paramMap.title}" type="text" />
              </div>
            </div>
            
              <div class="offcanvas-body pt-2 pt-lg-0 pe-lg-4">
                <!-- Categories (accordion with checkboxes)-->
                <h3 class="h5">Categories</h3>
                <div class="accordion accordion-alt pb-2 mb-4" id="shopCategories">
                 
                  <div class="accordion-item mb-0">
                    <h4 class="accordion-header">
                      <button class="accordion-button collapsed fs-xl fw-medium py-2" type="button" data-bs-toggle="collapse" data-bs-target="#pot" aria-expanded="false" aria-controls="pot"><span class="fs-base">화분 구매</span></button>
                    </h4>
                    <div class="accordion-collapse collapse" id="pot" data-bs-parent="#shopCategories">
                      <div class="accordion-body py-1 mb-1">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="clay-pot" name="kinds" value="토분" 
                          ${fn:contains(paramMap.kinds, '토분') ? 'checked':'' }>
                          <label class="form-check-label d-flex align-items-center" for="clay-pot">
                          <span class="text-nav fw-medium">토분</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="ceramics" name="kinds" value="도자기"
                          ${fn:contains(paramMap.kinds, '도자기') ? 'checked':'' }>
                          <label class="form-check-label d-flex align-items-center" for="ceramics">
                          <span class="text-nav fw-medium">도자기</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="plastic" name="kinds" value="플라스틱"
                          ${fn:contains(paramMap.kinds, '플라스틱') ? 'checked':'' }>
                          <label class="form-check-label d-flex align-items-center" for="plastic">
                          <span class="text-nav fw-medium">플라스틱</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="cement" name="kinds" value="시멘트"
                          ${fn:contains(paramMap.kinds, '시멘트') ? 'checked':'' }>
                          <label class="form-check-label d-flex align-items-center" for="cement">
                          <span class="text-nav fw-medium">시멘트</span></label>
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
                          <label class="form-check-label d-flex align-items-center" for="care-all"><span class="text-nav fw-medium">모종삽</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="repotting">
                          <label class="form-check-label d-flex align-items-center" for="repotting"><span class="text-nav fw-medium">영양제</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="water">
                          <label class="form-check-label d-flex align-items-center" for="water"><span class="text-nav fw-medium">살충제</span></label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="temp">
                          <label class="form-check-label d-flex align-items-center" for="temp"><span class="text-nav fw-medium">흙</span></label>
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
            
            
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
              <!-- Item-->
              <c:forEach var="item" items="${list}">
              <div class="col pb-2 pb-sm-3">
                <div class="card-hover position-relative bg-secondary rounded-2 p-3 mb-4" >
                  <div class="swiper swiper-nav-onhover d-flex justify-content-center" style="max-width: 100%; max-height: 300px;" data-swiper-options="{&quot;loop&quot;: true, &quot;navigation&quot;: {&quot;prevEl&quot;: &quot;.btn-prev&quot;, &quot;nextEl&quot;: &quot;.btn-next&quot;}}">
                    <a class="swiper-wrapper" href="/Around/02_2seed-parcel-out.html">
					
					
                      <!-- Item -->
                    
                        <div class="rounded-2" style="background-image: url( '${item.image }' ); background-size: cover; background-repeat: no-repeat; background-position: center; width: 100%; height: 300px;" alt="Product">
                      </div>

                    </a>
                  </div>
                </div>
                <div class="d-flex mb-1">
                  <h3 class="h6 mb-0">
                  <a href="/Around/02_2seed-parcel-out.html" id="title" name="title"
                   type="text" placeholder="Search">${item.title}</a>
                  </h3>
                  <div class="d-flex ps-2 mt-n1 ms-auto">

                  </div>
                </div>
                <div class="d-flex align-items-center"><span class="me-2">
                <fmt:formatNumber value="${item.lprice }" pattern="#,###" />원</span>
                  <div class="nav ms-auto" data-bs-toggle="tooltip" data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;" data-bs-placement="left" title="Add to cart"><a class="nav-link fs-lg py-2 px-1" href="#"><i class="ai-cart"></i></a></div>
                </div>
                
              </div>
            </c:forEach>
             

            </div>
            <!-- 페이지 -->
            <div class="row gy-3 align-items-center pt-3 pt-sm-4 mt-md-2">
              <div class="col col-md-4 col-6 order-md-1 order-1">
              </div>
              <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                <!-- <button class="btn btn-primary w-md-auto w-100" type="button">Load more products</button> -->
              </div>
              <div class="col col-md-4 col-6 order-md-3 order-2">
                <nav aria-label="Page navigation">
                  <ul class="pagination pagination-sm justify-content-end">
                  <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
                  <c:if test="${status.current == pageInfo.currentPage}">
                    <li class="page-item" aria-current="page"><span class="page-link">${status.current}<span class="visually-hidden">(current)</span></span></li>
                    </c:if>
                   <c:if test="${status.current != pageInfo.currentPage}"> 
                    <li class="page-item"><a class="page-link" href="movePage(${pageInfo.nextPage});">${status.current}</a></li>
                   </c:if>
                   </c:forEach>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
      </form>
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#shopSidebar"><i class="ai-filter me-2"></i>Filters</button>
  </body>
  
<script type="text/javascript">
		function movePage(page){
			searchForm.page.value = page;
			searchForm.submit();
		}
	</script>
      
      
 
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

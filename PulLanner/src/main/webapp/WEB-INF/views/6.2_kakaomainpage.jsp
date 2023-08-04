<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <!-- Hero (Banners + Slider)-->
    <section class="container mt-4 mb-grid-gutter">
      <div class="bg-faded-info rounded-3 py-4">
        <div class="row align-items-center">
          <div class="col-md-5">
            <div class="px-4 pe-sm-0 ps-sm-5"><span class="badge bg-danger">Limited Offer</span>
              <h3 class="mt-4 mb-1 text-body fw-light">All new</h3>
              <h2 class="mb-1">게이밍 로지텍 키보드 출시!!</h2>
              <p class="h5 text-body fw-light">니 티어에 잠이 오냐? 골딱이로 언제까지?<br>로지텍 키보드로는 다이아 쌉가능!!</p>
              <div class="countdown py-2 h4" data-countdown="07/01/2023 07:00:00 PM">
                <div class="countdown-days"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">d</span></div>
                <div class="countdown-hours"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">h</span></div>
                <div class="countdown-minutes"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">m</span></div>
                <div class="countdown-seconds"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">s</span></div>
              </div><a class="btn btn-accent" href="#">View offers<i class="ci-arrow-right fs-ms ms-1"></i></a>
            </div>
          </div>
          <div class="col-md-7"><img src="${path}/resources/images/img01.jpg" alt="iPad Pro Offer"></div>
        </div>
      </div>
    </section>


    <!-- Products grid (Trending products)-->
    <section class="container pt-2">
      <!-- Heading-->
      <div class="d-flex flex-wrap justify-content-between align-items-center pt-1 border-bottom pb-4 mb-4">
        <h2 class="h3 mb-0 pt-3 me-2">추천 상품</h2>
        <div class="pt-3"><a class="btn btn-outline-accent btn-sm" href="shop-grid-ls.html">More products<i
              class="ci-arrow-right ms-1 me-n1"></i></a></div>
      </div>
      <!-- Grid-->
      <div class="row pt-2 mx-n2">

		<c:forEach var="item" items="${plist1}">
		<!-- Product-->
        <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-2">
          <div class="card product-card">
            <div class="product-card-actions d-flex align-items-center">
              <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                title="Add to wishlist"><i class="ci-heart"></i></button>
            </div><a style="height:250px" class="card-img-top d-block overflow-hidden" href="${path}/shop/product?pno=${item.pno}">
              <img src="${item.image}" alt="Product"></a>
            <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="${path}/shop/product?pno=${item.pno}">${item.brand}</a>
              <h3 class="product-title fs-sm"><a href="${path}/shop/product?pno=${item.pno}">${item.title}</a></h3>
              <div class="d-flex justify-content-between">
                <div class="product-price"><span class="text-accent"> 
                	 <fmt:formatNumber value="${item.lprice }" pattern="#,###" />원
                </span></div>
                <div class="star-rating">
                    <c:forEach begin="1" end="${item.scoreAvg}">
	                    <i class="star-rating-icon ci-star-filled active"></i>
                    </c:forEach>
                    <c:forEach begin="1" end="${5 - item.scoreAvg}">
	                    <i class="star-rating-icon ci-star"></i>
                    </c:forEach>
                </div>
              </div>
            </div>
            
            <c:if test="${loginMember != null }">
            <div class="card-body card-body-hidden">
              <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button"
              	onclick="location.href='${path}/addCart?pno=${item.pno}'"
              ><i
                  class="ci-cart fs-sm me-1"></i>Add to Cart</button>
            </div>
            </c:if>
            
          </div>
          <hr class="d-sm-none">
        </div>
        </c:forEach>
      </div>
    </section>

    <!-- Product widgets-->
    <section class="container pb-2 pb-md-5 mt-3">
      <h2 class="h3 mb-0 pt-3 me-2">뉴스</h2>
      <div class="row">
		 <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">키보드 뉴스</h3>

			<c:forEach var="item" items="${nlist1}" >
            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="${item.originallink}">
                	${item.title }</a>
                </h6>
                <div class="widget-product-meta"><span class="text-accent">
                	<fmt:formatDate type="both" value="${item.pubDate}"/>
                </span></div>
              </div>
            </div>
			</c:forEach>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>
		
		 <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">마우스 뉴스</h3>

			<c:forEach var="item" items="${nlist2}" >
            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="${item.originallink}">
                	${item.title }</a>
                </h6>
                <div class="widget-product-meta"><span class="text-accent">
                	<fmt:formatDate type="both" value="${item.pubDate}"/>
                </span></div>
              </div>
            </div>
			</c:forEach>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>
		
		 <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">추천 뉴스</h3>

			<c:forEach var="item" items="${nlist3}" >
            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="${item.originallink}">
                	${item.title }</a>
                </h6>
                <div class="widget-product-meta"><span class="text-accent">
                	<fmt:formatDate type="both" value="${item.pubDate}"/>
                </span></div>
              </div>
            </div>
			</c:forEach>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>
		

      </div>
    </section>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    
    

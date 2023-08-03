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
			<li class="breadcrumb-item"><a href="${path}/ItemShop">아이템쇼핑</a></li>
			<li class="breadcrumb-item active" aria-current="page">${product.title}</li>
		</ol>
	</nav>
	
	<div class="row pb-sm-1 pb-md-4">
		<!-- Gallery-->
		<div class="col-md-6 gallery mb-3 mb-md-0">
			<!-- Item -->
			<div class="col justify-content-center align-items-center">
				<a href="${product.image}" class="gallery-item d-block card-hover">
					<div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-4 overflow-hidden zindex-2 opacity-0">
						<i class="ai-zoom-in fs-2 text-white position-relative zindex-2"></i>
						<div class="position-absolute bottom-0 start-0 w-100 text-center text-white fs-sm fw-medium zindex-2 pb-3">
							Image #1</div>
						<div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-40"></div>
					</div> 
					<img src="${product.image}" class="d-flex rounded-4 " alt="Image #1" style="min-width: 600px; min-height: auto;">
				</a>
			</div>
		</div>
		<!-- Product details-->
		<div class="col-md-6 col-xl-5 offset-xl-1">
			<div class="d-none d-md-block" style="margin-top: -90px;"></div>
			<div class="position-md-sticky top-0 ps-md-4 ps-lg-5 ps-xl-0">
				<div class="d-none d-md-block" style="padding-top: 90px;"></div>
				<div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
					<h3 class="h5 mb-1">${product.category2}</h3>
				</div>
				<h1 class="d-none d-md-inline-block pb-1 mb-2">${product.title}</h1>
				
				<div class="d-none d-md-flex align-items-center pb-3 mb-3">
					<div class="h3 mb-0 me-3">
						<fmt:formatNumber value="${product.lprice}" pattern="#,###" />
						원
					</div>
				</div>

				<form class="mb-grid-gutter" method="post">
					<div class="mb-3 d-flex align-items-center">
						<select class="form-select me-3" style="width: 5rem;">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						<div class="d-flex align-items-center">
						<a href="${path}/mypage/shoppingbag/addcart?pno=${product.pno}&returnURL=/shop/product?pno=${product.pno}">
							<button class="btn btn-lg btn-primary w-100 w-lg-auto me-2"
								type="button">
								<i class="ai-cart me-2 ms-n1"></i>Add to cart
							</button>
						</a>
							<div class="nav">
								<a class="nav-link fs-3 px-3" href="#" data-bs-toggle="tooltip" title="Add to Favorites"><i class="ai-heart"></i></a>
							</div>
						</div>
					</div>
				</form>


				<!-- Color button selector-->
				<a class="btn btn-link p-0" href="${product.link}">제품 상세보기<i class="ai-arrow-right ms-2"></i></a>
				<div class="d-flex pb-3">
					<div class="accordion-item mb-0">
						<h4 class="accordion-header">
							<button class="accordion-button fs-xl fw-medium py-2"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#difficulty" aria-expanded="true"
								aria-controls="difficulty">
								<span class="fs-base"> <i class="ai-chevrons-down"></i>&nbsp;상세
									카테고리
								</span>
							</button>
						</h4>
						<div class="accordion-collapse collapse show" id="difficulty"
							data-bs-parent="#shopCategories">
							<div class="accordion-body py-1 mb-1">
								<div class="form-check">
									<!-- <input class="form-check-input" type="checkbox" id="difficulty-all"> -->
									<label class="form-check-label d-flex align-items-center"
										for="difficulty-all"><span class="text-nav fw-medium">${product.category3}</span>
										<!-- <span class="fs-xs text-muted ms-auto">697</span> --> </label>
								</div>
								<div class="form-check">
									<!-- <input class="form-check-input" type="checkbox" checked id="beginner"> -->
									<label class="form-check-label d-flex align-items-center"
										for="beginner"><span class="text-nav fw-medium">${product.category4}</span>
										<!-- <span class="fs-xs text-muted ms-auto">234</span> --> </label>
								</div>
							</div>
						</div>
					</div>
					<!-- Weight button selector-->
					<div class="d-flex"></div>
					<!-- Sharing-->
					<div class="d-flex align-items-center"></div>
				</div>
			</div>
		</div>
</section>
<!-- Comments-->

<section class="container pt-xl-2 pb-5 mb-md-2 mb-lg-4 mb-xl-5" id="comments">
	<div class="border-top border-bottom">
		<!-- Comments collapse-->
		<div class="collapse" id="commentsCollapse" style="max-width: 54rem;">
			<!-- Comment-->
			<div class="border-bottom py-4 mt-2 mb-4">
				<div class="d-flex align-items-center pb-1 mb-3">
					<c:forEach var="item" items="${replyList}">
						<img class="rounded-circle" src="assets/img/avatar/08.jpg"
							width="48" alt="Comment author">
						<div class="ps-3" >
							<h6 class="mb-0" >${item.name}</h6>
							<span class="fs-sm text-muted"> <fmt:formatDate type="both" value="${item.createDate}" />
							</span>
						</div>
					</c:forEach>
				</div>
				
				
				<p class="pb-2 mb-0">${item.content }</p>
				<c:if test="${loginMember != null && loginMember.MNo == item.MNo}">
					<form class="text-end" action="${path}/shop/deleteReply"
						method="post">
						<input type="hidden" name="rno" value="${item.rno}"> <input
							type="hidden" name="pno" value="${item.pno}">
						<button class="nav-link fs-sm fw-semibold px-0 py-2" type="button">
							삭제<i class="ai-redo fs-xl ms-2"></i>
						</button>
					</form>
				</c:if>
			</div>
			<!-- Comment form-->
			<div class="card border-0 bg-secondary pt-2 p-md-2 p-xl-3 p-xxl-4 mt-n3 mt-md-0">
				<div class="card-body">
					<h2 class="pb-2 pb-lg-3 pb-xl-4">리뷰 쓰기</h2>
					<form class="needs-validation" action="${path}/shop/writeReply"
						method="post" novalidate>
						<div class="col-12">
							<label class="form-label" for="c-comment">Comment</label>
							<textarea class="form-control" rows="4"
								placeholder="Type your comment here..." required id="c-comment"></textarea>
							<div class="invalid-feedback">Please enter a comment
								message!</div>
						</div>
						<br>
						<div class="col-12">
							<c:if test="${loginMember == null}">
								<button class="btn btn-primary" type="submit">Post a
									comment</button>
							</c:if>
							<c:if test="${loginMember != null}">
								<button class="btn btn-primary" type="submit">Post a
									comment</button>
							</c:if>
						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- Comments toggle-->
		<div class="nav">
			<button class="btn-more nav-link collapsed w-100 justify-content-center p-3"
				type="button" data-bs-toggle="collapse" data-bs-target="#commentsCollapse" aria-expanded="false"
				aria-controls="commentsCollapse" data-show-label="리뷰 보기" data-hide-label="리뷰 숨기기"></button>
		</div>
	</div>
</section>


<hr class="d-md-none mb-5">
<!-- Relevant products carousel-->
<section class="container pb-5 mb-lg-3 mb-xl-4 mb-xxl-5">
	<div class="d-flex align-items-center justify-content-between pb-4 mb-2 mb-md-3">
		<h2 class="h1 pt-1 mb-0">추천 상품</h2>
		<!-- Slider prev/next buttons-->
		<div class="d-flex">
			<button class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle ms-3"
				type="button" id="relevant-prev">
				<i class="ai-arrow-left"></i>
			</button>
			<button class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-3"
				type="button" id="relevant-next">
				<i class="ai-arrow-right"></i>
			</button>
		</div>
	</div>
	<!-- Slider (popular items)-->
	    
	<div class="swiper pb-sm-2 pb-md-3"
		data-swiper-options="{
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
		<c:forEach var="item" items="${plist1}">
			<!-- Item-->
			<div class="swiper-slide">
					<a href="${path}/shop/product?pno=${item.pno}" style="text-decoration-line: none; color: black;"> 
				<div class="card-hover position-relative bg-secondary rounded-1  mb-4">
					<button
						class="btn btn-icon btn-sm btn-light bg-light border-0 rounded-circle position-absolute top-0 end-0 mt-3 me-3 zindex-5 opacity-0"
						type="button">
						<i class="ai-heart fs-xl d-dark-mode-none"></i><i
							class="ai-heart text-nav fs-xl d-none d-dark-mode-block"></i>
					</button>
					<img class="d-block " src="${item.image}" style="max-width: 280px; max-height: 280px; min-width: 280px; min-height: 280px;" alt="Product">
					
				</div>
				<div class="d-flex mb-1">
					<h3 class="h6 mb-0">${item.title}
					</h3>
					<div class="d-flex ps-2 mt-n1 ms-auto"></div>
				</div>
				<div class="d-flex align-items-center">
					<p class="me-2"> 
							<fmt:formatNumber value="${item.lprice }" pattern="#,###" />원</p>			
					<div class="nav ms-auto" data-bs-toggle="tooltip"
						data-bs-template="&lt;div class=&quot;tooltip fs-xs&quot; role=&quot;tooltip&quot;&gt;&lt;div class=&quot;tooltip-inner bg-light text-muted p-0&quot;&gt;&lt;/div&gt;&lt;/div&gt;"
						data-bs-placement="left" title="Add to cart">	
					</div>
				</div>
				</a>
			</div>

			</c:forEach>
		</div>
	</div>
	
</section>

</main>
</body>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

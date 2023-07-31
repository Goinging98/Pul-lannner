<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!-- Page content-->
<div
	class="d-none d-lg-block bg-secondary position-fixed top-0 start-0 h-100"
	style="width: 52.5%;"></div>
<form
	class="needs-validation container position-relative zindex-2 pt-5 pb-lg-5 pb-md-4 pb-2"
	novalidate>
	<div class="row">
		<div class="col-lg-6">
			<!-- Breadcrumb-->
			<nav aria-label="breadcrumb">
				<ol class="mt-5 pt-lg-3 pb-md-1 pb-lg-3 breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="shop-catalog.html">Shop</a></li>
					<li class="breadcrumb-item active" aria-current="page">장바구니</li>
				</ol>
			</nav>
			<h1 class="h2 pb-3">장바구니</h1>
			<!-- Checkout form fields-->
			<h3 class="fs-base fw-normal text-body text-uppercase pb-2 pb-sm-3">
				1.<span class="text-decoration-underline ms-1">배송 정보</span>
			</h3>
			<div class="row g-4 pb-4 pb-md-5 mb-3 mb-md-1">
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-fn">성</label> <input
						class="form-control form-control-lg" type="text" placeholder="성"
						required id="c-fn">
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-ln">이름</label> <input
						class="form-control form-control-lg" type="text" placeholder="이름"
						required id="c-ln">
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-email">이메일</label>
					<div class="position-relative">
						<i
							class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
						<input class="form-control form-control-lg ps-5" type="email"
							placeholder="이메일 주소" required id="c-email">
					</div>
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-phone">전화번호</label>
					<div class="position-relative">
						<i
							class="ai-phone fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
						<input class="form-control form-control-lg ps-5" type="tel"
							data-format="{&quot;numericOnly&quot;: true, &quot;delimiters&quot;: [&quot; &quot;, &quot; &quot;, &quot; &quot;], &quot;blocks&quot;: [3, 4, 4]}"
							placeholder="000-0000-0000" required id="c-phone">
					</div>
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-city">주소</label> <select
						class="form-select form-select-lg" required id="c-city">
						<option value="">주소를 입력하세요</option>
						<option value="Sydney">Sydney</option>
						<option value="Brussels">Brussels</option>

					</select>
				</div>

				<div class="col-12">
					<label class="form-label fs-base" for="c-address">상세주소</label> <input
						class="form-control form-control-lg" type="text" required
						id="c-address">
				</div>
				<div class="col-12">
					<label class="form-label fs-base" for="c-notes">요청사항 <span
						class='text-muted'>(선택)</span></label>
					<textarea class="form-control form-control-lg" rows="5"
						id="c-notes"></textarea>
				</div>
				<div class="col-12">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="same-address">
						<label class="form-check-label text-dark fw-medium"
							for="same-address">주소지와 같음</label>
					</div>
				</div>
			</div>
			<h3 class="fs-base fw-normal text-body text-uppercase pb-2 pb-sm-3">
				2.<span class="text-decoration-underline ms-1">배송 수단</span>
			</h3>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="shipping"
					id="standard"> <label
					class="form-check-label d-flex justify-content-between"
					for="standard"><span><span
						class="d-block fs-base text-dark fw-medium mb-1">표준 배송</span><span
						class="text-body">5~8 영업일 내 배송</span></span><span
					class="fs-base text-dark fw-semibold">8,000원</span></label>
			</div>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="shipping" checked
					id="express"> <label
					class="form-check-label d-flex justify-content-between"
					for="express"><span><span
						class="d-block fs-base text-dark fw-medium mb-1">급행 배송</span><span
						class="text-body">3~5 영업일 내 배송</span></span><span
					class="fs-base text-dark fw-semibold">15,000원</span></label>
			</div>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="shipping"
					id="local"> <label
					class="form-check-label d-flex justify-content-between" for="local"><span><span
						class="d-block fs-base text-dark fw-medium mb-1">지역 픽업</span><span
						class="text-body">1~2 영업일 내 배송</span></span><span
					class="fs-base text-dark fw-semibold">무료</span></label>
			</div>
			<h3
				class="fs-base fw-normal text-body text-uppercase mt-n4 mt-md-n3 pt-5 pb-2 pb-sm-3">
				3.<span class="text-decoration-underline ms-1">결제수단</span>
			</h3>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="payment" checked
					id="card"> <label class="form-check-label" for="card"><span><span
						class="d-block fs-base text-dark fw-medium mb-1">신용카드</span><span
						class="text-body">마스터카드, 비자카드 가능</span></span></label>
			</div>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="payment"
					id="cash"> <label class="form-check-label" for="cash"><span><span
						class="d-block fs-base text-dark fw-medium mb-1">배송 후 직접결제</span><span
						class="text-body">배송 완료와 동시에 지불</span></span></label>
			</div>
			<!-- Place an order button visible on screens > 991px-->
			<div class="d-none d-lg-block pt-5 mt-n3">
				<div class="form-check mb-4">
					<input class="form-check-input" type="checkbox" checked
						id="save-info"> <label class="form-check-label"
						for="save-info"><span class="text-muted">Your
							personal information will be used to process your order, to
							support your experience on this site and for other purposes
							described in the </span><a class="fw-medium" href="#">privacy policy</a></label>
				</div>
				<button class="btn btn-lg btn-primary" type="submit">주문하기</button>
			</div>
		</div>
		<!-- Order summary-->
		<div class="col-lg-5 offset-lg-1 pt-1">
			<h2 class="pb-2 pt-md-2 my-4 mt-lg-5">
				주문상세 <span class='fs-base fw-normal text-muted'>(4 items)</span>
			</h2>
			<!-- Item-->
			<div class="d-sm-flex align-items-center border-top py-4">
				<a
					class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-sm-2 p-xl-3 mb-2 mb-sm-0"
					href="shop-single.html"><img src="assets/img/shop/cart/07.jpg"
					width="110" alt="Product"></a>
				<div class="w-100 pt-1 ps-sm-4">
					<div class="d-flex">
						<div class="me-3">
							<h3 class="h5 mb-2">
								<a href="shop-single.html">신고니움</a>
							</h3>
							<div class="d-sm-flex flex-wrap">
								<div class="text-muted fs-sm me-3">
									색깔: <span class='text-dark fw-medium'>초록</span>
								</div>
								<div class="text-muted fs-sm me-3">
									무게: <span class='text-dark fw-medium'>300g</span>
								</div>
							</div>
						</div>
						<div class="text-end ms-auto">
							<div class="fs-5 mb-2">11,000원</div>
							<del class="text-muted ms-auto">15,000원</del>
						</div>
					</div>
					<div class="count-input ms-n3">
						<button class="btn btn-icon fs-xl" type="button" data-decrement>-</button>
						<input class="form-control" type="number" value="2" readonly>
						<button class="btn btn-icon fs-xl" type="button" data-increment>+</button>
					</div>
					<div class="nav justify-content-end mt-n5 mt-sm-n3">
						<a class="nav-link fs-xl p-2" href="#" data-bs-toggle="tooltip"
							title="Remove"><i class="ai-trash"></i></a>
					</div>
				</div>
			</div>
			<!-- Item-->
			<div class="d-sm-flex align-items-center border-top py-4">
				<a
					class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-sm-2 p-xl-3 mb-2 mb-sm-0"
					href="shop-single.html"><img src="assets/img/shop/cart/07.jpg"
					width="110" alt="Product"></a>
				<div class="w-100 pt-1 ps-sm-4">
					<div class="d-flex">
						<div class="me-3">
							<h3 class="h5 mb-2">
								<a href="shop-single.html">아티로스</a>
							</h3>
						</div>
						<div class="text-end ms-auto">
							<div class="fs-5 mb-2">23,000원</div>
						</div>
					</div>
					<div class="count-input ms-n3">
						<button class="btn btn-icon fs-xl" type="button" data-decrement>-</button>
						<input class="form-control" type="number" value="1" readonly>
						<button class="btn btn-icon fs-xl" type="button" data-increment>+</button>
					</div>
					<div class="nav justify-content-end mt-n5 mt-sm-n3">
						<a class="nav-link fs-xl p-2" href="#" data-bs-toggle="tooltip"
							title="Remove"><i class="ai-trash"></i></a>
					</div>
				</div>
			</div>
			<!-- Item-->
			<div class="d-sm-flex align-items-center border-top py-4">
				<a
					class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-sm-2 p-xl-3 mb-2 mb-sm-0"
					href="shop-single.html"><img src="assets/img/shop/cart/07.jpg"
					width="110" alt="Product"></a>
				<div class="w-100 pt-1 ps-sm-4">
					<div class="d-flex">
						<div class="me-3">
							<h3 class="h5 mb-2">
								<a href="shop-single.html">담배</a>
							</h3>
						</div>
						<div class="text-end ms-auto">
							<div class="fs-5 mb-2">47,000원</div>
						</div>
					</div>
					<div class="count-input ms-n3">
						<button class="btn btn-icon fs-xl" type="button" data-decrement>-</button>
						<input class="form-control" type="number" value="1" readonly>
						<button class="btn btn-icon fs-xl" type="button" data-increment>+</button>
					</div>
					<div class="nav justify-content-end mt-n5 mt-sm-n3">
						<a class="nav-link fs-xl p-2" href="#" data-bs-toggle="tooltip"
							title="Remove"><i class="ai-trash"></i></a>
					</div>
				</div>
			</div>
			<div class="border-top pt-4 mb-3">
				<div class="input-group input-group-sm border-dashed"
					style="max-width: 310px;">
					<input class="form-control text-uppercase" type="text"
						placeholder="XXX-XXX-XXX-XXX">
					<button class="btn btn-secondary" type="button">쿠폰 적용하기</button>
				</div>
			</div>
			<ul class="list-unstyled py-3 mb-0">
				<li class="d-flex justify-content-between mb-2">소계:<span
					class="fw-semibold ms-2">92,000원</span></li>
				<!-- <li class="d-flex justify-content-between mb-2">Taxes:<span class="fw-semibold ms-2">$8.00</span></li> -->
				<li class="d-flex justify-content-between mb-2">배송비:<span
					class="fw-semibold ms-2">15,000원</span></li>
			</ul>
			<div
				class="d-flex align-items-center justify-content-between border-top fs-xl pt-4">
				합계:<span class="fs-3 fw-semibold text-dark ms-2">107,000원</span>
			</div>
		</div>
	</div>
	<!-- Place an order button visible on screens < 992px-->
	<div class="d-lg-none pb-2 mt-2 mt-lg-0 pt-4 pt-lg-5">
		<div class="form-check mb-4">
			<input class="form-check-input" type="checkbox" checked
				id="save-info2"> <label class="form-check-label"
				for="save-info2"><span class="text-muted">Your
					personal information will be used to process your order, to support
					your experience on this site and for other purposes described in
					the </span><a class="fw-medium" href="#">privacy policy</a></label>
		</div>
		<button class="btn btn-lg btn-primary w-100 w-sm-auto" type="submit">Place
			an order</button>
	</div>
</form>
</main>
<!-- <div
	class="footer container position-relative zindex-2 pt-4 pt-xl-5 pb-4">
	<div class="fs-sm pb-1 pb-sm-3">
		<span class="opacity-70">&copy; All rights reserved. Made by </span><a
			class="nav-link d-inline fw-normal p-0"
			href="https://createx.studio/" target="_blank" rel="noopener">Createx
			Studio</a>
	</div>
</div> -->
<!-- Back to top button-->
<%-- <a class="btn-scroll-top" href="#top" data-scroll> <svg
		viewBox="0 0 40 40" fill="currentColor"
		xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor"
			stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
       --%>
      
 <div style="clear:both;"></div>     
      
<!-- Vendor scripts: js libraries and plugins-->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="assets/vendor/cleave.js/dist/cleave.min.js"></script>
<!-- Main theme script-->
<script src="assets/js/theme.min.js"></script>
</body>

<style>
.footer {
    flex-shrink: 0;
    z-index: 9;
}
</style>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />
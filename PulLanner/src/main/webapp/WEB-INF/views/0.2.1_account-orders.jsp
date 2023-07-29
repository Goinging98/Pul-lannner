<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">
		<!-- Sidebar (offcanvas on sreens < 992px)-->
		<aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
			<div class="position-lg-sticky top-0">
				<div class="d-none d-lg-block" style="padding-top: 105px;"></div>
				<div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
					<div class="offcanvas-body">
						<div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
							<img class="d-block rounded-circle mb-2" src="/resources/assets/img/avatar/02.jpg" width="80" alt="pic">
							<h3 class="h5 mb-1">${loginMember.name}</h3>
							<p class="fs-sm text-muted mb-0">${loginMember.id}</p>
						</div>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 글 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>풀레너</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/shoppingbag"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/favorites"><i class="ai-heart fs-5 opacity-60 me-2"></i>찜한 상품</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stararticle"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplant"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stargarden"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물원</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/overview"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/infochange"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/main"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a>
						</nav>
					</div>
				</div>
			</div>
		</aside>
		<!-- Page content-->
		<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
			<div class="d-flex align-items-center mb-4">
				<h1 class="h2 mb-0">주문내역</h1>
				<select class="form-select ms-auto" style="max-width: 200px;">
					<option value="All tme">배송 상태</option>
					<option value="In progress">배송 중</option>
					<option value="Delivered">배송완료</option>
					<option value="Canceled">취소</option>
				</select>
			</div>
			<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
				<div class="card-body pb-4">
					<!-- Orders accordion-->
					<div class="accordion accordion-alt accordion-orders" id="orders">

						<!-- Order 토글 닫힌 버전-->
						<div class="accordion-item border-top mb-0">
							<div class="accordion-header">
								<a
									class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed"
									href="#orderOne" data-bs-toggle="collapse"
									aria-expanded="false" aria-controls="orderOne">
									<div class="d-flex justify-content-between w-100"
										style="max-width: 440px;">
										<div class="me-3 me-sm-4">
											<div class="fs-sm text-muted">#78A6431D409</div>
											<span class="badge bg-faded-info text-info fs-xs">In
												progress</span>
										</div>
										<div class="me-3 me-sm-4">
											<div class="d-none d-sm-block fs-sm text-muted mb-2">Order
												date</div>
											<div class="d-sm-none fs-sm text-muted mb-2">Date</div>
											<div class="fs-sm fw-medium text-dark">Jan 27, 2022</div>
										</div>
										<div class="me-3 me-sm-4">
											<div class="fs-sm text-muted mb-2">Total</div>
											<div class="fs-sm fw-medium text-dark">$16.00</div>
										</div>
									</div>
									<div class="accordion-button-img d-none d-sm-flex ms-auto">
										<div class="mx-1">
											<img src="/resources/assets/img/account/orders/01.png"
												width="48" alt="Product">
										</div>
									</div>
								</a>
							</div>
							<div class="accordion-collapse collapse" id="orderOne"
								data-bs-parent="#orders">
								<div class="accordion-body">
									<div class="table-responsive pt-1">
										<table class="table align-middle w-100"
											style="min-width: 450px;">
											<tr>
												<td class="border-0 py-1 px-0">
													<div class="d-flex align-items-center">
														<a
															class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3"
															href="shop-single.html"><img
															src="/resources/assets/img/shop/cart/01.png" width="110"
															alt="Product"></a>
														<div class="ps-3 ps-sm-4">
															<h4 class="h6 mb-2">
																<a href="shop-single.html">Candle in concrete bowl</a>
															</h4>
															<div class="text-muted fs-sm me-3">
																Color: <span class='text-dark fw-medium'>Gray
																	night</span>
															</div>
														</div>
													</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Quantity</div>
													<div class="fs-sm fw-medium text-dark">1</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Price</div>
													<div class="fs-sm fw-medium text-dark">$16</div>
												</td>
												<td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Total</div>
													<div class="fs-sm fw-medium text-dark">$16</div>
												</td>
											</tr>
										</table>
									</div>
									<div class="bg-secondary rounded-1 p-4 my-2">
										<div class="row">
											<div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
												<div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
												<div class="fs-sm">Upon the delivery</div>
												<a class="btn btn-link py-1 px-0 mt-2" href="#"><i
													class="ai-time me-2 ms-n1"></i>Order history</a>
											</div>
											<div class="col-sm-7 col-md-5 mb-4 mb-md-0">
												<div class="fs-sm fw-medium text-dark mb-1">Delivery
													address:</div>
												<div class="fs-sm">
													401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J
													3H9, Canada
												</div>
											</div>
											<div class="col-md-4 col-lg-3 text-md-end">
												<button
													class="btn btn-sm btn-outline-primary w-100 w-md-auto"
													type="button">
													<i class="ai-star me-2 ms-n1"></i>Leave a review
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Order : 토글 오픈 버전 -->
						<div class="accordion-item border-top mb-0">
							<div class="accordion-header">
								<a
									class="accordion-button fs-4 fw-normal text-decoration-none py-3"
									href="#orderThree" data-bs-toggle="collapse"
									aria-expanded="true" aria-controls="orderThree">
									<div class="d-flex justify-content-between w-100"
										style="max-width: 440px;">
										<div class="me-3 me-sm-4">
											<div class="fs-sm text-muted">#34VB5540K83</div>
											<span class="badge bg-faded-primary text-primary fs-xs">Delivered</span>
										</div>
										<div class="me-3 me-sm-4">
											<div class="d-none d-sm-block fs-sm text-muted mb-2">Order
												date</div>
											<div class="d-sm-none fs-sm text-muted mb-2">Date</div>
											<div class="fs-sm fw-medium text-dark">Jul 10, 2022</div>
										</div>
										<div class="me-3 me-sm-4">
											<div class="fs-sm text-muted mb-2">Total</div>
											<div class="fs-sm fw-medium text-dark">$38.00</div>
										</div>
									</div>
									<div class="accordion-button-img d-none d-sm-flex ms-auto">
										<div class="mx-1">
											<img src="/resources/assets/img/account/orders/01.png"
												width="48" alt="Product">
										</div>
										<div class="mx-1">
											<img src="/resources/assets/img/account/orders/05.png"
												width="48" alt="Product">
										</div>
									</div>
								</a>
							</div>
							<div class="accordion-collapse collapse show" id="orderThree"
								data-bs-parent="#orders">
								<div class="accordion-body">
									<div class="table-responsive pt-1">
										<table class="table align-middle w-100"
											style="min-width: 450px;">
											<tr>
												<td class="border-0 py-1 px-0">
													<div class="d-flex align-items-center">
														<a
															class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3"
															href="shop-single.html"><img
															src="/resources/assets/img/shop/cart/01.png" width="110"
															alt="Product"></a>
														<div class="ps-3 ps-sm-4">
															<h4 class="h6 mb-2">
																<a href="shop-single.html">Candle in concrete bowl</a>
															</h4>
															<div class="text-muted fs-sm me-3">
																Color: <span class='text-dark fw-medium'>Gray
																	night</span>
															</div>
														</div>
													</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Quantity</div>
													<div class="fs-sm fw-medium text-dark">1</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Price</div>
													<div class="fs-sm fw-medium text-dark">$16</div>
												</td>
												<td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Total</div>
													<div class="fs-sm fw-medium text-dark">$16</div>
												</td>
											</tr>
											<tr>
												<td class="border-0 py-1 px-0">
													<div class="d-flex align-items-center">
														<a
															class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3"
															href="shop-single.html"><img
															src="/resources/assets/img/shop/cart/02.png" width="110"
															alt="Product"></a>
														<div class="ps-3 ps-sm-4">
															<h4 class="h6 mb-2">
																<a href="shop-single.html">Exquisite glass vase </a>
															</h4>
															<div class="text-muted fs-sm me-3">
																Color: <span class='text-dark fw-medium'>Rose</span>
															</div>
														</div>
													</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Quantity</div>
													<div class="fs-sm fw-medium text-dark">2</div>
												</td>
												<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Price</div>
													<div class="fs-sm fw-medium text-dark">$11</div>
												</td>
												<td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
													<div class="fs-sm text-muted mb-2">Total</div>
													<div class="fs-sm fw-medium text-dark">$22</div>
												</td>
											</tr>
										</table>
									</div>
									<div class="bg-secondary rounded-1 p-4 my-2">
										<div class="row">
											<div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
												<div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
												<div class="fs-sm">Upon the delivery</div>
												<a class="btn btn-link py-1 px-0 mt-2" href="#"><i
													class="ai-time me-2 ms-n1"></i>Order history</a>
											</div>
											<div class="col-sm-7 col-md-5 mb-4 mb-md-0">
												<div class="fs-sm fw-medium text-dark mb-1">Delivery
													address:</div>
												<div class="fs-sm">
													401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J
													3H9, Canada
												</div>
											</div>
											<div class="col-md-4 col-lg-3 text-md-end">
												<button
													class="btn btn-sm btn-outline-primary w-100 w-md-auto"
													type="button">
													<i class="ai-star me-2 ms-n1"></i>Leave a review
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- Pagination-->
					<div class="d-sm-flex align-items-center pt-4 pt-sm-5">
						<nav class="order-sm-2 ms-sm-auto mb-4 mb-sm-0"
							aria-label="Orders pagination">
							<ul class="pagination pagination-sm justify-content-center">
								<li class="page-item active" aria-current="page"><span
									class="page-link">1<span class="visually-hidden">(current)</span></span></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
							</ul>
						</nav>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>
<!-- Divider for dark mode only-->
<hr class="d-none d-dark-mode-block">
<!-- Sidebar toggle button-->
<button
	class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom"
	data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>Account menu
</button>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">
		<!-- Sidebar -->
		<aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
			<div class="position-lg-sticky top-0">
				<div class="d-none d-lg-block" style="padding-top: 105px;"></div>
				<div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
					<div class="offcanvas-body">
						<div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
							<h3 class="h5 mb-1">${loginMember.name}</h3>
							<p class="fs-sm text-muted mb-0">${loginMember.id}</p>
						</div>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 글 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mypullanner"><i class="ai-pencil fs-5 opacity-60 me-2"></i>풀레너</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/myselling"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/shoppingbag"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stararticle"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplant"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplace"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 장소</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/overview"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/infochange"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/logout"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a>
						</nav>
					</div>
				</div>
			</div>
		</aside>
		<!-- Page content-->
		<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
			<!-- <div class="d-flex align-items-center mb-4">
				<h1 class="h2 mb-0">주문내역</h1>
				<select class="form-select ms-auto" style="max-width: 200px;">
					<option value="All tme">배송 상태</option>
					<option value="In progress">배송 중</option>
					<option value="Delivered">배송완료</option>
					<option value="Canceled">취소</option>
				</select>
			</div> -->
			<div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
				<div class="card-body pb-4">
					<!-- Orders accordion-->
					<div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
						<i class="ai-cart text-primary lead pe-1 me-2"></i>
						<h2 class="h4 mb-0">주문 목록</h2>
					</div>
					<div class="accordion accordion-alt accordion-orders" id="orders">
						<c:forEach var="item" items="${olist}">
							<div class="accordion-item border-top mb-0">
								<div class="accordion-header">
									<a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed"
										href="#order${item.ONO}" data-bs-toggle="collapse" aria-expanded="false" aria-controls="order${item.ONO}">
										<div class="d-flex justify-content-between w-100" style="max-width: 440px;">
											<div class="me-3 me-sm-4">
												<div class="fs-sm text-muted"></div>
												<span class="badge bg-faded-info text-info fs-xs">주문완료</span>
											</div>
											<div class="me-3 me-sm-4">
												<div class="d-none d-sm-block fs-sm text-muted mb-2">주문날짜</div>
												<div class="fs-sm fw-medium text-dark"><fmt:formatDate value="${item.orderdate}" dateStyle="full" type="date"/></div>
											</div>
											<div class="me-3 me-sm-4">
												<div class="fs-sm text-muted mb-2">결제금액</div>
												<div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${item.totalPrice}" pattern="#,###" />원</div>
											</div>
											<div class="me-3 me-sm-4">
												<div class="fs-sm text-muted mb-2">주문수량</div>
												<div class="fs-sm fw-medium text-dark">${item.totalAmount}</div>
											</div>
										</div>
										<div class="accordion-button-img d-none d-sm-flex ms-auto">
											<div class="mx-1"></div>
										</div>
									</a>
								</div>
								
								
								<div class="accordion-collapse collapse" id="order${item.ONO}" data-bs-parent="#orders">
									<div class="accordion-body">
										<div class="table-responsive pt-1">
											<table class="table align-middle w-100" style="min-width: 450px;">
											<c:forEach var="product" items="${item.productList}">
												<tr>
													<td class="border-0 py-1 px-0">
														<div class="d-flex align-items-center">
															<a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3"
																href="/shop/product?pno=${product.PNo}">
															<img src="${product.image}" width="110" alt="Product"></a>
															<div class="ps-3 ps-sm-4">
																<h4 class="h6 mb-2">
																	<a href="/shop/product?pno=${product.PNo}">${product.title}</a>
																</h4>
															</div>
														</div>
													</td>
													<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
														<div class="fs-sm text-muted mb-2">수량</div>
														<div class="fs-sm fw-medium text-dark">${product.amount}</div>
													</td>
													<td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
														<div class="fs-sm text-muted mb-2">가격</div>
														<div class="fs-sm fw-medium text-dark"><fmt:formatNumber value="${product.lprice}" pattern="#,###" />원</div>
													</td>
												</tr>
												
											</c:forEach>
											</table>
										</div>
										<div class="bg-secondary rounded-1 p-4 my-2">
											<div class="row">
												<div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
													<div class="fs-sm fw-medium text-dark mb-1">결제수단</div>
													<c:if test="${item.payment == 1 }">
														<div class="fs-sm">카카오페이</div>
													</c:if>
													<c:if test="${item.payment == 2 }">
														<div class="fs-sm">계좌이체</div>
													</c:if>
												</div>
												<div class="col-sm-7 col-md-5 mb-4 mb-md-0">
													<div class="fs-sm fw-medium text-dark mb-1">배달주소</div>
													<div class="fs-sm">
														(${item.addr1}) ${item.addr2}, ${item.addr3}
													</div>
												</div>
												<div class="col-md-4 col-lg-3 text-md-end">
													<a href="/shop/product?pno=${product.PNo}">
														<button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button">
															<i class="ai-star me-2 ms-n1"></i>리뷰를 남기세요
														</button>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>


<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>
</button>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

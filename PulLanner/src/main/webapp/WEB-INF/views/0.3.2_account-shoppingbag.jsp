<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header_login.jsp" />
      <!-- Page content-->
      <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
          <!-- Sidebar (offcanvas on sreens < 992px)-->
          <aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
            <div class="position-lg-sticky top-0">
              <div class="d-none d-lg-block" style="padding-top: 105px;"></div>
              <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                <div class="offcanvas-body">
                  <div class="pb-2 pb-lg-0 mb-4 mb-lg-5"><img class="d-block rounded-circle mb-2" src="assets/img/avatar/02.jpg" width="80" alt="Isabella Bocouse">
                    <h3 class="h5 mb-1">Isabella Bocouse</h3>
                    <p class="fs-sm text-muted mb-0">bocouse@example.com</p>
                  </div>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-overview.html"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-settings.html"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class="ai-pencil fs-5 opacity-60 me-2"></i>내 글 관리</a>
                  </nav>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물원</a>
                  </nav>
                  <nav class="nav flex-column pb-2 pb-lg-4 mb-1">
                    <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-orders.html"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a>
                    <a class="nav-link fw-semibold py-2 px-0 active" href="account-earnings.html"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-favorites.html"><i class="ai-heart fs-5 opacity-60 me-2"></i>찜한 상품</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-favorites.html"><i class="ai-chevron-right fs-5 opacity-60 me-2" style="margin-left: 20px;"></i>식물분양</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-favorites.html"><i class="ai-chevron-right fs-5 opacity-60 me-2" style="margin-left: 20px;"></i>씨앗분양</a>
                    <a class="nav-link fw-semibold py-2 px-0" href="account-favorites.html"><i class="ai-chevron-right fs-5 opacity-60 me-2" style="margin-left: 20px;"></i>조경도구</a>
                  </nav>
                  <nav class="nav flex-column"><a class="nav-link fw-semibold py-2 px-0" href="account-signin.html"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a></nav>
                </div>
              </div>
            </div>
          </aside>
          <!-- Page content-->
          <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
            <div class="d-flex align-items-center mb-4">
              <h1 class="h2 mb-0">장바구니</h1>
            </div>
            <div class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body pb-4">
                <!-- Orders accordion-->
                <div class="accordion accordion-alt accordion-orders" id="orders">
                  <table class="table align-middle w-100" style="min-width: 450px;">
                    <tr>
                      <td class="border-0 py-1 px-0">
                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/01.png" width="110" alt="Product"></a>
                          <div class="ps-3 ps-sm-4">
                            <h4 class="h6 mb-2"><a href="shop-single.html">Candle in concrete bowl</a></h4>
                            <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Gray night</span></div>
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
                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/02.png" width="110" alt="Product"></a>
                          <div class="ps-3 ps-sm-4">
                            <h4 class="h6 mb-2"><a href="shop-single.html">Exquisite glass vase </a></h4>
                            <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Rose</span></div>
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

                <!-- Coupon input + total-->
                <div class="px-4 pb-3 pb-sm-4 pb-sm-5">
                  <div class="d-sm-flex align-items-center border-top pt-4">
                    <div class="input-group input-group-sm border-dashed mb-3 mb-sm-0 me-sm-4 me-md-5">
                      <input class="form-control text-uppercase" type="text" placeholder="Your coupon code">
                      <button class="btn btn-secondary" type="button">Apply coupon</button>
                    </div>
                    <div class="d-flex align-items-center justify-content-center">
                      <span class="fs-xl me-3">Total:</span>
                      <span class="h3 mb-0">$92.00</span>
                    </div>
                  </div>
                </div>
                <!-- Action buttons-->
                <div class="d-flex align-items-center justify-content-between px-4 pb-3">
                  <div class="nav d-none d-sm-block">
                  </div>
                  <a class="btn btn-lg btn-primary w-100 w-sm-auto" href="shop-checkout.html">
                    결제하기<i class="ai-chevron-right ms-2 me-n1"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Divider for dark mode only-->
      <hr class="d-none d-dark-mode-block">
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

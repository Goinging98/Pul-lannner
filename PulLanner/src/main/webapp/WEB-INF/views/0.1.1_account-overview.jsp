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
                    <a class="nav-link fw-semibold py-2 px-0 active" href="account-overview.html"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a>
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
                    <a class="nav-link fw-semibold py-2 px-0" href="account-earnings.html"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a>
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
            <h1 class="h2 mb-4">Overview</h1>
            <!-- Basic info-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-1">
              <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i
                    class="ai-user text-primary lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">내 정보</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i
                      class="ai-edit ms-n1 me-2"></i>수정</a>
                </div>
                <div class="d-md-flex align-items-center">
                  <div class="d-sm-flex align-items-center">
                    <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0"
                      style="width: 80px; height: 80px; background-image: url(assets/img/avatar/02.jpg);"></div>
                    <div class="pt-3 pt-sm-0 ps-sm-3">
                      <h3 class="h5 mb-2">Isabella Bocouse<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                      <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                        <div class="d-flex align-items-center me-3"><i class="ai-mail me-1"></i>email@example.com</div>
                      </div>
                    </div>
                  </div>
                </div>
            
                <div class="col-md-6 mb-1 mb-md-0">
                  <table class="table mb-0">
                    <tr>
                      <td class="border-0 text-muted py-3 px-0"  style="white-space: nowrap;">전화번호</td>
                      <td class="border-0 text-dark fw-medium py-3 ps-3">+1 234 567 890</td>
                    </tr>
                    <tr>
                      <td class="border-0 text-muted py-1 px-0">주소</td>
                      <td class="border-0 text-dark fw-medium py-1 ps-3">401 Magnetic Drive Unit 2,Toronto, Ontario, M3J 3H9 Canada</td>
                    </tr>
                  </table>
                </div>
            </section>
            
          <!-- Orders-->
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
              <div class="card-body">
                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-cart text-primary lead pe-1 me-2"></i>
                  <h2 class="h4 mb-0">주문 목록</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-orders.html">모두 보기</a>
                </div>
                <!-- Orders accordion-->
                <div class="accordion accordion-alt accordion-orders" id="orders">
                  <!-- Order-->
                  <div class="accordion-item border-top mb-0">
                    <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderOne" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderOne">
                        <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted">#78A6431D409</div><span class="badge bg-faded-info text-info fs-xs">배송 준비중</span>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="d-none d-sm-block fs-sm text-muted mb-2">주문 날짜</div>
                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                            <div class="fs-sm fw-medium text-dark">Jan 27, 2022</div>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted mb-2">합계</div>
                            <div class="fs-sm fw-medium text-dark">$16.00</div>
                          </div>
                        </div>
                        <div class="accordion-button-img d-none d-sm-flex ms-auto">
                          <div class="mx-1"><img src="assets/img/account/orders/01.png" width="48" alt="Product"></div>
                        </div></a></div>
                    <div class="accordion-collapse collapse" id="orderOne" data-bs-parent="#orders">
                      <div class="accordion-body">
                        <div class="table-responsive pt-1">
                          <table class="table align-middle w-100" style="min-width: 450px;">
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/01.png" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <h4 class="h6 mb-2"><a href="shop-single.html">Candle in concrete bowl</a></h4>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$16</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$16</div>
                              </td>
                            </tr>
                          </table>
                        </div>
                        <div class="bg-secondary rounded-1 p-4 my-2">
                          <div class="row">
                            <div class="col-sm-7 col-md-9 mb-4 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">배송지:</div>
                              <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                            </div>
                            <div class="col-md-4 col-lg-3 text-md-end">
                              <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>리뷰 작성</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Order-->
                  <div class="accordion-item border-top mb-0">
                    <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderTwo" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderTwo">
                        <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted">#47H76G09F33</div><span class="badge bg-faded-danger text-danger fs-xs">주문 취소</span>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="d-none d-sm-block fs-sm text-muted mb-2">주문 날짜</div>
                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                            <div class="fs-sm fw-medium text-dark">Sep 14, 2022</div>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted mb-2">합계</div>
                            <div class="fs-sm fw-medium text-dark">$59.00</div>
                          </div>
                        </div>
                        <div class="accordion-button-img d-none d-sm-flex ms-auto">
                          <div class="mx-1"><img src="assets/img/account/orders/02.png" width="48" alt="Product"></div>
                          <div class="mx-1"><img src="assets/img/account/orders/03.png" width="48" alt="Product"></div>
                          <div class="mx-1"><img src="assets/img/account/orders/04.png" width="48" alt="Product"></div>
                        </div></a></div>
                    <div class="accordion-collapse collapse" id="orderTwo" data-bs-parent="#orders">
                      <div class="accordion-body">
                        <div class="table-responsive pt-1">
                          <table class="table align-middle w-100" style="min-width: 450px;">
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/04.png" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <h4 class="h6 mb-2"><a href="shop-single.html">Analogue wall clock</a></h4>
                                    <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Turquoise</span></div>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$25</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$25</div>
                              </td>
                            </tr>
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/05.png" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <h4 class="h6 mb-2"><a href="shop-single.html">Glossy round vase</a></h4>
                                    <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>White</span></div>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$15</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$15</div>
                              </td>
                            </tr>
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/06.png" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <h4 class="h6 mb-2"><a href="shop-single.html">Ceramic flower pot</a></h4>
                                    <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Gray concrete</span></div>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$19</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$19</div>
                              </td>
                            </tr>
                          </table>
                        </div>
                        <div class="bg-secondary rounded-1 p-4 my-2">
                          <div class="row">
                            <div class="col-sm-7 col-md-9 mb-4 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">배송지:</div>
                              <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                            </div>
                            <div class="col-md-4 col-lg-3 text-md-end">
                              <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>리뷰 작성</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Order-->
                  <div class="accordion-item border-top mb-0">
                    <div class="accordion-header"><a class="accordion-button fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderThree" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderThree">
                        <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted">#34VB5540K83</div><span class="badge bg-faded-primary text-primary fs-xs">배송중</span>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="d-none d-sm-block fs-sm text-muted mb-2">주문 날짜</div>
                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                            <div class="fs-sm fw-medium text-dark">Jul 10, 2022</div>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted mb-2">합계</div>
                            <div class="fs-sm fw-medium text-dark">$38.00</div>
                          </div>
                        </div>
                        <div class="accordion-button-img d-none d-sm-flex ms-auto">
                          <div class="mx-1"><img src="assets/img/account/orders/01.png" width="48" alt="Product"></div>
                          <div class="mx-1"><img src="assets/img/account/orders/05.png" width="48" alt="Product"></div>
                        </div></a></div>
                    <div class="accordion-collapse collapse" id="orderThree" data-bs-parent="#orders">
                      <div class="accordion-body">
                        <div class="table-responsive pt-1">
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
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$16</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
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
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">2</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$11</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$22</div>
                              </td>
                            </tr>
                          </table>
                        </div>
                        <div class="bg-secondary rounded-1 p-4 my-2">
                          <div class="row">
                            <div class="col-sm-7 col-md-9 mb-4 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">배송지:</div>
                              <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                            </div>
                            <div class="col-md-4 col-lg-3 text-md-end">
                              <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>리뷰 작성</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Order-->
                  <div class="accordion-item border-top border-bottom mb-0">
                    <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderFour" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderFour">
                        <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted">#502TR872W2</div><span class="badge bg-faded-primary text-primary fs-xs">배송중</span>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="d-none d-sm-block fs-sm text-muted mb-2">주문 날짜</div>
                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                            <div class="fs-sm fw-medium text-dark">May 11, 2022</div>
                          </div>
                          <div class="me-3 me-sm-4">
                            <div class="fs-sm text-muted mb-2">합계</div>
                            <div class="fs-sm fw-medium text-dark">$17.00</div>
                          </div>
                        </div>
                        <div class="accordion-button-img d-none d-sm-flex ms-auto">
                          <div class="mx-1"><img src="assets/img/account/orders/06.png" width="48" alt="Product"></div>
                        </div></a></div>
                    <div class="accordion-collapse collapse" id="orderFour" data-bs-parent="#orders">
                      <div class="accordion-body">
                        <div class="table-responsive pt-1">
                          <table class="table align-middle w-100" style="min-width: 450px;">
                            <tr>
                              <td class="border-0 py-1 px-0">
                                <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="assets/img/shop/cart/07.png" width="110" alt="Product"></a>
                                  <div class="ps-3 ps-sm-4">
                                    <h4 class="h6 mb-2"><a href="shop-single.html">Dispenser for soap</a></h4>
                                    <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>White marble</span></div>
                                  </div>
                                </div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">수량</div>
                                <div class="fs-sm fw-medium text-dark">1</div>
                              </td>
                              <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">가격</div>
                                <div class="fs-sm fw-medium text-dark">$17</div>
                              </td>
                              <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                <div class="fs-sm text-muted mb-2">합계</div>
                                <div class="fs-sm fw-medium text-dark">$17</div>
                              </td>
                            </tr>
                          </table>
                        </div>
                        <div class="bg-secondary rounded-1 p-4 my-2">
                          <div class="row">
                            <div class="col-sm-7 col-md-9 mb-4 mb-md-0">
                              <div class="fs-sm fw-medium text-dark mb-1">배송지:</div>
                              <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                            </div>
                            <div class="col-md-4 col-lg-3 text-md-end">
                              <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>리뷰 작성</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
      <!-- Divider for dark mode only-->
      <hr class="d-none d-dark-mode-block">
      <!-- Sidebar toggle button-->
      <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

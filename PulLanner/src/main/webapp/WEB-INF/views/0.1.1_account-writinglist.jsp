<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">
		<!-- Side bar -->
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
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/myselling"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
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
			<h1 class="h2 mb-4">내 글 관리</h1>
			<!-- Basic info-->
			<!-- Page title + filters-->
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
				<div class="row align-items-center gy-2 mb-4 pb-1 pb-sm-2 pb-lg-3">
					<div class="col-lg-5">
						<h1 class="mb-lg-0"></h1>
					</div>
<!-- 					<div class="col-xl-2 offset-xl-1 col-lg-3 col-sm-5"></div>
					<div class="col-lg-4 col-sm-7">
						<div class="position-relative">
							<i class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
							<input class="form-control ps-5" type="search" placeholder="검색">
						</div>
					</div> -->
				</div>
				
				
				
				<!-- Post-->
	        	<c:if test="${empty list}">
					<tr>
						<td colspan="6">작성한 글이 없습니다.</td>
					</tr>
				</c:if>
				
				<c:if test="${not empty list}">
					<c:forEach var="item" items="${list}">
						<article class="row g-0 border-0 pt-3 pt-sm-0 mb-4">
							<a class="col-sm-5 col-lg-4 bg-repeat-0 bg-size-cover bg-position-center rounded-5"
								style="background-image: url(/resources/assets/img/blog/list/01.jpg); min-height: 16rem">
								<c:if test="${not empty board.originalFileName 
									and (fn:contains(board.originalFileName,'.jpg')
										 or fn:contains(board.originalFileName,'.png')
										  or fn:contains(board.originalFileName,'.jpeg'))}">
								<img src="${path}/resources/static/upload/board/${board.renamedFileName}" width="100%" height="100%"/>
								</c:if>
							</a>
								
							<div class="col-sm-7 col-lg-8">
								<div class="pt-4 pb-sm-4 ps-sm-4 pe-lg-4">
									<h3>
										<c:if test="${item.type =='HONEY'}">
											<a href="/HoneyTip/view?no=${item.BNo}"><c:out value="${item.title}"></c:out></a>
										</c:if>
										<c:if test="${item.type =='PROUD'}">
											<a href="/PlantProud"><c:out value="${item.title}"></c:out></a>
										</c:if>
									</h3>
									<p class="d-sm-none d-md-block">
										<c:out value="${item.content}"></c:out>
									</p>
									<div class="d-flex flex-wrap align-items-center mt-n2">
										${item.readCount}<i class="ai-show fs-lg ms-1" ></i>
										<span class="fs-xs opacity-20 mt-2 mx-3">|</span>
										<span class="fs-sm text-muted mt-2"><fmt:formatDate type="date" value="${item.createDate}" /></span>
										<span class="fs-xs opacity-20 mt-2 mx-3">|</span>
										<c:if test="${item.type =='HONEY'}">
											<a class="badge text-nav fs-xs border mt-2" href="/HoneyTip/list">식물 기르기 꿀팁</a>
										</c:if>
										<c:if test="${item.type =='PROUD'}">
											<a class="badge text-nav fs-xs border mt-2" href="/PlantProud">식물 자랑하기</a>
										</c:if>
									</div>
								</div>
							</div>
						</article>
					</c:forEach>
				</c:if>				
			</section>
		</div>
	</div>
</div>

<!-- Side bar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>
</button>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

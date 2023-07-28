<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Pul-Lanner</title>

<!-- SEO Meta Tags-->
<meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
<meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
<meta name="author" content="Createx Studio">
<!-- Viewport-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon and Touch Icons-->
<link rel="apple-touch-icon" sizes="180x180" href="/resources/assets/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/resources/assets/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/resources/assets/favicon/favicon-16x16.png">
<link rel="manifest" href="/resources/assets/favicon/site.webmanifest">
<link rel="mask-icon" color="#6366f1" href="/resources/assets/favicon/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#080032">
<meta name="msapplication-config" content="/resources/assets/favicon/browserconfig.xml">
<meta name="theme-color" content="white">


<!-- Page loading styles-->
<style>
.page-loading {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  -webkit-transition: all .4s .2s ease-in-out;
  transition: all .4s .2s ease-in-out;
  background-color: #fff;
  opacity: 0;
  visibility: hidden;
  z-index: 9999;
}
.dark-mode .page-loading {
  background-color: #121519;
}
.page-loading.active {
  opacity: 1;
  visibility: visible;
}
.page-loading-inner {
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  text-align: center;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  -webkit-transition: opacity .2s ease-in-out;
  transition: opacity .2s ease-in-out;
  opacity: 0;
}
.page-loading.active > .page-loading-inner {
  opacity: 1;
}
.page-loading-inner > span {
  display: block;
  font-family: 'Inter', sans-serif;
  font-size: 1rem;
  font-weight: normal;
  color: #6f788b;
}
.dark-mode .page-loading-inner > span {
  color: #fff;
  opacity: .6;
}
.page-spinner {
  display: inline-block;
  width: 2.75rem;
  height: 2.75rem;
  margin-bottom: .75rem;
  vertical-align: text-bottom;
  background-color: #d7dde2; 
  border-radius: 50%;
  opacity: 0;
  -webkit-animation: spinner .75s linear infinite;
  animation: spinner .75s linear infinite;
}
.dark-mode .page-spinner {
  background-color: rgba(255,255,255,.25);
}
@-webkit-keyframes spinner {
  0% {
    -webkit-transform: scale(0);
    transform: scale(0);
  }
  50% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}
@keyframes spinner {
  0% {
    -webkit-transform: scale(0);
    transform: scale(0);
  }
  50% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}
</style>


<!-- Page loading scripts-->
<script>
(function () {
  window.onload = function () {
    const preloader = document.querySelector('.page-loading');
    preloader.classList.remove('active');
    setTimeout(function () {
      preloader.remove();
    }, 1500);
  };
})();
</script>


<!-- Import Google Font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
<!-- Vendor styles-->
<link rel="stylesheet" media="screen" href="/resources/assets/vendor/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" media="screen" href="/resources/assets/vendor/aos/dist/aos.css" />
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="/resources/assets/css/theme.min.css">
</head>


<!-- Body-->
	<!-- Page loading spinner-->
	<div class="page-loading active">
		<div class="page-loading-inner">
			<div class="page-spinner"></div>
			<span>Loading...</span>
		</div>
	</div>


	<!-- Page wrapper-->
	<main class="page-wrapper">
		<!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
		<header class="navbar navbar-expand-lg fixed-top" style="background-color: #ffffff;">
			<div class="container">
				<a class="navbar-brand pe-sm-3" href="index.html">
					<span class="text-primary flex-shrink-0 me-2">
						<svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                		<path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z">
                		</path>
              			</svg>
					</span> PUL-LANNER
				</a>
				<c:if test="${loginMember == null}">
					<a class="btn btn-primary btn-sm fs-sm order-lg-3 d-none d-sm-inline-flex" href="/login" target="_blank" rel="noopener">
						<i class="ai-user fs-xl me-2 ms-n1"></i>로그인
					</a>
				</c:if>
				
				<button class="navbar-toggler ms-sm-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
					<span class="navbar-toggler-icon"> </span>
				</button>
				<nav class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav navbar-nav-scroll me-auto" style="--ar-scroll-height: 520px;">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">식물검색</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path}/PlantSearch">꽃</a></li>
								<li><a class="dropdown-item" href="${path}/PlantSearch">실내정원용</a></li>
								<li><a class="dropdown-item" href="${path}/PlantSearch">다육이</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">식물분양</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path}/PlantShop">식물판매</a></li>
								<li><a class="dropdown-item" href="account-overview.html">씨앗분양</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">식물관리</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path}/PlantManage">풀래너</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">식물명소</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="account-overview.html">식물원</a></li>
								<li><a class="dropdown-item" href="account-overview.html">숲/산</a></li>
								<li><a class="dropdown-item" href="account-settings.html">국립공원</a></li>
								<li><a class="dropdown-item" href="account-settings.html">휴양림</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">커뮤니티</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path}/PlantProud">식물자랑</a></li>
								<li><a class="dropdown-item" href="${path}/HoneyTip">식물기르기꿀팁</a></li>
								<li><a class="dropdown-item" href="${path}/Observe">관찰일지</a></li>
							</ul>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">아이템쇼핑</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="${path}/ItemShop">화분구매</a></li>
								<li><a class="dropdown-item" href="account-overview.html">관리용품구매</a></li>
							</ul>
						</li>
						<!--<c:if test="${loginMember != null}">-->
						<li class="nav-item dropdown">
							<a class="nav-link" href="#" data-bs-toggle="dropdown" aria-expanded="false">
								<img class="border rounded-circle" src="assets/img/avatar/01.jpg" width="48" alt="Isabella Bocouse">
					           	<div class="ps-2">
						        	<div class="fs-xs lh-1 opacity-60">Hello,</div>
						        	<div class="fs-sm dropdown-toggle">Isabella</div>
					           	</div>
					           </a>
					           <div class="dropdown-menu">
								    <h6 class="dropdown-header fs-xs fw-medium text-muted text-uppercase pb-1">계정관리</h6>
								    <a class="dropdown-item" href="account-overview.html"><i class="ai-user-check fs-lg opacity-70 me-2"></i>내 정보</a>
								    <a class="dropdown-item" href="account-settings.html"><i class="ai-settings fs-lg opacity-70 me-2"></i>Settings</a>
								    <a class="dropdown-item" href="account-billing.html"><i class="ai-wallet fs-base opacity-70 me-2 mt-n1"></i>Billing</a>
								    <h6 class="dropdown-header fs-xs fw-medium text-muted text-uppercase pt-3 pb-1">Dashboard</h6>
								    <a class="dropdown-item" href="account-orders.html"><i class="ai-cart fs-lg opacity-70 me-2"></i>Orders</a>
								    <a class="dropdown-item" href="account-earnings.html"><i class="ai-activity fs-lg opacity-70 me-2"></i>Earnings</a>
								    <a class="dropdown-item d-flex align-items-center" href="account-chat.html"><i class="ai-messages fs-lg opacity-70 me-2"></i>Chat<span class="badge bg-danger ms-3">4</span></a>
								    <a class="dropdown-item" href="account-favorites.html"><i class="ai-heart fs-lg opacity-70 me-2"></i>Favorites</a>
								    <div class="dropdown-divider"></div>
								    <a class="dropdown-item" href="account-signin.html"><i class="ai-logout fs-lg opacity-70 me-2"></i>Sign out</a>
							    </div>
				        </li>
						<!--</c:if>-->
 				
 				
					</ul>
				</nav>
			</div>
		</header>
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

.page-loading.active>.page-loading-inner {
	opacity: 1;
}

.page-loading-inner>span {
	display: block;
	font-family: 'Inter', sans-serif;
	font-size: 1rem;
	font-weight: normal;
	color: #6f788b;
}

.dark-mode .page-loading-inner>span {
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
	background-color: rgba(255, 255, 255, .25);
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
<!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="/resources/assets/css/theme.min.css">
</head>


<!-- Body-->
<body>
	<!-- Page loading spinner-->
	<div class="page-loading active">
		<div class="page-loading-inner">
			<div class="page-spinner"></div>
			<span>Loading...</span>
		</div>
	</div>
	
	<!-- Page wrapper-->
	<main class="page-wrapper">
		<!-- Page content-->
		<div class="d-lg-flex position-relative h-100">
			<!-- Home button-->
			<a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 p-0 mt-3 me-3 mt-sm-4 me-sm-4"
				href="/main" data-bs-toggle="tooltip" data-bs-placement="left"
				title="Back to home"><i class="ai-home"></i></a>
			<!-- Sign in form-->
			<div class="d-flex flex-column align-items-center w-lg-50 h-100 px-3 px-lg-5 pt-5">
				<div class="w-100" style="max-width: 526px; margin-top: 200px;">
					<h1>풀레너에 로그인하세요!</h1>
					<p class="pb-3 mb-3 mb-lg-4">
						아직 계정이 없으신가요?&nbsp;&nbsp;<a href='/signup'>회원가입하세요!</a>
					</p>
					<form class="needs-validation" novalidate>
						<div class="pb-3 mb-3">
							<div class="position-relative">
								<i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								<input class="form-control form-control-lg ps-5" type="email" id="email" placeholder="이메일" required>
							</div>
						</div>
						<div class="mb-4">
							<div class="position-relative">
								<i class="ai-lock-closed fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								<div class="password-toggle">
									<input class="form-control form-control-lg ps-5" type="password" id="password" placeholder="Password" required> 
									<label class="password-toggle-btn" aria-label="Show/hide password">
										<input class="password-toggle-check" type="checkbox">
										<span class="password-toggle-indicator"></span>
									</label>
								</div>
							</div>
						</div>
						<!-- <div class="d-flex flex-wrap align-items-center justify-content-between pb-4">
							<a class="fs-sm fw-semibold text-decoration-none my-1"
								href="account-password-recovery.html">비밀번호를 잊으셨나요?</a>
						</div>
						 -->
						<button class="btn btn-lg btn-primary w-100 mb-4" type="submit">로그인</button>
						<!--  
						<h2 class="h6 text-center pt-3 pt-lg-4 mb-4">Or sign in with your social account</h2>
						<div class="row row-cols-1 row-cols-sm-2 gy-3">
							<div class="col">
								<a class="btn btn-icon btn-outline-secondary btn-google btn-lg w-100"
									href="#"><i class="ai-google fs-xl me-2"></i>Google</a>
							</div>
							<div class="col">
								<a class="btn btn-icon btn-outline-secondary btn-facebook btn-lg w-100"
									href="#"><i class="ai-facebook fs-xl me-2"></i>Facebook</a>
							</div>
						</div>
						-->
					</form>
				</div>
			</div>
			<!-- Cover image-->
			<div class="w-50 bg-size-cover bg-repeat-0 bg-position-center" style="background-image: url(/resources/assets/img/account/cover.jpg);"></div>
		</div>
	</main>
		
	<!-- Back to top button-->
	<a class="btn-scroll-top" href="#top" data-scroll> 
		<svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        	<circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      	</svg><i class="ai-arrow-up"></i>
    </a>
	<!-- Vendor scripts: js libraries and plugins-->
	<script src="/resources/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<!-- Main theme script-->
	<script src="/resources/assets/js/theme.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Around | Mobile App Showcase</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Around - Multipurpose Bootstrap HTML Template">
    <meta name="keywords" content="bootstrap, business, corporate, coworking space, services, creative agency, dashboard, e-commerce, mobile app showcase, saas, multipurpose, product landing, shop, software, ui kit, web studio, landing, dark mode, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="/resources/assets/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="assets/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">
    <!-- Theme mode-->
    <script>
      let mode = window.localStorage.getItem('mode'),
          root = document.getElementsByTagName('html')[0];
      if (mode !== undefined && mode === 'dark') {
        root.classList.add('dark-mode');
      } else {
        root.classList.remove('dark-mode');
      }

    </script>
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
    <link rel="stylesheet" media="screen" href="/resources/assets/vendor/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" media="screen" href="/resources/assets/vendor/aos/dist/aos.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="/resources/assets/css/theme.min.css">
  </head>
  <!-- Body-->
  <body style="background-color: #FCFBED ">
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
    <!-- Page wrapper-->
    <main class="page-wrapper" style="color:#fef7d8;">
      <!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
      <header class="navbar navbar-expand-lg fixed-top">
        <div class="container"><a class="navbar-brand pe-sm-3" href="index.html"><span class="text-primary flex-shrink-0 me-2">
              <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
              </svg></span>PUL-LANNER</a>
        <a class="btn btn-primary btn-sm fs-sm order-lg-3 d-none d-sm-inline-flex" href="https://themes.getbootstrap.com/product/around-multipurpose-template-ui-kit/" target="_blank" rel="noopener"><i class="ai-user fs-xl me-2 ms-n1"></i>ë¡ê·¸ì¸</a>
          <button class="navbar-toggler ms-sm-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"><span class="navbar-toggler-icon"></span></button>
          <nav class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav navbar-nav-scroll me-auto" style="--ar-scroll-height: 520px;">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ìë¬¼ê²ì</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="account-overview.html">ê½</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ì¤ë´ì ìì©</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ë¤ì¡ì´</a></li>
                </ul>
              </li>
              
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ìë¬¼ë¶ì</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="account-overview.html">ìë¬¼íë§¤</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ì¨ìë¶ì</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ìë¬¼ê´ë¦¬</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a class="dropdown-item" href="#" data-bs-toggle="dropdown" aria-expanded="false">ìë¬¼ì¬ì¡ì¼ì§</a>
                  </li>
                  <li><a class="dropdown-item" href="account-overview.html">ìºë¦°ë</a></li>
                  <li><a class="dropdown-item" href="account-settings.html">ë¤ì´ì´ë¦¬</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ìë¬¼ëªì</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="account-overview.html">ìë¬¼ì</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ì²/ì°</a></li>
                  <li><a class="dropdown-item" href="account-settings.html">êµ­ë¦½ê³µì</a></li>
                  <li><a class="dropdown-item" href="account-settings.html">í´ìë¦¼</a></li>
                </ul>
              </li>




              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ì»¤ë®¤ëí°</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="account-overview.html">ìë¬¼ìë</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ìë¬¼ê¸°ë¥´ê¸°ê¿í</a></li>
                </ul>
              </li>

              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">ìì´íì¼í</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="account-overview.html">íë¶êµ¬ë§¤</a></li>
                  <li><a class="dropdown-item" href="account-overview.html">ê´ë¦¬ì©íêµ¬ë§¤</a></li>
                </ul>
              </li>
            </ul>
            <div class="d-sm-none p-3 mt-n3"><a class="btn btn-primary w-100  mb-1" href="https://themes.getbootstrap.com/product/around-multipurpose-template-ui-kit/" target="_blank" rel="noopener"><i class="ai-cart fs-xl me-2 ms-n1"></i>Buy now</a></div>
          </nav>
        </div>
      </header>
      <!-- Page content-->
      <!-- Hero + Features-->
      <section class=" position-relative pt-lg-3 pt-xl-4 pt-xxl-5" style="color:#fef7d8;">
        <div class=" position-absolute start-0 bottom-0 w-100 d-none d-xl-block" style="background-color: #568A75; height: 900px;"></div>
        
        <div class="bg-primary position-absolute start-0 bottom-0 w-100 d-none d-lg-block d-xl-none" style="height: 800px;"></div>
        <div class="bg-primary position-absolute start-0 bottom-0 w-100 d-lg-none d-xl-none" style="height: 2%;"></div>
        <div class="bg-warning rounded-circle position-absolute start-50 d-none d-lg-block " 
        style=" bottom: 220px; width: 300px; height: 300px; margin-left: -165px;" data-aos="zoom-in" data-aos-duration="700" data-aos-delay="200" data-aos-offset="300" >
      </div>
        
        
        <div class="container position-relative zindex-5 mt-2 pt-5 pb-2 pb-sm-4 pb-lg-5">
      

          <div class="row justify-content-center pt-3 pt-sm-4 pt-md-5 mt-sm-1">
            <div class="col-8 col-lg-4 order-lg-2" style="margin-top: -105px;">
             
              <!-- Middle sticky app screen-->
              <div class="position-sticky top-0 mb-5 pb-sm-2 pb-xl-4" style="padding-top: 110px;">
                <img class=" mx-auto d-none d-lg-block" src="https://cdn-icons-png.flaticon.com/512/5775/5775998.png" width="550" alt="App screen">
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 order-lg-1 overflow-hidden mt-lg-4 pt-xl-3">
            
              <!-- Left app sceen-->
              <b><p class=" mx-4 " style="font-size: 23px; color:#568A75;">íëë,</b><br><b>ê±´ê°í ë°ë ¤ìë¬¼ì í¤ì°ë ìµê´</p></b>
              <h1 class="display-2 mt-3 text-uppercase mx-4 mb-sm-4" style="color:#568A75;">
              <span class='fw-bold' >pul-<br>Lanner</span></h1>
             <div class="mx-auto mx-md-0" style="max-width: 400px;">

              <!-- ê²ìì°½ -->
              <div class="input-group">
                <span class="input-group-text text-muted">
                <i class="ai-flower">
                </i>
              </span>
                <input class="form-control" type="text" placeholder="Search">
                <button class="btn btn-outline-warning "  type="button">ê²ì</button>
              </div>
            

               </div>
              <div class="d-none d-xxl-block" style="height: 310px;"></div>
              <div class="d-none d-xl-block d-xxl-none" style="height: 280px;"></div>
              <div class="d-none d-lg-block d-xl-none" style="height: 200px;"></div>
              <!-- Left features list-->
              <div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-search fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3" >ê²ì ìë¹ì¤</h2></a>
                <p class="text-white opacity-80 mb-0">ìë¬¼ ê²ì ìë¹ì¤ë ì¬ì©ìë¤ìê² ìë¬¼ì ê´í ì ë³´ë¥¼ ê²ìíê³  ì ê³µíë ìë¹ì¤ìëë¤. ì´ ìë¹ì¤ë ë¤ìí ìë¬¼ì ëí ì ë³´ë¥¼ ì°¾ê³ ì íë ì¬ëë¤ìê² ëìì ì¤ëë¤. </p>
              </div>

              <div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-right" data-aos-delay="200" data-aos-offset="250" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-calendar-check fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                  
                <h2 class="h4 text-white mb-2 mb-lg-3">ìë¬¼ ê´ë¦¬ ìë¹ì¤</h2></a>
                <p class="text-white opacity-80 mb-0">ìë¬¼ ê´ë¦¬ ìë¹ì¤ë ì¬ì©ìë¤ì´ ìë¬¼ì í¨ê³¼ì ì¼ë¡ ê´ë¦¬íê³  ì±ì¥ìí¬ ì ìëë¡ ëìì£¼ë ìë¹ì¤ìëë¤. ìë¬¼ì ì±ì¥ ìíë¥¼ ì¶ì íê³  ê¸°ë¡íì¬ ë³´ë¤ í¨ê³¼ì ì¸ ê´ë¦¬ë¥¼ í  ì ììµëë¤.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 order-lg-3 overflow-hidden mt-lg-4 pt-xl-3">
              <!-- Right app screen-->
              <b><p class=" mx-4 " style="font-size: 37px; color:#568A75;">Pul-Lannerì í¨ê»</b><br><b>ì¤ë¹íê³  í¤ìë³´ì¸ì!</p></b>
             <p class=" mx-4 " style="font-size: 15px; color:#7c807ffb;">
              ì´ë³´ pul-lannerë¶ë¤ì ìí ìë¬¼ì ëª¨ë ê²ì´ ë´ê²¨ ìë ê³³ìëë¤. ë°ë ¤ ìë¬¼ ë¶ì, ëì¬ ëë ì¨ì êµ¬ë§¤ì ììëêµ¬ êµ¬ë§¤ë ê°ë¥íë©° ìë¬¼ì ëí ì ë³´ì ê¸°ë¥´ëë° íìí ê¿íë¤ì ì ê³µí©ëë¤.</p>
            
              <div class="d-none d-xxl-block" style="height: 520px;"></div>
              <div class="d-none d-xl-block d-xxl-none" style="height: 490px;"></div>
              <div class="d-none d-lg-block d-xl-none" style="height: 400px;"></div>
              <!-- Right features list-->
              <div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-left" data-aos-offset="250" data-aos-delay="400" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-cart fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3">ìë¬¼, ì¨ì êµ¬ë§¤</h2></a>
                <p class="text-white opacity-80 mb-0">ìë¬¼ íë§¤ ìë¹ì¤ë ì¬ëë¤ìê² ë¤ìí ì¢ë¥ì ìë¬¼ì íë§¤íë ìë¹ì¤ìëë¤. ë¤ìí ì¢ë¥ì íì¢ì ìë¬¼ì ì íí  ì ììµëë¤. ê°ë³ì ì¸ ì·¨í¥ê³¼ íê²½ì ë§ë ìë¬¼ì ì°¾ì ì ìì¼ë©°, ìíë ëª©ì ì ë§ê² ìë¬¼ì ì íí  ì ììµëë¤.</p>
              </div>
              <div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4" style="max-width: 340px;" data-aos="fade-left" data-aos-offset="200" data-aos-delay="600" data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
                <div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
                  <a class="nav-link  text-warning" style="font-size: 30px;" href="#">
                    <i class="ai-droplet fa-5x"></i>
                  </a>
                </div>

                <a href="http://www.naver.com">
                <h2 class="h4 text-white mb-2 mb-lg-3">ììëêµ¬ êµ¬ë§¤</h2></a>
                <p class="text-white opacity-80 mb-0">ììëêµ¬ íë§¤ ìë¹ì¤ë ì¬ëë¤ìê² ìì ììì ìííë ë° íìí ë¤ìí ëêµ¬ì ì©íì íë§¤íë ìë¹ì¤ìëë¤. ì¬ì©ìë ë¤ìí ì íì ì½ê² ì°¾ê³ , ì ë¢°í  ì ìë íì§ê³¼ ì±ë¥ì ê°ì§ ì íì ì íí  ì ììµëë¤.</p>
              </div>
            </div>
          </div>
        </div>
      </section>

  <!-- Page title-->
  <div class="masonry-filterable py-5 mt-5">

    <h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-5 mb-lg-4">ì§ì  ìì í ë°ë ¤ìë¬¼</h3>


      <!-- Classes (Tabs)-->
      <section class="container">
        <!-- Nav tabs-->
        <ul class="nav nav-tabs flex-nowrap overflow-auto text-nowrap fs-sm flex-nowrap overflow-auto text-nowrap w-100 mx-auto pb-4 mb-5 mb-sm-3" style="max-width: 227px;">
          <li class="nav-item mb-0"><a class="nav-link active bor" href="#beginners" data-bs-toggle="tab" role="tab">ìë¬¼ë¶ì</a></li>
          <li class="nav-item mb-0"><a class="nav-link " href="#stretching" data-bs-toggle="tab" role="tab">ì¨ìë¶ì</a></li>
          
        </ul>
        <!-- Tab content-->
        <div class="tab-content">

          <!-- Beginers A-->
          <div class="tab-pane fade show active" id="beginners" role="tabpanel">
            <div class="masonry-grid " data-columns="4" id="a">
        <!-- Item-->        
      <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" role="tabpanel" data-groups="[&quot;a&quot;]">
        <div class="card-hover zoom-effect mx-auto">
          <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
            <div class="zoom-effect-img"><img src="https://cdn.imweb.me/upload/S201905295cee7c0f94cee/003a9e2fc6189.jpeg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
          </div>
          <div class="pt-4 mt-lg-2">
            <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ê°ì¸íë¦¬ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
          </div>
        </div>
      </div>

<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://www.flowerrepublic.co.kr/shopimages/sungmo9160/0090010004832.jpg?1665473103" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ê°ì´ì£½</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://cb.scene7.com/is/image/Crate/PottedZZPlantSHS20/$web_pdp_main_carousel_low$/191217102319/potted-zz-plant.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ê³µìì¼ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1372896722/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%ED%99%94%EB%B6%84-%EB%B0%94%EB%82%98%EB%82%98-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=R_oZjWbJwOnW8oR6ORnkQrYHQmg1NL1NzCqnAYpiFCc=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ê¸ëª©ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img" >
        <img src="https://img.freepik.com/free-photo/monstera-deliciosa-plant-in-a-pot_53876-133119.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ê¸ì¬ì² ëë¬´</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto" >
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1330360581/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%83%84%EB%B9%84%EC%97%90-%EC%8B%A4%EB%82%B4-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=UkMXBZroGOsdZ_IGczcfYkrYuMrB11F9FW7oYENwBbw=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ëëíë</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Product design</span><span class="fs-sm text-muted d-sm-none">Product design</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto">
    <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://img.freepik.com/free-photo/calathea-plant-in-a-jug_53876-134281.jpg?w=2000" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_3plant-parcel-out.html">ëíì¡</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Packaging design</span><span class="fs-sm text-muted d-sm-none">Packaging design</span>
    </div>
  </div>
</div>
<!-- Item-->
<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;a&quot;]">
  <div class="card-hover zoom-effect mx-auto" >
    <div class="zoom-effect-wrapper rounded-5 " style="max-width: 300px;">
      <div class="zoom-effect-img"><img src="https://ll9flower.cafe24.com/prog/goods/imgz/st_d/d600/st_d600z02.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
    </div>
    <div class="pt-4 mt-lg-2">
      <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav " href="/Around/02_3plant-parcel-out.html">ê½ë² ê³ ëì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Cover design</span><span class="fs-sm text-muted d-sm-none">Cover design</span>
    </div>
  </div>
</div>
            </div>
          </div>


          <!-- Stretching B-->
          <div class="tab-pane fade " id="stretching" role="tabpanel">
            <div class="masonry-grid " data-columns="4" id="b">
     <!-- Item-->
    
     <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" role="tabpanel" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://cdn.imweb.me/upload/S201905295cee7c0f94cee/003a9e2fc6189.jpeg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ê°ì¸íë¦¬ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://www.flowerrepublic.co.kr/shopimages/sungmo9160/0090010004832.jpg?1665473103" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ê°ì´ì£½</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://cb.scene7.com/is/image/Crate/PottedZZPlantSHS20/$web_pdp_main_carousel_low$/191217102319/potted-zz-plant.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ê³µìì¼ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1372896722/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%ED%99%94%EB%B6%84-%EB%B0%94%EB%82%98%EB%82%98-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=R_oZjWbJwOnW8oR6ORnkQrYHQmg1NL1NzCqnAYpiFCc=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ê¸ëª©ì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    

    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img" >
            <img src="https://img.freepik.com/free-photo/monstera-deliciosa-plant-in-a-pot_53876-133119.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ê¸ì¬ì² ëë¬´</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Branding, Strategy</span><span class="fs-sm text-muted d-sm-none">Branding, Strategy</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto" >
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://media.istockphoto.com/id/1330360581/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%83%84%EB%B9%84%EC%97%90-%EC%8B%A4%EB%82%B4-%EC%8B%9D%EB%AC%BC.jpg?s=612x612&w=0&k=20&c=UkMXBZroGOsdZ_IGczcfYkrYuMrB11F9FW7oYENwBbw=" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="/Around/02_2seed-parcel-out.html">ëëíë</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Product design</span><span class="fs-sm text-muted d-sm-none">Product design</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"  data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto">
        <div class="zoom-effect-wrapper rounded-5" style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://img.freepik.com/free-photo/calathea-plant-in-a-jug_53876-134281.jpg?w=2000" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav" href="portfolio-single-v1.html">ëíì¡</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Packaging design</span><span class="fs-sm text-muted d-sm-none">Packaging design</span>
        </div>
      </div>
    </div>
    <!-- Item-->
    <div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2" data-groups="[&quot;b&quot;]">
      <div class="card-hover zoom-effect mx-auto" >
        <div class="zoom-effect-wrapper rounded-5 " style="max-width: 300px;">
          <div class="zoom-effect-img"><img src="https://ll9flower.cafe24.com/prog/goods/imgz/st_d/d600/st_d600z02.jpg" alt="Image" style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;"></div>
        </div>
        <div class="pt-4 mt-lg-2">
          <h2 class="h5 mb-2" style="text-align:center;"><a class="stretched-link text-nav " href="/Around/02_2seed-parcel-out.html">ê½ë² ê³ ëì</a></h2><span class="fs-sm text-muted opacity-0 d-none d-sm-block" style="text-align:center;">Cover design</span><span class="fs-sm text-muted d-sm-none">Cover design</span>
        </div>
      </div>
</div>
          </div>
        </div>
        </div>
      </div>

      </section>



            
 <!-- Industries (Binded accordion)-->
 <section class="container py-5 mt-2 mt-sm-3 mt-md-4">

  <div class="row align-items-lg-center">
    <!-- Accordion-->
    <div class="col-md-7 col-lg-7 pb-2 pb-lg-0 mb-4 mb-md-0">
          <img class="rounded-5" src="https://cdn.imweb.me/upload/S2017101359e025984d346/bff36a6d2ced4.jpg" alt="Image">

      <div class="accordion accordion-alt" id="industries">
        <div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1 mt-sm-3">
          <h2 class="accordion-header" style="color: rgb(0, 0, 0);">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-binded-content="#finance-img" data-bs-target="#finance" aria-expanded="true" aria-controls="finance">ê½ë² ê³ ëì</button>
          </h2>
          <div class="accordion-collapse collapse show" id="finance" data-bs-parent="#industries">
            <div class="accordion-body">Sit purus platea nunc semper auctor integer semper et ac odio eget a lacus eu duis ante sed molestie varius tempus gravida libero pretium sit etiam morbi orci et vestibulum velit.</div>
          </div>
        </div>

      </div>
    </div>







    <!-- Binded images-->

    
    <div class="col-md-4 col-lg-4 col-xl-4 offset-1 d-none d-sm-none d-md-block" style="margin-top: -100px;">
      <div class="ps-lg-4 ps-xl-0">
        <h2 >ì¤ëì ê½ ëë¤ì´ ì¥ì ì¶ì²</h2>
        <div class="position-relative d-flex align-items-center mb-4">
          <img class="rounded"  src="https://i.namu.wiki/i/rLVLCqzMl8LdATocQsOXyFOLgUASgznbOQbK4SkPNpO5ZpVZfHFW7So-U8w4P94WFm7SGd16xzypYYPcNyqGKw.webp" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v1.html">ì¸ì¢ìë¬¼ì</a></h4><span class="text-muted" style="font-size : 16px;">17:00ì ì´ì ì¢ë£</span>
          </div>
        </div>
        <article class="position-relative d-flex align-items-center mb-4">
          <img class="rounded" src="https://img.newspim.com/news/2020/10/15/2010151646296730.jpg" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v2.html">ííìë¬¼ì</a></h4><span class="text-muted" style="font-size : 16px;">17:00ì ì´ì ì¢ë£</span>
          </div>
        </article>
        <article class="position-relative d-flex align-items-center">
          <img class="rounded" src="https://50plus.or.kr/upload/im/2020/07/3bebe063-4899-4dce-bc1a-0048f6af1e49.jpg" style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;" alt="Post image">
          <div class="ps-3">
            <h4 class="h5 mb-2"><a class="stretched-link" href="blog-single-v3.html">ìë¬¼ìë¤ê½ì¸ì</a></h4><span class="text-muted" style="font-size : 16px;">17:00ì ì´ì ì¢ë£</span>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>

      <!-- Resources (Blog)-->
      <section class="bg-faded-primary py-5 mt-5">
        <div class="container py-sm-2 pt-md-3 py-lg-2 py-xl-4 py-xxl-5">
          <h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-3 mb-lg-4">ìë¬¼ ìë</h3>
          <!-- Swiper-->
          <div class="swiper" data-swiper-options="
        {
          &quot;spaceBetween&quot;: 24,
          &quot;pagination&quot;: {
            &quot;el&quot;: &quot;.swiper-pagination&quot;,
            &quot;clickable&quot;: true
          },
          &quot;breakpoints&quot;: {
            &quot;576&quot;: { &quot;slidesPerView&quot;: 2 },
            &quot;992&quot;: { &quot;slidesPerView&quot;: 3 }
          }
        }
      ">
            <div class="swiper-wrapper">
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">August 13, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">ëë¥¼ ìì§ì¬ë¡ ë§ë¤ì´ì¤ í¼ì¬ë³¸ í¬ì¤ì´ ðµ</a></h3>
                    <p class="card-text">í¬ì¤ì´ê° ì°ë¦¬ì§ì ì¨ì§ íë¬ì§¸ ëë ë  ð
                      ìì§ì ë§ì´ ë¶ì¡±í ì´ë³´ ìì§ì¬ì§ë§ .. ð¥¹
                      ë¤íí ê³¼ìµë ì¤ì§ìê³  ê·¸ ì¬ì´ ìë¡ì´ ìê¸° ìêµ¬ê° ì¬ë¼ì¨ ê±° ê°ì ìë§ë ?</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/10.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Guy Hawkins</h6></a></div>
                </div>
              </article>
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">July 25, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">ê³ ì¬ë¸ê¸° ì´ë§¤ê° ë¹¨ê°ê² ìµìì´ì</a></h3>
                    <p class="card-text">2ê°ë ê½¤ë í¼ì¤íê² ì ìµìê±° ê°ìì ê°ì¥ ìì 1ê°ë ë°ì ë¨¹ì´ë³´ë ì­ì ë¨ë§ì ìëë¤ìð¤£ ë¬¼í¸ë  ììì ë¥¼ ì¤ì¼íëê±¸ê¹ ì¶ì´ì
                      ì§ê¸ì ìë¹ë£ë§ ì¹ì´ë¨ì´ì</p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/07.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Cody Fisher</h6></a></div>
                </div>
              </article>
              <!-- Item-->
              <article class="swiper-slide h-auto">
                <div class="card border-0 h-100">
                  <div class="card-body pb-4">
                    <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">July 08, 2022</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Inspiration</a></div>
                    <h3 class="h4 card-title"><a href="#">ë¹ ìë°ì  ë¯¸ëë©ë¦¬ì¤í¸ê° ëìë¤ð¿ð</a></h3>
                    <p class="card-text">ì´ëì ìë¬¼ë¤ì´ ë´ íì¥ëë¥¼ ì ë ¹íë¤ð¥¹ ì¥ë§ì ë¬´ëìë¡ ì¸í´ ë² ëë¤ ìë¬¼ë¤ì íëëì© ë°©ì¼ë¡ í¼ì ìí¨ê² ììì´ìë¤. ê·¸ë¬ë©´ìë ìë¬¼ê³µë¶ë¥¼ íë©° </p>
                  </div>
                  <div class="card-footer pt-3"><a class="d-flex align-items-center text-decoration-none pb-2" href="#"><img class="rounded-circle" src="assets/img/avatar/09.jpg" width="48" alt="Post author">
                      <h6 class="ps-3 mb-0">Jane Cooper</h6></a></div>
                </div>
              </article>
            </div>
            <!-- Pagination (bullets)-->
            <div class="swiper-pagination position-relative bottom-0 mt-2 pt-4 d-lg-none"></div>
          </div>
          <!-- Read more button-->
          <div class="text-center pt-4 pb-sm-2 pb-md-4 py-lg-5 my-2 mt-lg-0"><a class="btn btn-outline-primary" href="#">ìë¬¼ìë ëë³´ê¸°</a></div>

          
      <div class="container position-relative zindex-5 py-sm-4 py-lg-5 ">
        <!-- Text + button-->
        <div class="d-flex align-items-center justify-content-between mb-3">
          <div class="fw-medium text-black text-uppercase">ëë§ ëª°ëë ìì§ì¬ì íìí</div>
          <!-- Slider prev/next buttons-->
          <div class="d-flex">
            <button class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle me-2"  type="button" id="popular-prev"><i class="ai-arrow-left"></i></button>
            <button class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-2" type="button" id="popular-next"><i class="ai-arrow-right"></i></button>
          </div>
        </div>
        <!-- Slider (popular items)-->
        <div class="swiper" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;loop&quot;: true,
      &quot;navigation&quot;: {
        &quot;prevEl&quot;: &quot;#popular-prev&quot;,
        &quot;nextEl&quot;: &quot;#popular-next&quot;
      },
      &quot;breakpoints&quot;: {
        &quot;500&quot;: {
          &quot;slidesPerView&quot;: 2
        },
        &quot;860&quot;: {
          &quot;slidesPerView&quot;: 3
        },
        &quot;1200&quot;: {
          &quot;slidesPerView&quot;: 4
        }
      }
    }">
          <div class="swiper-wrapper">
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://punggok.kr/shopimages/punggok337/0080120000103.jpg?1563931569" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">ëª¨ì¢ì½(ë¹ììì¡ì´)</h3>
                      <p class="fs-sm mb-0">3,000ì</p>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://www.myplant.co.kr/shopimages/myplant/0020010001382.jpg?1618471791" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">ë¶ê°ì´ ë§¤í¸ ëí íë¶ë¶ê°ì´ ë¶ê°ì´í 
                      </h3>
                      <p class="fs-sm mb-0">2,500ì <del class='text-muted fs-xs'>3,000ì</del></p>
                    </div>
                  </div>
                </div>
              </a>
              </div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://www.nousbo.com/files/thumbnails/995/046/300x300.ratio.jpg?20220627102917" width="97" alt="Product">
                    <div class="ps-4">
                      <h3 class="fs-sm mb-2">
                        íë¦¬ë¯¸ì ë¶ê°ì´í</h3>
                      <p class="fs-sm mb-0">6,000ì</p>
                    </div>
                  </div>
                </div></a></div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="https://papa-garden.com/web/product/big/202011/5bde755495839e39f6f89922727e599a.jpg" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">ë¶ê°ì´ ì¸í¸</h3>
                      <p class="fs-sm mb-0">15,000ì</p>
                    </div>
                  </div>
                </div></a></div>
            <!-- Item-->
            <div class="swiper-slide h-auto"><a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="shop-single.html">
                <div class="card-body p-4 px-sm-3 px-md-4">
                  <div class="d-flex align-items-center"><img src="assets/img/landing/shop/hero/05.png" width="97" alt="Product">
                    <div class="ps-3 ps-md-4">
                      <h3 class="fs-sm mb-2">Scented candle in ceramic shell</h3>
                      <p class="fs-sm mb-0">$13.00</p>
                    </div>
                  </div>
                </div></a></div>
          </div>
        </div>
      </div>
    </div>
  </section>


    </main>
    <!-- Footer-->
    <footer class="footer bg-secondary py-5">
      <div class="container pt-md-2 pt-lg-3 pt-xl-4">
        <div class="row pb-4 pb-md-5 pt-sm-2 mb-lg-2">
          <div class="col-md-4 col-lg-3 pb-2 pb-md-0 mb-4 mb-md-0"><a class="navbar-brand text-nav py-0 mb-3 mb-md-4" href="index.html"><span class="text-primary flex-shrink-0 me-2">
                <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                  <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
                </svg></span><span>PUL-LANNER</span></a>
            <p class="fs-sm pb-2 pb-md-3 mb-3">ê±´ê°í ë°ë ¤ìë¬¼ì í¤ì°ë ìµê´</p>
            <div class="d-flex"><a class="btn btn-icon btn-sm btn-secondary btn-facebook rounded-circle me-3" href="#">
              <i class="ai-slack"></i></a>
              <a class="btn btn-icon btn-sm btn-secondary btn-instagram rounded-circle me-3" href="#"><i class="ai-discord"></i></a>
              <a class="btn btn-icon btn-sm btn-secondary btn-linkedin rounded-circle" href="#"><i class="
                ai-github"></i></a></div>
          </div>
          <div class="col-xl-8 offset-xl-1 col-lg-9">
						<div class="row row-cols-sm-4 row-cols-1">
							<div class="col">
                <ul class="nav flex-column mb-0">
									<li class="nav-item mb-2"><a class="nav-link p-0" href="#">ìë¬¼ê²ì</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/pharm/search">ê½</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ì¤ë´ì ìì©</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ë¤ì¡ì´</a></li>
								</ul>
								</ul>
							</div>
							<div class="col">
								<ul class="nav flex-column mb-0">
									<li class="nav-item mb-2"><a class="nav-link p-0" href="#">ìë¬¼ë¶ì</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/pharm/search">ìë¬¼íë§¤</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ì¨ìë¶ì</a></li>
								</ul>
								</ul>
							</div>
							<div class="col">
								<ul class="nav flex-column mb-0">
									<li class="nav-item mb-2"><a class="nav-link p-0" href="#">ìë¬¼ê´ë¦¬</a></li>
                  <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/pharm/search">ì¬ì¡ì¼ì§</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ìºë¦°ë</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ë¤ì´ì´ë¦¬</a></li>
								</ul>
								</ul>
							</div>
              <div class="col">
								<ul class="nav flex-column mb-0">
									<li class="nav-item mb-2"><a class="nav-link p-0" href="#">ìë¬¼ëªì</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/pharm/search">ìë¬¼ì</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">ì²/ì°</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">êµ­ë¦½ê³µì</a></li>
									<li class="nav-item mb-2"><a class="nav-link p-0 fw-normal" href="${path}/aidkit_k/asearch">í´ìë¦¼</a></li>
								</ul>
							</div>
						
            </div>
          </div>
        </div>
        <p class="fs-sm mb-0"><span class="opacity-70">&copy; MULTI Final 04 </span><a class="nav-link d-inline fw-normal p-0" href="https://createx.studio/" target="_blank" rel="noopener"></a></p>
      </div>
    </footer>


    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
      <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
      </svg><i class="ai-arrow-up"></i></a>
    <!-- Vendor scripts: js libraries and plugins-->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="assets/vendor/parallax-js/dist/parallax.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/aos/dist/aos.js"></script>
    <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="assets/vendor/shufflejs/dist/shuffle.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <!-- Main theme script-->
    <script src="assets/js/theme.min.js"></script>
  </body>
</html>
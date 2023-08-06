<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp" />


<!-- Page content-->
<body style="background-color: #FCFBED">

	<!-- Hero + Features-->
	<section class=" position-relative pt-lg-3 pt-xl-4 pt-xxl-5"
		style="color: #fef7d8;">
		<div
			class=" position-absolute start-0 bottom-0 w-100 d-none d-xl-block"
			style="background-color: #568A75; height: 900px;"></div>
		<div
			class="bg-primary position-absolute start-0 bottom-0 w-100 d-none d-lg-block d-xl-none"
			style="height: 800px;"></div>
		<div
			class="bg-primary position-absolute start-0 bottom-0 w-100 d-lg-none d-xl-none"
			style="height: 2%;"></div>
		<div
			class="bg-warning rounded-circle position-absolute start-50 d-none d-lg-block "
			style="bottom: 220px; width: 300px; height: 300px; margin-left: -165px;"
			data-aos="zoom-in" data-aos-duration="700" data-aos-delay="200"
			data-aos-offset="300"></div>
		<div
			class="container position-relative zindex-5 mt-2 pt-5 pb-2 pb-sm-4 pb-lg-5">
			<div class="row justify-content-center pt-3 pt-sm-4 pt-md-5 mt-sm-1">
				<div class="col-8 col-lg-4 order-lg-2" style="margin-top: -105px;">
					<!-- Middle sticky app screen-->
					<div class="position-sticky top-0 mb-5 pb-sm-2 pb-xl-4"
						style="padding-top: 110px;">
						<img class=" mx-auto d-none d-lg-block"
							src="https://cdn-icons-png.flaticon.com/512/5775/5775998.png"
							width="550" alt="App screen">
					</div>
				</div>
				<div
					class="col-sm-6 col-lg-4 order-lg-1 overflow-hidden mt-lg-4 pt-xl-3">
					<!-- Left app sceen-->
					<b><p class=" mx-4 " style="font-size: 23px; color: #568A75;">플래너,</b><br>
					<b>건강한 반려식물을 키우는 습관
						</p>
					</b>
					<h1 class="display-2 mt-3 text-uppercase mx-4 mb-sm-4"
						style="color: #568A75;">
						<span class='fw-bold'>pul-<br>Lanner
						</span>
					</h1>
					<div class="mx-auto mx-md-0" style="max-width: 400px;">
						<!-- 검색창 -->
						<div class="input-group">
							<span class="input-group-text text-muted"> <i
								class="ai-flower"></i>
							</span> <input class="form-control" type="text" placeholder="Search">
							<button class="btn btn-outline-warning" type="button">검색</button>
						</div>
					</div>
					<div class="d-none d-xxl-block" style="height: 310px;"></div>
					<div class="d-none d-xl-block d-xxl-none" style="height: 280px;"></div>
					<div class="d-none d-lg-block d-xl-none" style="height: 200px;"></div>
					<!-- Left features list-->
					<div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4"
						style="max-width: 340px;" data-aos="fade-right"
						data-aos-offset="300" data-aos-easing="ease-out-back"
						data-disable-parallax-down="lg">
						<div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
							<a class="nav-link  text-warning" style="font-size: 30px;"
								href="#"> <i class="ai-search fa-5x"></i>
							</a>
						</div>

						<a href="http://www.naver.com">
							<h2 class="h4 text-white mb-2 mb-lg-3">검색 서비스</h2>
						</a>
						<p class="text-white opacity-80 mb-0">식물 검색 서비스는 사용자들에게 식물에 관한
							정보를 검색하고 제공하는 서비스입니다. 이 서비스는 다양한 식물에 대한 정보를 찾고자 하는 사람들에게 도움을 줍니다.
						</p>
					</div>

					<div class="mb-5 mx-auto mx-sm-0 pb-lg-2 pb-xl-4"
						style="max-width: 340px;" data-aos="fade-right"
						data-aos-delay="200" data-aos-offset="250"
						data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
						<div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
							<a class="nav-link  text-warning" style="font-size: 30px;"
								href="#"> <i class="ai-calendar-check fa-5x"></i>
							</a>
						</div>

						<a href="http://www.naver.com">

							<h2 class="h4 text-white mb-2 mb-lg-3">식물 관리 서비스</h2>
						</a>
						<p class="text-white opacity-80 mb-0">식물 관리 서비스는 사용자들이 식물을
							효과적으로 관리하고 성장시킬 수 있도록 도와주는 서비스입니다. 식물의 성장 상태를 추적하고 기록하여 보다 효과적인
							관리를 할 수 있습니다.</p>
					</div>
				</div>
				<div
					class="col-sm-6 col-lg-4 order-lg-3 overflow-hidden mt-lg-4 pt-xl-3">
					<!-- Right app screen-->
					<b><p class=" mx-4 " style="font-size: 37px; color: #568A75;">Pul-Lanner와
							함께</b><br> <b>준비하고 키워보세요!
						</p>
					</b>
					<p class=" mx-4 " style="font-size: 15px; color: #7c807ffb;">
						초보 pul-lanner분들을 위한 식물의 모든것이 담겨 있는 곳입니다. 반려 식물 분양, 대여 또는 씨앗 구매와
						원예도구 구매도 가능하며 식물에 대한 정보와 기르는데 필요한 꿀팁들을 제공합니다.</p>

					<div class="d-none d-xxl-block" style="height: 520px;"></div>
					<div class="d-none d-xl-block d-xxl-none" style="height: 490px;"></div>
					<div class="d-none d-lg-block d-xl-none" style="height: 400px;"></div>
					<!-- Right features list-->
					<div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4"
						style="max-width: 340px;" data-aos="fade-left"
						data-aos-offset="250" data-aos-delay="400"
						data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
						<div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
							<a class="nav-link  text-warning" style="font-size: 30px;"
								href="#"> <i class="ai-cart fa-5x"></i>
							</a>
						</div>

						<a href="http://www.naver.com">
							<h2 class="h4 text-white mb-2 mb-lg-3">식물, 씨앗 구매</h2>
						</a>
						<p class="text-white opacity-80 mb-0">식물 판매 서비스는 사람들에게 다양한 종류의
							식물을 판매하는 서비스입니다. 다양한 종류와 품종의 식물을 선택할 수 있습니다. 개별적인 취향과 환경에 맞는 식물을
							찾을 수 있으며, 원하는 목적에 맞게 식물을 선택할 수 있습니다.</p>
					</div>
					<div class="mb-5 mx-auto me-sm-0 pb-lg-2 pb-xl-4"
						style="max-width: 340px;" data-aos="fade-left"
						data-aos-offset="200" data-aos-delay="600"
						data-aos-easing="ease-out-back" data-disable-parallax-down="lg">
						<div class="d-table bg-faded-dark rounded-1 p-2 mb-3 mb-lg-4">
							<a class="nav-link  text-warning" style="font-size: 30px;"
								href="#"> <i class="ai-droplet fa-5x"></i>
							</a>
						</div>

						<a href="http://www.naver.com">
							<h2 class="h4 text-white mb-2 mb-lg-3">원예도구 구매</h2>
						</a>
						<p class="text-white opacity-80 mb-0">원예도구 판매 서비스는 사람들에게 원예
							작업을 수행하는 데 필요한 다양한 도구와 용품을 판매하는 서비스입니다. 사용자는 다양한 제품을 쉽게 찾고, 신뢰할 수
							있는 품질과 성능을 가진 제품을 선택할 수 있습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 직접 엄선한 반려식물-->
	<div class="masonry-filterable py-5 mt-5">

		<h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-5 mb-lg-4">직접 엄선한
			반려식물</h3>


		<!-- Classes (Tabs)-->
		<section class="container">
			<!-- Nav tabs-->
			<ul
				class="nav nav-tabs flex-nowrap overflow-auto text-nowrap fs-sm flex-nowrap overflow-auto text-nowrap w-100 mx-auto pb-4 mb-5 mb-sm-3"
				style="max-width: 250px;">
				<li class="nav-item mb-0"><a class="nav-link active bor"
					href="#plantparcel" data-bs-toggle="tab" role="tab">식물분양</a></li>
				<li class="nav-item mb-0"><a class="nav-link "
					href="#stretching" data-bs-toggle="tab" role="tab">씨앗분양</a></li>

			</ul>
			<!-- Tab content-->
			<div class="tab-content">
			
				<!-- Beginers A-->
				<div class="tab-pane fade show active" id="plantparcel"
					role="tabpanel">
					<div class="masonry-grid " data-columns="4" id="a">

						<!-- Item-->
						<c:forEach var="item" items="${parcellist}">
						<div class="masonry-grid-item pb-lg-5 mb-3 mb-lg-0 mb-xl-2"
							data-groups="[&quot;a&quot;]">
							<div class="card-hover zoom-effect mx-auto">
								<div class="zoom-effect-wrapper rounded-5"
									style="max-width: 300px;">
									<div class="zoom-effect-img">
										<img
											src="${path}/plant/file/${item.parcelimgedt}"
											alt="Image"
											style="max-width: 300px; max-height: 300px; min-width: 300px; min-height: 300px;">
									</div>
								</div>
								<div class="pt-4 mt-lg-2">
									<h2 class="h5 mb-2" style="text-align: center;">
										<a class="stretched-link text-nav"
											href="${path}/plant-parcel-out?parcelno=${item.parcelno}"><c:out value="${item.parceltitle}" /></a>
									</h2>

								</div>
							</div>
						</div>
						</c:forEach>

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
			<h1>오늘의 꽃</h1>
				<c:forEach var="todayFlower" items="${todayFlower}">
					<img class="rounded-5"
						src="${todayFlower.imgUrl1}"
						alt="Image">
					<div class="accordion accordion-alt" id="industries">
						<div class="accordion-item mb-n3 mb-lg-n2 mb-xl-1 mt-sm-3">
							<h2 class="accordion-header" style="color: rgb(0, 0, 0);">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-binded-content="#finance-img"
									data-bs-target="#finance" aria-expanded="true"
									aria-controls="finance">${todayFlower.flowNm}</button>
							</h2>
							<div class="accordion-collapse collapse show" id="finance"
								data-bs-parent="#industries">
								<div class="accordion-body">${todayFlower.fContent}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>








			<!-- Binded images-->

			<div
				class="col-md-4 col-lg-4 col-xl-4 offset-1 d-none d-sm-none d-md-block"
				style="margin-top: -100px;">
				<div class="ps-lg-4 ps-xl-0">
					<h2>나들이 장소 추천</h2>
					<c:forEach var="random" items="${randomList}">
						<div class="position-relative d-flex align-items-center mb-4">
							<img class="rounded" src="${random.firstimage}"
								href="${path}/arboretumDetail?id=${random.contentid}"
								onerror="this.onerror=null; this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAALVBMVEX////d3d3k5OTs7Oz6+vrh4eH19fXy8vL8/Pzm5ubq6ur09PTr6+vb29vv7+/imAPPAAADoElEQVR4nO3ci3KjIBiGYUVAwIT7v9wVNYfdCDRNWjc/7zPT3Xbtzsg3nARM1wEAAAAAAAAAAAAAAAAAAAAAAOBzOZszWXf0zR1jUn2W8fro2zvCmE9k0WAozlQy8e01n1iJpDf26Fv8daGWST8efYu/rp5JPPoWf91gatqrJ07XtNfHAtinx+F9RhGT2qE2TX2OETAw12cfzxqOLtKrqhP35338VP+9DWcVji7Ui34gkl4dXagXfaWM596ocDqdfGFpqa1MjL8bX3VU9dYmPpPwz4TDWd94JruLrbbShkRnkpt/uaHdTG4TDaettXdrAsVla8GZmEu70YMy59l9d2sLXa3gTLZaosN98c2wVZZCTZGbybT+wkPZL1P3/FOB2ExO6/XTzqWt582OyVIzMWsT2YvkEkq2SxGayXldis+1j7Vd7QcmNhOzXLSZq1st0m1lsraO/Hi7Lgdk1qNkZrKOLdlqMlsqSmY8lpmJWopcethbKpLer0gyM1maRqbEd6m5/dRkZrLUglLT2Sb++x2KzEyWsba8fF34FZmZLF1sbvqxWiYw+52s4EzKOz9LJhOZPGTSUj2hP8lUgv2GsTGFqiQzk2XLtz4/yczqZGbiq/PYUmoyM1lnZKWF6NIDkcxMqs/Ffrne1HPxVqxsRVl72Nyhc6GZbIv2uSnKeuwmN1hLzWQr1343u64oZcclqZlsPYrb2xoO6/p1dp4rNpOt9bjHJ8FtKyM/KsnNxFw2/P6uKv6yPZj/n3Izub6q5MZrr2LCZVtdF85bCM5km78nzo4xxvH2PmR53n9MUd6mlEmvcqc6p+IBLtGZzBORvddQdOWcsfBMevVwVMnF2ik/6ZmkEyd3LcjZwLnHNZYwjMngv3TsuolMnvTpmXDe/lF5E+d7Pv010syW7ys+vZr8QChBwJu1bgrqfcKnv9AEAAAAAE1yLX5mYY0hkwdzJk7b+Q+7hKOvfzl9+7ExRtveR3/yQwhdN4Toh7QDeArKdF1UgxfwKUHPMlrPXYo+j51LVSZtEs/fTekTmOZv9fKvrZkzSbsSqas1tnNTjL3T6QSGNV00Yxwb/EzDLROzZOKUn0bjbHp5cq4v0acPXhaw8vqkuT+51ZOoUhbXejJ9+r7WN/X3mUxzGOE8f4VOq9SvNNjBzpTTaatGzZl4O3esakwnl07Kh1RnvFL+6Dv8fzjfXt9aFJVSRAIAAAAAAAAAAAAAAAAAAAAAAADI9QcjtCABFpqPswAAAABJRU5ErkJggg=='"
								style="max-width: 110px; max-height: 110px; min-width: 110px; min-height: 110px;"
								alt="Post image">
							<div class="ps-3">
								<h4 class="h5 mb-2">
									<a class="stretched-link"
										href="${path}/arboretumDetail?id=${random.contentid}">${random.title}</a>
								</h4>
								<span class="text-muted" style="font-size: 16px;">휴무일: ${random.restdate}</span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<!-- Resources (Blog)-->
	<section class="bg-faded-primary py-5 mt-5">
		<div class="container py-sm-2 pt-md-3 py-lg-2 py-xl-4 py-xxl-5">
			<h3 class="h1 text-center pt-2 pt-sm-3 pb-3 mb-3 mb-lg-4">식물 자랑</h3>
			<!-- Swiper-->
			<div class="swiper"
				data-swiper-options="
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
								<div class="d-flex align-items-center mb-4 mt-n1">
									<span class="fs-sm text-muted">August 13, 2022</span><span
										class="fs-xs opacity-20 mx-3">|</span><a
										class="badge text-nav fs-xs border" href="#">Inspiration</a>
								</div>
								<h3 class="h4 card-title">
									<a href="#">나를 식집사로 만들어준 피쉬본 포실이 🌵</a>
								</h3>
								<p class="card-text">포실이가 우리집에 온지 한달째 되는 날 💚 아직은 많이 부족한 초보
									식집사지만 .. 🥹 다행히 과습도 오지않고 그 사이 새로운 아기 자구가 올라온 거 같아 아마도 ?</p>
							</div>
							<div class="card-footer pt-3">
								<a class="d-flex align-items-center text-decoration-none pb-2"
									href="#"><img class="rounded-circle"
									src="assets/img/avatar/10.jpg" width="48" alt="Post author">
									<h6 class="ps-3 mb-0">Guy Hawkins</h6></a>
							</div>
						</div>
					</article>
					<!-- Item-->
					<article class="swiper-slide h-auto">
						<div class="card border-0 h-100">
							<div class="card-body pb-4">
								<div class="d-flex align-items-center mb-4 mt-n1">
									<span class="fs-sm text-muted">July 25, 2022</span><span
										class="fs-xs opacity-20 mx-3">|</span><a
										class="badge text-nav fs-xs border" href="#">Inspiration</a>
								</div>
								<h3 class="h4 card-title">
									<a href="#">고슬딸기 열매가 빨갛게 익었어요</a>
								</h3>
								<p class="card-text">2개는 꽤나 튼실하게 잘 익은거 같아요 가장 작은 1개는 따서 먹어보니
									역시 단맛은 안나네요🤣 물푸레 영양제를 줘야하는걸까 싶어요 지금은 알비료만 얹어놨어요</p>
							</div>
							<div class="card-footer pt-3">
								<a class="d-flex align-items-center text-decoration-none pb-2"
									href="#"><img class="rounded-circle"
									src="assets/img/avatar/07.jpg" width="48" alt="Post author">
									<h6 class="ps-3 mb-0">Cody Fisher</h6></a>
							</div>
						</div>
					</article>
					<!-- Item-->
					<article class="swiper-slide h-auto">
						<div class="card border-0 h-100">
							<div class="card-body pb-4">
								<div class="d-flex align-items-center mb-4 mt-n1">
									<span class="fs-sm text-muted">July 08, 2022</span><span
										class="fs-xs opacity-20 mx-3">|</span><a
										class="badge text-nav fs-xs border" href="#">Inspiration</a>
								</div>
								<h3 class="h4 card-title">
									<a href="#">비 자발적 미니멀리스트가 되었다🌿😐</a>
								</h3>
								<p class="card-text">어느새 식물들이 내 화장대를 점령했다🥹 장마와 무더위로 인해 베란다
									식물들을 하나둘씩 방으로 피신시킨게 시작이었다. 그러면서도 식물공부를 하며</p>
							</div>
							<div class="card-footer pt-3">
								<a class="d-flex align-items-center text-decoration-none pb-2"
									href="#"><img class="rounded-circle"
									src="assets/img/avatar/09.jpg" width="48" alt="Post author">
									<h6 class="ps-3 mb-0">Jane Cooper</h6></a>
							</div>
						</div>
					</article>
				</div>
				<!-- Pagination (bullets)-->
				<div
					class="swiper-pagination position-relative bottom-0 mt-2 pt-4 d-lg-none"></div>
			</div>
			<!-- Read more button-->
			<div class="text-center pt-4 pb-sm-2 pb-md-4 py-lg-5 my-2 mt-lg-0">
				<a class="btn btn-outline-primary" href="#">식물자랑 더보기</a>
			</div>


			<div class="container position-relative zindex-5 py-sm-4 py-lg-5 ">
				<!-- Text + button-->
				<div class="d-flex align-items-center justify-content-between mb-3">
					<div class="fw-medium text-black text-uppercase">나만 몰랐던 식집사의
						필수템</div>
					<!-- Slider prev/next buttons-->
					<div class="d-flex">
						<button
							class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle me-2"
							type="button" id="popular-prev">
							<i class="ai-arrow-left"></i>
						</button>
						<button
							class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle ms-2"
							type="button" id="popular-next">
							<i class="ai-arrow-right"></i>
						</button>
					</div>
				</div>
				<!-- Slider (popular items)-->
				<div class="swiper"
					data-swiper-options="{
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
    
    
    <!-- Item-->
						
    
					<div class="swiper-wrapper">
						<c:forEach var="item" items="${plist1}">
						 <!-- Item-->
				            <div class="swiper-slide h-auto">
				            <a class="card h-100 border-0 rounded-1 text-decoration-none px-xxl-1" href="${path}/shop/product?pno=${item.pno}">
				                <div class="card-body p-4 px-sm-3 px-md-4">
				                  <div class="d-flex align-items-center">
				                  <img src="${item.image}" width="97" alt="Product">
				                    <div class="ps-3 ps-md-4">
				                      <h3 class="fs-sm mb-2">${item.title}</h3>
				                      <p class="fs-sm mb-0"><fmt:formatNumber value="${item.lprice }" pattern="#,###" />원</p>
				                    </div>
				                  </div>
				                </div>
				              </a>
				            </div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
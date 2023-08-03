<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
	/* 이미지 크기 맞추기(item에 적용) */
	.image-container {
		height: 600px;
		overflow: hidden;
	}
	/* 이미지 크기 맞추기(item에 적용) */
	.fit-cover {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
	
	/* 이미지 크기 맞추기(item에 적용) */
	.image-container2 {
		height: 400px;
		overflow: hidden;
	}
	/* 이미지 크기 맞추기(item에 적용) */
	.fit-cover2 {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
</style>

<!-- Page content-->
<div class="container py-5 mt-5 mb-2 mb-sm-3 mb-lg-4 mb-xxl-5">
	<!-- Breadcrumb-->
	<nav aria-label="breadcrumb">
		<ol class="pt-lg-2 pb-lg-3 pb-1 breadcrumb">
			<li class="breadcrumb-item">식물명소</li>
			<li class="breadcrumb-item active" aria-current="page">${aItem.title}</li>
		</ol>
	</nav>
	<!-- Page title-->
	<div class="row">
		<div class="col-lg-11 col-xl-10">
			<h1 class="display-2 pb-3 pb-lg-5 mt-5">${aItem.title}</h1>
		</div>
	</div>

	<!-- 이미지 슬라이드 -->
	<div class="swiper swiper-nav-onhover rounded-5"
		data-swiper-options='{
          "spaceBetween": 20,
          "loop": true,
          "pagination": {
            "el": ".swiper-pagination",
            "clickable": true
          },
          "navigation": {
            "prevEl": ".btn-prev",
            "nextEl": ".btn-next"
          }
        }'>
		<div class="swiper-wrapper rounded-5">
			<!-- Item -->
			<div class="swiper-slide image-container">
				<div class="ratio ratio-16x9 bg-secondary">
					<img src="${aItem.firstimage}" alt="이미지 설명"
					onerror="this.onerror=null; this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAALVBMVEX////d3d3k5OTs7Oz6+vrh4eH19fXy8vL8/Pzm5ubq6ur09PTr6+vb29vv7+/imAPPAAADoElEQVR4nO3ci3KjIBiGYUVAwIT7v9wVNYfdCDRNWjc/7zPT3Xbtzsg3nARM1wEAAAAAAAAAAAAAAAAAAAAAAOBzOZszWXf0zR1jUn2W8fro2zvCmE9k0WAozlQy8e01n1iJpDf26Fv8daGWST8efYu/rp5JPPoWf91gatqrJ07XtNfHAtinx+F9RhGT2qE2TX2OETAw12cfzxqOLtKrqhP35338VP+9DWcVji7Ui34gkl4dXagXfaWM596ocDqdfGFpqa1MjL8bX3VU9dYmPpPwz4TDWd94JruLrbbShkRnkpt/uaHdTG4TDaettXdrAsVla8GZmEu70YMy59l9d2sLXa3gTLZaosN98c2wVZZCTZGbybT+wkPZL1P3/FOB2ExO6/XTzqWt582OyVIzMWsT2YvkEkq2SxGayXldis+1j7Vd7QcmNhOzXLSZq1st0m1lsraO/Hi7Lgdk1qNkZrKOLdlqMlsqSmY8lpmJWopcethbKpLer0gyM1maRqbEd6m5/dRkZrLUglLT2Sb++x2KzEyWsba8fF34FZmZLF1sbvqxWiYw+52s4EzKOz9LJhOZPGTSUj2hP8lUgv2GsTGFqiQzk2XLtz4/yczqZGbiq/PYUmoyM1lnZKWF6NIDkcxMqs/Ffrne1HPxVqxsRVl72Nyhc6GZbIv2uSnKeuwmN1hLzWQr1343u64oZcclqZlsPYrb2xoO6/p1dp4rNpOt9bjHJ8FtKyM/KsnNxFw2/P6uKv6yPZj/n3Izub6q5MZrr2LCZVtdF85bCM5km78nzo4xxvH2PmR53n9MUd6mlEmvcqc6p+IBLtGZzBORvddQdOWcsfBMevVwVMnF2ik/6ZmkEyd3LcjZwLnHNZYwjMngv3TsuolMnvTpmXDe/lF5E+d7Pv010syW7ys+vZr8QChBwJu1bgrqfcKnv9AEAAAAAE1yLX5mYY0hkwdzJk7b+Q+7hKOvfzl9+7ExRtveR3/yQwhdN4Toh7QDeArKdF1UgxfwKUHPMlrPXYo+j51LVSZtEs/fTekTmOZv9fKvrZkzSbsSqas1tnNTjL3T6QSGNV00Yxwb/EzDLROzZOKUn0bjbHp5cq4v0acPXhaw8vqkuT+51ZOoUhbXejJ9+r7WN/X3mUxzGOE8f4VOq9SvNNjBzpTTaatGzZl4O3esakwnl07Kh1RnvFL+6Dv8fzjfXt9aFJVSRAIAAAAAAAAAAAAAAAAAAAAAAADI9QcjtCABFpqPswAAAABJRU5ErkJggg=='"
					class="fit-cover">
				</div>
			</div>

			<!-- Item -->
			<div class="swiper-slide image-container">
				<div class="ratio ratio-16x9 bg-secondary">
					<img src="${aItem.firstimage2}" alt="이미지 설명" 
					onerror="this.onerror=null; this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAALVBMVEX////d3d3k5OTs7Oz6+vrh4eH19fXy8vL8/Pzm5ubq6ur09PTr6+vb29vv7+/imAPPAAADoElEQVR4nO3ci3KjIBiGYUVAwIT7v9wVNYfdCDRNWjc/7zPT3Xbtzsg3nARM1wEAAAAAAAAAAAAAAAAAAAAAAOBzOZszWXf0zR1jUn2W8fro2zvCmE9k0WAozlQy8e01n1iJpDf26Fv8daGWST8efYu/rp5JPPoWf91gatqrJ07XtNfHAtinx+F9RhGT2qE2TX2OETAw12cfzxqOLtKrqhP35338VP+9DWcVji7Ui34gkl4dXagXfaWM596ocDqdfGFpqa1MjL8bX3VU9dYmPpPwz4TDWd94JruLrbbShkRnkpt/uaHdTG4TDaettXdrAsVla8GZmEu70YMy59l9d2sLXa3gTLZaosN98c2wVZZCTZGbybT+wkPZL1P3/FOB2ExO6/XTzqWt582OyVIzMWsT2YvkEkq2SxGayXldis+1j7Vd7QcmNhOzXLSZq1st0m1lsraO/Hi7Lgdk1qNkZrKOLdlqMlsqSmY8lpmJWopcethbKpLer0gyM1maRqbEd6m5/dRkZrLUglLT2Sb++x2KzEyWsba8fF34FZmZLF1sbvqxWiYw+52s4EzKOz9LJhOZPGTSUj2hP8lUgv2GsTGFqiQzk2XLtz4/yczqZGbiq/PYUmoyM1lnZKWF6NIDkcxMqs/Ffrne1HPxVqxsRVl72Nyhc6GZbIv2uSnKeuwmN1hLzWQr1343u64oZcclqZlsPYrb2xoO6/p1dp4rNpOt9bjHJ8FtKyM/KsnNxFw2/P6uKv6yPZj/n3Izub6q5MZrr2LCZVtdF85bCM5km78nzo4xxvH2PmR53n9MUd6mlEmvcqc6p+IBLtGZzBORvddQdOWcsfBMevVwVMnF2ik/6ZmkEyd3LcjZwLnHNZYwjMngv3TsuolMnvTpmXDe/lF5E+d7Pv010syW7ys+vZr8QChBwJu1bgrqfcKnv9AEAAAAAE1yLX5mYY0hkwdzJk7b+Q+7hKOvfzl9+7ExRtveR3/yQwhdN4Toh7QDeArKdF1UgxfwKUHPMlrPXYo+j51LVSZtEs/fTekTmOZv9fKvrZkzSbsSqas1tnNTjL3T6QSGNV00Yxwb/EzDLROzZOKUn0bjbHp5cq4v0acPXhaw8vqkuT+51ZOoUhbXejJ9+r7WN/X3mUxzGOE8f4VOq9SvNNjBzpTTaatGzZl4O3esakwnl07Kh1RnvFL+6Dv8fzjfXt9aFJVSRAIAAAAAAAAAAAAAAAAAAAAAAADI9QcjtCABFpqPswAAAABJRU5ErkJggg=='"
					class="fit-cover">
				</div>
			</div>

		</div>

		<!-- Prev button -->
		<button type="button" class="btn btn-prev btn-icon btn-sm btn-outline-primary rounded-circle position-absolute start-0 top-50 translate-middle-y">
			<i class="ai-arrow-left"></i>
		</button>

		<!-- Next button -->
		<button type="button" class="btn btn-next btn-icon btn-sm btn-outline-primary rounded-circle position-absolute end-0 top-50 translate-middle-y">
			<i class="ai-arrow-right"></i>
		</button>

		<!-- Bullets -->
		<div class="swiper-pagination"></div>
	</div>


	<!-- 개요 이용안내 주소 전화번호 홈페이지-->
	<div class="border-bottom py-4 py-lg-5">
		<div class="row">
			<div class="border-bottom py-md-2 py-lg-3 py-xl-4 py-xxl-5">
				<div class="row my-5">
					<div class="col-12">
						<h2 class="h1 pb-2">개요</h2>
						<p class="fs-lg">${aItem.overview}</p>
					</div>
					<div class="col-lg-12 col-xl-12" style="text-align: center;">
						<div
							class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 g-sm-4 pt-4 pt-xxl-5 mb-2 mb-sm-3 pb-xxl-4">
							<div class="col" style="border-right: 1px solid #ccc;">
								<h2
									class="fs-base fw-normal text-muted mb-2 mb-sm-3 ai ai-compass">
									주소</h2>
								<p class="list-unstyled fs-lg fw-semibold text-dark mb-0">${aItem.addr1}</p>
							</div>
							<div class="col" style="border-right: 1px solid #ccc;">
								<h2
									class="fs-base fw-normal text-muted mb-2 mb-sm-3 ai ai-phone-call">
									전화번호</h2>
								<p class="list-unstyled fs-lg fw-semibold text-dark mb-0">${aItem.infocenter}</p>
							</div>
							<div class="col">
								<h2 class="fs-base fw-normal text-muted mb-2 mb-sm-3 ai-globe">
									홈페이지</h2>
								<p class="list-unstyled fs-lg fw-semibold text-dark mb-0">
									<a href="https://www.naver.com" target="_blank">${aItem.homepage}</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="border-bottom">
				<div
					class="col-md-12 d-flex align-items-center justify-content-center"
					style="margin-top: 60px; margin-bottom: 60px;">
					<!-- Location (Map) start -->
					<div id="map" class="rounded"
						style="width: 1000px; height: 550px; background-color: rgb(160, 179, 186);"></div>
					<div
						class="d-flex h-25 flex-column align-items-center justify-content-center">
						<a
							href="https://www.google.com/maps/search/${aItem.title} ${aItem.addr1}"></a>
					</div>
					<!-- Location (Map) end -->
				</div>
			</div>


			<!-- More projects carousel-->
			<div class="d-flex align-items-center pb-3 mb-3 mb-lg-4"
				style="margin-top: 80px;">
				<h2 class="h1 mb-0">추천 장소</h2>
				<div class="d-flex ms-auto">
					<button
						class="btn btn-sm btn-icon btn-outline-primary rounded-circle ms-3"
						type="button" id="prev-project">
						<i class="ai-arrow-left"></i>
					</button>
					<button
						class="btn btn-sm btn-icon btn-outline-primary rounded-circle ms-3"
						type="button" id="next-project">
						<i class="ai-arrow-right"></i>
					</button>
				</div>
			</div>
			<div class="swiper pb-md-4 pb-xl-5"
				data-swiper-options="{
                      &quot;spaceBetween&quot;: 24,
                      &quot;loop&quot;: true,
                      &quot;navigation&quot;: {
                        &quot;prevEl&quot;: &quot;#prev-project&quot;,
                        &quot;nextEl&quot;: &quot;#next-project&quot;
                      },
                      &quot;breakpoints&quot;: {
                        &quot;576&quot;: { &quot;slidesPerView&quot;: 2 }
                      }
                    }">
				<div class="swiper-wrapper">

					<!-- Item-->
					<c:forEach var="random" items="${randomList}">
						<div class="swiper-slide">
							<a class="d-block position-relative image-container2"
								href="${path}/arboretumDetail?id=${random.contentid}">
								<div
									class="bg-info rounded-5 position-absolute top-0 start-0 w-100 h-100"></div>
								<img
								class="d-block position-relative zindex-2 mx-auto fit-cover2 rounded-5"
								src="${random.firstimage}"
								onerror="this.onerror=null; this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAALVBMVEX////d3d3k5OTs7Oz6+vrh4eH19fXy8vL8/Pzm5ubq6ur09PTr6+vb29vv7+/imAPPAAADoElEQVR4nO3ci3KjIBiGYUVAwIT7v9wVNYfdCDRNWjc/7zPT3Xbtzsg3nARM1wEAAAAAAAAAAAAAAAAAAAAAAOBzOZszWXf0zR1jUn2W8fro2zvCmE9k0WAozlQy8e01n1iJpDf26Fv8daGWST8efYu/rp5JPPoWf91gatqrJ07XtNfHAtinx+F9RhGT2qE2TX2OETAw12cfzxqOLtKrqhP35338VP+9DWcVji7Ui34gkl4dXagXfaWM596ocDqdfGFpqa1MjL8bX3VU9dYmPpPwz4TDWd94JruLrbbShkRnkpt/uaHdTG4TDaettXdrAsVla8GZmEu70YMy59l9d2sLXa3gTLZaosN98c2wVZZCTZGbybT+wkPZL1P3/FOB2ExO6/XTzqWt582OyVIzMWsT2YvkEkq2SxGayXldis+1j7Vd7QcmNhOzXLSZq1st0m1lsraO/Hi7Lgdk1qNkZrKOLdlqMlsqSmY8lpmJWopcethbKpLer0gyM1maRqbEd6m5/dRkZrLUglLT2Sb++x2KzEyWsba8fF34FZmZLF1sbvqxWiYw+52s4EzKOz9LJhOZPGTSUj2hP8lUgv2GsTGFqiQzk2XLtz4/yczqZGbiq/PYUmoyM1lnZKWF6NIDkcxMqs/Ffrne1HPxVqxsRVl72Nyhc6GZbIv2uSnKeuwmN1hLzWQr1343u64oZcclqZlsPYrb2xoO6/p1dp4rNpOt9bjHJ8FtKyM/KsnNxFw2/P6uKv6yPZj/n3Izub6q5MZrr2LCZVtdF85bCM5km78nzo4xxvH2PmR53n9MUd6mlEmvcqc6p+IBLtGZzBORvddQdOWcsfBMevVwVMnF2ik/6ZmkEyd3LcjZwLnHNZYwjMngv3TsuolMnvTpmXDe/lF5E+d7Pv010syW7ys+vZr8QChBwJu1bgrqfcKnv9AEAAAAAE1yLX5mYY0hkwdzJk7b+Q+7hKOvfzl9+7ExRtveR3/yQwhdN4Toh7QDeArKdF1UgxfwKUHPMlrPXYo+j51LVSZtEs/fTekTmOZv9fKvrZkzSbsSqas1tnNTjL3T6QSGNV00Yxwb/EzDLROzZOKUn0bjbHp5cq4v0acPXhaw8vqkuT+51ZOoUhbXejJ9+r7WN/X3mUxzGOE8f4VOq9SvNNjBzpTTaatGzZl4O3esakwnl07Kh1RnvFL+6Dv8fzjfXt9aFJVSRAIAAAAAAAAAAAAAAAAAAAAAAADI9QcjtCABFpqPswAAAABJRU5ErkJggg=='"
								width="636" alt="Image">
							</a>
							<div class="pt-1 mt-sm-3">
								<div class="row pt-1 pt-lg-1 mt-1" style="margin-left: 8px;">
									<h4>
										<a href="${path}/arboretumDetail?id=${random.contentid}">${random.title}</a>
									</h4>
									<div class="col-sm-6">
										<h6 class="stext-body mb-0">
											<i class="ai ai-compass"></i> 주소
										</h6>
										<p class="mb-0">${random.addr1 }</p>
									</div>
									<div class="col-sm-6">
										<h6 class="stext-body mb-0">
											<i class="ai ai-phone-call"></i> 전화번호
										</h6>
										<p class="mb-0">${aItem.infocenter}</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>
	</main>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />


<!-- 카카오 토큰 JavaScript 키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b6706ca239a6ee45e14086e5313d42a3"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(${aItem.mapy}, ${aItem.mapx}), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
			{
			    content: '<div>${aItem.title}</div>', 
			    latlng: new kakao.maps.LatLng(${aItem.mapy}, ${aItem.mapx})
			},
	];
	
	for (var i = 0; i < positions.length; i ++) {
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions[i].latlng // 마커의 위치
	});
	
	// 마커에 표시할 인포윈도우를 생성합니다 
	var infowindow = new kakao.maps.InfoWindow({
	    content: positions[i].content // 인포윈도우에 표시할 내용
	});
	
	// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	// 이벤트 리스너로는 클로저를 만들어 등록합니다 
	// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}
	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	return function() {
	    infowindow.open(map, marker);
	};
	}
	
	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	return function() {
	    infowindow.close();
	};
	}
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
	/* 이미지 크기 맞추기(item에 적용) */
	.image-container {
		height: 550px;
		overflow: hidden;
	}
	/* 이미지 크기 맞추기(item에 적용) */
	.fit-cover {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
</style>

<!-- Page content-->
<div class="overflow-hidden">
	<div class="container pt-5 pb-sm-3 mt-5 mb-2 mb-md-3 mb-lg-4 mb-xxl-5">
		<!-- Breadcrumb-->
		<nav aria-label="breadcrumb">
			<ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
				<li class="breadcrumb-item">식물검색</li>
				<li class="breadcrumb-item"><a href="/PlantSearch">실내정원용</a></li>
				<li class="breadcrumb-item active" aria-current="page">${itemDetail.cntntsSj}</li>
			</ol>
		</nav>

		<!-- 식물 정보 시작 -->
		<article class="row align-items-center card-hover pb-3 mb-md-2 mb-lg-3 mb-xl-4" data-aos="fade-up" data-aos-duration="600" data-aos-offset="280">
			<div class="col-5 image-container">
				<a href="${itemDetail.imageA}" class="gallery-item d-block card-hover fit-cover">
				<img src="${itemDetail.imageA}" class="d-block rounded-4 fit-cover" alt="Image #1" style="width: 500px;">
				</a>
			</div>
			<div class="col-7" data-aos="fade-up" data-aos-duration="850" data-aos-offset="180" data-disable-parallax-down="md">
				<div class="ms-md-4 ms-lg-6 ms-xxl-0" style="margin-bottom: 50px;">
					<div class="col row">
						<div class="col" style="margin-top: 50px;">
							<div class="text-muted mb-2">실내정원용</div>
							<h2 class="mb-lg-3">${itemDetail.cntntsSj}</h2>
							<h4 class="mb-lg-3 text-muted" style='line-height: 30%'>${itemDetail.plntbneNm}</h4>
						</div>
					</div>
					<div style="width: 750px; height: 100px; overflow: auto; margin-bottom: 15px;">
						<p class="mb-lg-3 mb-md-1 mb-lg-3 mt-3 pb-2">${itemDetail.adviseInfo}
						</p>
					</div>

					<h3 class="h5 ai-cloud-rain"> 물주기</h3>
					<div class="fs-6" style="margin-bottom: 20px;">
						봄 : ${itemDetail.watercycleSprng} <br> 여름 :
						${itemDetail.watercycleSummer} <br> 가을 :
						${itemDetail.watercycleAutumn} <br> 겨울 :
						${itemDetail.watercycleWinter} <br>
					</div>

					<!--표-->
					<div class="row row-cols-1 row-cols-sm-2 g-4">
						<div class="col">
							<h3 class="h5 ai-chart"> 관리 수준</h3>
							<p class="mb-1">${itemDetail.manageleveltext}</p>
						</div>
						<div class="col">
							<h3 class="h5 ai-award"> 성장 속도</h3>
							<p class="mb-1">${itemDetail.growthrate}</p>
						</div>
						<div class="col">
							<h3 class="h5 ai-cloud-rain"> 알맞은 습도</h3>
							<p class="mb-1">${itemDetail.humidity}</p>
						</div>
						<div class="col">
							<h3 class="h5 ai-bulb-alt"> 잘 자라는 온도</h3>
							<p class="mb-1">${itemDetail.growthTemperature}</p>
						</div>
					</div>
				</div>
			</div>
		</article>

		<hr><br/><br/><br/>

		<!-- 세부정보-->
		<h4 class="mb-lg-3" style="text-align: center;">상세정보</h4>
		<div class="row row-cols-1 row-cols-sm-2 row-cols-xl-4 g-4 pb-2 pb-sm-4 pb-lg-5 mt-lg-3" style="text-align: center;">
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC; height:"200px;">
					<div class="card-body">
						<h4 class="card-title mb-2">원산지</h4>
						<p class="mb-0">${itemDetail.orgplce}</p>
					</div>
				</div>
			</div>
			
			<!-- 자세히 알아보기 -->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">잎 형태</h4>
						<p class="mb-0">${itemDetail.leafShape}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">냄새 정도</h4>
						<p class="mb-0">${itemDetail.smellCodeName}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">독성</h4>
						<p class="mb-0">${itemDetail.toxin}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">번식 시기</h4>
						<p class="mb-0">${itemDetail.prpgtEra}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">기타 시기</h4>
						<p class="mb-0">${itemDetail.etcEra}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">비료</h4>
						<p class="mb-0">${itemDetail.frtlzr}</p>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col overflow-auto" style="height: 170px;">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">병충해관리정보</h4>
						<p class="mb-0">${itemDetail.dlthtsManage}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

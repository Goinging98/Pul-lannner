<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
	/* 이미지 크기 맞추기(item에 적용) */
	.image-container {
		height: 400px;
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
			<ol class="pt-lg-3 pb-lg-4 pb-lg-4 breadcrumb" style="margin-bottom: 45px;">
				<li class="breadcrumb-item">식물검색</li>
				<li class="breadcrumb-item"><a href="/DryGardenSearch">다육이</a></li>
				<li class="breadcrumb-item active" aria-current="page">${Ditem.cntntsSj}</li>
			</ol>
		</nav>

		<!-- Item-->
		<article
			class="row align-items-center card-hover pb-4 mb-md-2 mb-lg-3 mb-xl-4"
			data-aos="fade-up" data-aos-duration="600" data-aos-offset="280">
			<div class="col-12 image-container" style="display: flex; justify-content: center;">
				<img src="${Ditem.mainImgUrl1}" class="d-block rounded-5 fit-cover" style="text-align: center; width: 600px;">
			</div>
		</article>
		<div class="text-center text-muted mb-2">다육이</div>
		<div>
			<h2 class="text-center">${Ditem.cntntsSj}</h2>
		</div>
		<h4 class="text-center text-muted" style='line-height: 50%'>${Ditem.enNm}</h4>


		<!--표-->
		<div class="container pt-5 pb-2 pb-sm-3 "
			style="text-align: center; margin-bottom: 40px;">
			<!-- Address-->
			<div class="h-100" style="display: inline-block; width: 350px;">
				<div class="col">
					<h3 class="h5 ai-chart"> 관리 수준</h3>
					<p class="mb-1">${Ditem.manageLevelNm}</p>
				</div>
			</div>
			<!-- Address-->
			<div class="h-100" style="display: inline-block; width: 350px;">
				<div class="col">
					<h3 class="h5 ai-award"> 성장 속도</h3>
					<p class="mb-1">${Ditem.grwtseVeNm}</p>
				</div>
			</div>
			<!-- Address-->
			<div class="h-100" style="display: inline-block; width: 350px;">
				<div class="col">
					<h3 class="h5 ai-bulb-alt"> 생육 온도</h3>
					<p class="mb-1">${Ditem.grwhTpInfo}</p>
				</div>
			</div>
		</div>
		<hr><br/><br/><br/>

		<h4 class="mb-lg-3" style="text-align: center;">상세정보</h4>
		<!--표 구성을 바꾸고 싶다면 row-cols-wl-2 마지막 숫자를 바꾸면됨 2는 두개씩 한줄에 보여진다는 뜻-->
		<div class="row row-cols-1 row-cols-sm-2 row-cols-xl-2 g-4 pb-2 pb-sm-4 pb-lg-5 mt-lg-3" style="text-align: center;">
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">원산지</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.orgplce}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">꽃</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.flwrInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">생장형</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.grwtInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">특성</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.chartrInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">광</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.lighttInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">물주기</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.waterCycleInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">병충해</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.dlthtsInfo}</div>
					</div>
				</div>
			</div>
			<!-- Address-->
			<div class="col">
				<div class="card border-0 h-100" style="background-color: #F7F9FC">
					<div class="card-body">
						<h4 class="card-title mb-2">Tip</h4>
						<div class="overflow-auto fixed-height" style="height: 100px;">
							${Ditem.tipInfo}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />


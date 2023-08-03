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
				<li class="breadcrumb-item">식물 검색</li>
				<li class="breadcrumb-item"><a href="/FlowerSearch">꽃</a></li>
				<li class="breadcrumb-item active" aria-current="page">${Fitem.flowNm}</li>
			</ol>
		</nav>

		<!-- 식물 정보 시작 -->
		<article class="row align-items-center card-hover pb-3 mb-md-2 mb-lg-3 mb-xl-4" data-aos="fade-up" data-aos-duration="600" data-aos-offset="280">
			<div class="col-5 image-container">
				<a href="${Fitem.imgUrl1}" class="gallery-item d-block card-hover fit-cover"> 
				<img src="${Fitem.imgUrl1}" class="d-block rounded-4 fit-cover" alt="Image #1" style="width: 500px;">
				</a>
			</div>
			<div class="col-7" data-aos="fade-up" data-aos-duration="850" data-aos-offset="180" data-disable-parallax-down="md">
				<div class="ms-md-4 ms-lg-6 ms-xxl-0" style="margin-bottom: 50px;">
					<div class="col row">
						<div class="col" style="margin-top: 50px;">
							<div class="text-muted mb-2">꽃</div>
							<h2 class="mb-lg-3">${Fitem.flowNm}</h2>
							<h4 class="mb-lg-3 text-muted" style='line-height: 30%'>${Fitem.fSctNm}</h4>
						</div>
					</div>
					<div style="width: 750px; height: 120px; overflow: auto; margin-bottom: 15px;">
						<p class="mb-lg-3 mb-md-1 mb-lg-3 mt-3 pb-2">${Fitem.fContent}</p>
					</div>
					<div>
						<h3 class="h5 ai-message-minus"> 꽃말</h3>
						<p class="mb-3">${Fitem.flowLang}</p>

						<h3 class="h5 ai-sun"> 기르는 방법</h3>
						<p class="mb-3">${Fitem.fGrow}</p>

						<h3 class="h5 ai-tag"> 자생지</h3>
						<p class="mb-3">${Fitem.fType}</p>
					</div>
				</div>
			</div>
		</article>
	</div>
</div>
</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

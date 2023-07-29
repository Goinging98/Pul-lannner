<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


      <!-- Page content-->
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
      
      
      <div class="overflow-hidden">
        <div class="container pt-5 pb-sm-3 mt-5 mb-2 mb-md-3 mb-lg-4 mb-xxl-5">
          <!-- Breadcrumb-->
          <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-lg-4 pb-lg-4 breadcrumb" style="margin-bottom: 45px;">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Portfolio list v.1</li>
            </ol>
          </nav>

          <!-- Item-->
          <article class="row align-items-center card-hover pb-4 mb-md-2 mb-lg-3 mb-xl-4" data-aos="fade-up" data-aos-duration="600" data-aos-offset="280">
            <div class="col-12 image-container" style="display: flex; justify-content: center;">
              <img src="${Ditem.mainImgUrl1}" class="d-block rounded-5 fit-cover" style="text-align: center; width: 600px;">
            </div>
          </article>
          <div class="text-center text-muted mb-2">다육이</div>
          <div>
            <h2 class="text-center">${Ditem.cntntsSj}
            <button type="button" class="btn btn-outline-info btn-icon rounded-pill btn-sm" style=" justify-content:center; margin-left: 2px;">
              <i class="ai-bookmark"></i>
            </button></h2>
          </div>
          <h4 class="text-center text-muted" style=' line-height: 50%'>${Ditem.enNm}</h4>


          <!--표-->
          <div class="container pt-5 pb-2 pb-sm-3 " style="text-align: center; margin-bottom: 40px;">
            <!-- Address-->
            <div class= "h-100" style="display: inline-block; width: 350px;">
              <div class="col">
                <h3 class="h5 ai-chart"> 관리 수준</h3>
                <p class="mb-1">초보자</p>
              </div>
            </div>
            <!-- Address-->
            <div class= "h-100" style="display: inline-block; width: 350px;">
              <div class="col">
                <h3 class="h5 ai-award"> 성장 속도</h3>
                <p class="mb-1">정보가 없습니다</p>
              </div>
            </div>
            <!-- Address-->
            <div class="h-100" style="display: inline-block; width: 350px;">
              <div class="col">
                <h3 class="h5 ai-bulb-alt"> 생육 온도</h3>
                <p class="mb-1">생육온도정보</p>
              </div>
            </div>
          </div>

          <h4 class="mb-lg-3" style="text-align: center;">자세히 알아보기</h4>
          <hr>
          <!--표 구성을 바꾸고 싶다면 row-cols-wl-2 마지막 숫자를 바꾸면됨 2는 두개씩 한줄에 보여진다는 뜻-->
          <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-2 g-4 pb-2 pb-sm-4 pb-lg-5 mt-lg-3" style="text-align: center;">
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color:#F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">원산지</h4>
                  <p class="mb-0">아프리카 콩고</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">꽃</h4>
                  <p class="mb-0">한 여름 무렵에 흰색 꽃이 핌</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">생장형</h4>
                  <p class="mb-0">봄~가을 성장(겨울에 휴면)</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">특성</h4>
                  <p class="mb-0">높이 15cm 잎은 넓고 다양한 무늬가 있음</p>
                </div>
              </div>
            </div> 
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">광</h4>
                  <p class="mb-0">고온에 강하므로 연중 광선이 잘 쬐는 반그늘 아래에서 잘 자라고 여름철에는 직사광선을 약간 피함</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">물주기</h4>
                  <p class="mb-0">분 흙이 충분히 마른 뒤 며칠 후 충분히 관수</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">병충해</h4>
                  <p class="mb-0">병충해에는 별로 걸리지 않으나 잎을 깨끗이 닦아주도록 함</p>
                </div>
              </div>
            </div>
            <!-- Address-->
            <div class="col">
              <div class="card border-0 h-100" style="background-color: #F7F9FC">
                <div class="card-body">
                  <h4 class="card-title mb-2">Tip</h4>
                  <p class="mb-0">10월 상, 중순부터 물을 점차 줄이고 비료도 주지 않음 고온에서 잘 자라고 저온에는 매우 약하므로 겨울에 냉해를 입지 않도록 잘 보온하여 적정온도 20-25도를 유지함</p>
                </div>
              </div>
            </div>
          </div>
        </div>       
      </div>      
     </div>
    </main> 
    <!--  수정테스트 -->
    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    
   
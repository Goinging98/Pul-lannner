<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
      <!-- Page content -->
      <div class="container py-5 mt-3 mt-lg-5 mb-lg-4 my-xl-5">
       <div class="row pt-sm-2 pt-lg-0">
        <!-- Breadcrumb -->

      <!-- Page title + contact form-->
      <section class="container pt-3 pb-lg-2 pb-xl-4  my-5">
        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
          <h2 class="h4 mb-0">내 식물 분양하기</h2>
        </div>

        <div class="row pb-1 pb-sm-3 pb-lg-4">
         
  
          <div class="col-lg-12 col-xl-12 ">
            <form class="row g-4 needs-validation" action="${path}/selling_plant_update" method="post" enctype="multipart/form-data">
				<input type="hidden" name="parcelno" value="${plantshop.parcelno}">
				<input type="hidden" name="parcelimg" value="${plantshop.parcelimg}" />
				<input type="hidden" name="parcelimgedt" value="${plantshop.parcelimgedt}" />
              <div class="col-sm-12">
                <input class="form-control form-control-lg"  type="text" value="${plantshop.parceltitle}"  required id="title" name="parceltitle">
              </div>

              <div class="col-sm-12">
                <textarea name="parcelcontent" class="form-control form-control-lg" rows="15"
                  required id="message">${plantshop.parcelcontent}</textarea>
              </div>

              <div class="alert alert-primary d-flex mb-4"><i class="ai-bell fs-xl me-2"></i>
                <p class="mb-0"></p>
              </div>
              
           	<label class="form-label fs-base" for="category">분류를 선택하세요</label>   
			<select name="parceltype" class="form-select" aria-label="Default select example" id="category" required>
			<option value="">${plantshop.parceltype}</option>
			  <option value="B1">식물</option>
			  <option value="B2">씨앗</option>
			</select>
           	<label class="form-label fs-base " for="category">분양하고자 하는 식물을 선택하세요</label>   
			
	        <select name="type1" id="type1" class="form-select" aria-label="Default select example"></select>
 			<select name="type2" id="type2" class="form-select" aria-label="Default select example"></select>
			
			<script>
			    $(function() {
			        var area0 = ["식물 종류 선택", "실내정원", "꽃", "다육이"];
			        var area1 = [
								<c:forEach var="item" items="${area1 }">
									['${item.name}', ${item.no}],
								</c:forEach>
			        			];
			        var area2 = [
								<c:forEach var="item" items="${area2 }">
									['${item.name}', ${item.no}],
								</c:forEach>
			        			];
			        var area3 = [
								<c:forEach var="item" items="${area3 }">
									['${item.name}', ${item.no}],
								</c:forEach>
			        			];
			
			
			        $("select[name^=type1]").each(function () {
			            $type1 = $(this);
			            var count = 0;
			            $.each(eval(area0), function () {
			                $type1.append("<option value='P" + count++ + "'>" + this + "</option>");
			            });
			            $type1.next().append("<option value='0'>식물 선택</option>");
			        });
			
			        $("select[name^=type1]").change(function () {
			            var area = "area" + $("option", $(this)).index($("option:selected", $(this))); // 선택지역의 구군 Array
			            var $type2 = $(this).next(); // 선택영역 군구 객체
			            $("option", $type2).remove(); // 구군 초기화
			
			            if (area == "area0")
			                $type2.append("<option value=''>식물 선택</option>");
			            else {
			                $.each(eval(area), function () {
			                    $type2.append("<option value='" + this[1] + "'>" + this[0] + "</option>");
			                });
			            }
			        });
			    });
			</script>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="amount">가격</label>
                <input class="form-control form-control-lg"  type="number" value="${plantshop.parcelprice}"  id="amount" name="parcelprice" required>
              </div>
              
              <div class="col-sm-6 inline-col">
                  <label class="form-label fs-base text-end" for="picture">사진첨부</label>
                  <input class="form-control form-control-lg"  type="file" placeholder="사진첨부"  id="picture" name="upfile">
              </div>




              <div class="col-sm-12 inline-col">
                <label class="form-label fs-base " for="picture" style="width: 9%;">물주기</label>
                <input class="form-control form-control-lg"  type="text" placeholder="물주기 정보"  id="water" name="water">
              </div>
                

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="originInformation">관리 수준</label>
                <input class="form-control form-control-lg"  type="text" placeholder="관리 수준"  id="management" name="management">
              </div>
              
              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="originInformation">성장 속도</label>
                <input class="form-control form-control-lg"  type="text" placeholder="성장 속도"  id="growspeed" name="growspeed">
              </div>




              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="temperature">알맞은 습도</label>
                <input class="form-control form-control-lg"  type="text" placeholder="알맞은 습도"  id="humidity" name="humidity">
              </div>

              <div class="col-sm-6 inline-col">
                <label class="form-label fs-base" for="height">잘 자라는 온도</label>
                <input class="form-control form-control-lg"  type="text" placeholder="잘 자라는 온도"  id="temperature" name="temperature">
              </div>


              

              <div class="col-sm-12 pt-2 text-end">
                <button class="btn btn-lg btn-primary" type="submit" onclick="location.replace('${path}/plantshop')">저장하기</button>
                <button class="btn btn-lg btn-secondary" type="reset">취소</button>
              </div>

            </form>
          </div>
       
       
        </div>
      </section>





      
      
       </div>


      </div>
    </main>
   
  </body>
  
  
  
  
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
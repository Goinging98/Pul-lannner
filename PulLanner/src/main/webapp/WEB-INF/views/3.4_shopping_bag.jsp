<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<!-- Page content-->
<div style="background: linear-gradient(to right, #F6F9FC 55%,  #ffffff 45%);">
<form class="needs-validation container position-relative zindex-2 pt-5 pb-lg-5 pb-md-4 pb-2" 
	action="${path}/shopping/payment/order" method="post" novalidate>
	<input type="hidden" name="mno" value="${loginMember.MNo}"> 
	<div class="row">
		<div class="col-lg-6">
			<nav aria-label="breadcrumb"></nav>
			<br/><br/>
			<h2 class="pb-2 pt-md-2 my-4 mt-lg-5">장바구니</h2>
			<hr><br/><br/>
			<!-- Checkout form fields-->
			<h3 class="h4">1. 배송 정보</h3><br/>
			<div class="row g-4 pb-4 pb-md-5 mb-3 mb-md-1">
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-fn">이름</label> 
					<input class="form-control form-control-lg" type="text" value="${loginMember.name}" required id="c-fn" name="name">
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-phone">전화번호</label>
					<div class="position-relative">
						<i class="ai-phone fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
						<input class="form-control form-control-lg ps-5" type="text" value="${loginMember.phone}" required id="c-phone" name="phone">
					</div>
				</div>
				<div class="col-12">
					<label class="form-label fs-base" for="c-email">이메일</label>
					<div class="position-relative">
						<i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
						<input class="form-control form-control-lg ps-5" type="email" value="${loginMember.id}" required id="c-email" name="email">
					</div>
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-address">우편번호</label> 
					<input class="form-control form-control-lg" type="text" required id="member_post" value="${loginMember.addr1}" name="addr1" onclick="findAddr()">
				</div>
				<div class="col-sm-6">
					<label class="form-label fs-base" for="c-address">주소</label> 
					<input class="form-control form-control-lg" type="text" required id="member_addr" value="${loginMember.addr2}" name="addr2" >
				</div>
				<div class="col-12">
					<label class="form-label fs-base" for="c-address">상세주소</label> 
					<input class="form-control form-control-lg" type="text" required id="c-address" value="${loginMember.addr3}" name="addr3" >
				</div>
				<div class="col-12">
					<label class="form-label fs-base" for="c-notes">요청사항 
					<span class='text-muted'>(선택)</span></label>
					<textarea class="form-control form-control-lg" rows="2" id="c-notes" name="memo"></textarea>
				</div>
			</div>
			<hr><br/><br/>
			
			<!-- 결제수단 -->
			<h3 class="h4">결제수단</h3>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="payment" checked id="card" value="1"> 
				<label class="form-check-label" for="card">
					<span class="d-block fs-base text-dark fw-medium mb-1">카카오페이</span>
				</label>
			</div>
			<div class="form-check mb-4">
				<input class="form-check-input" type="radio" name="payment" id="cash" value="2"> 
				<label class="form-check-label" for="cash">
				<span class="d-block fs-base text-dark fw-medium mb-1">배송 후 직접결제</span></label>
			</div>
		</div>
		
		
		<!-- 주문 상세 -->
		<div class="col-lg-5 offset-lg-1 pt-1">
		<br/><br/>
			<h2 class="pb-2 pt-md-2 my-4 mt-lg-5"> 주문상세</h2>
			<!-- 상품 출력 -->
			<c:forEach var="item" items="${list}" >
				<div class="d-sm-flex align-items-center border-top py-4">
					<a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-sm-2 p-xl-3 mb-2 mb-sm-0" href="/shop/product?pno=${item.pno}">
						<img src="${item.image}" width="110" alt="Product">
					</a>
					<div class="w-100 pt-1 ps-sm-4">
						<div class="d-flex">
							<div class="me-3">
								<h3 class="h5 mb-2">
									<a href="/shop/product?pno=${item.pno}">${item.title}</a>
								</h3>
							</div>
							<div class="text-end ms-auto">
								<div class="fs-5 mb-2"><fmt:formatNumber value="${item.lprice}" pattern="#,###"/>원</div>
							</div>
						</div>
						<div class="count-input ms-n3">
							<button class="btn btn-icon fs-xl" type="button" data-decrement>-</button>
							<input class="form-control" type="number" value="${item.amount}" readonly>
							<button class="btn btn-icon fs-xl" type="button" data-increment>+</button>
						</div>
						<div class="nav justify-content-end mt-n5 mt-sm-n3"></div>
					</div>
				</div>
			</c:forEach>
			
			<ul class="list-unstyled py-3 mb-0">
				<li class="d-flex justify-content-between mb-2">소계:
					<span class="fw-semibold ms-2">${totalAmount}</span>
				</li>
				<li class="d-flex justify-content-between mb-2">배송비:<span
					class="fw-semibold ms-2">3,000원</span></li>
			</ul>
			<div class="d-flex align-items-center justify-content-between border-top fs-xl pt-4">
				합계:<span class="fs-3 fw-semibold text-dark ms-2"><fmt:formatNumber value="${totalPrice}" pattern="#,###" />원</span>
			</div>
			<div class="d-none d-lg-block pt-5 mt-n3">
				<div class="form-check mb-4">
					<input class="form-check-input" type="checkbox" checked id="save-info">
					<label class="form-check-label" for="save-info">
					<span class="text-muted">주문 내용을 확인하였으며, 정보 제공 등에 동의합니다.</span></label>
					<input type="hidden" name="total_amount" value="${totalPrice}"><br>
					<input type="hidden" name="quantity" value="${totalAmount}"><br> 
				</div>
				<button class="btn btn-lg btn-primary" type="submit">주문하기</button>
			</div>
		</div>
		<%-- <form action="${path}/kakaoPay" method="post">
			<input type="submit" value="확인">
		</form> --%>
		
	</div>
</form>
</div>
</main>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />
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
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
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


<script>
	$(document).ready(() => {
		$("#updateSubmit").on("click", (e) => {
			let pass1 = $("#pass1").val();			
			let pass2 = $("#pass2").val();
			
			if(pass1.trim() != pass2.trim()) {
				alert("비밀번호가 일치하지 않습니다.");
				
				$("#pass1").val("");
				$("#pass2").val("");
				$("#pass1").focus();
				
				return false;
			}		
		});
	});
</script>

<div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">
		<!-- Sidebar (offcanvas on sreens < 992px)-->
		<aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
			<div class="position-lg-sticky top-0">
				<div class="d-none d-lg-block" style="padding-top: 105px;"></div>
				<div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
					<button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" 
						type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
					<div class="offcanvas-body">
						<div class="pb-2 pb-lg-0 mb-4 mb-lg-5">
							<h3 class="h5 mb-1">${loginMember.name}</h3>
							<p class="fs-sm text-muted mb-0">${loginMember.id}</p>	
						</div>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 글 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>풀레너</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>커뮤니티</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/mywriting"><i class="ai-pencil fs-5 opacity-60 me-2"></i>판매글</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-1">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">쇼핑관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/orders"><i class="ai-note fs-5 opacity-60 me-2"></i>주문내역</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/shoppingbag"><i class="ai-cart fs-5 opacity-60 me-2"></i>장바구니</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/favorites"><i class="ai-heart fs-5 opacity-60 me-2"></i>찜한 상품</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">스크랩</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stararticle"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 글</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/starplant"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물</a> 
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/stargarden"><i class="ai-star-filled fs-5 opacity-60 me-2"></i>관심 식물원</a>
						</nav>
						<nav class="nav flex-column pb-2 pb-lg-4 mb-3">
							<h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">내 정보 관리</h4>
							<a class="nav-link fw-semibold py-2 px-0" href="/mypage/overview"><i class="ai-user-check fs-5 opacity-60 me-2"></i>내 정보</a> 
							<a class="nav-link fw-semibold py-2 px-0 active" href="/mypage/infochange"><i class="ai-settings fs-5 opacity-60 me-2"></i>내 정보 수정</a>
							<a class="nav-link fw-semibold py-2 px-0" href="/logout"><i class="ai-logout fs-5 opacity-60 me-2"></i>로그아웃</a>
						</nav>
					</div>
				</div>
			</div>
		</aside>



		<!-- 기본 정보 변경 -->
		<div class="col-lg-9 pt-4 pb-2 pb-sm-4">
			<h1 class="h2 mb-4">설정</h1>
			<!-- Basic info-->
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
				<div class="card-body">
					<div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
						<i class="ai-user text-primary lead pe-1 me-2"></i>
						<h2 class="h4 mb-0">내 정보</h2>
					</div>
					<form id="enroll-container" name="memberEnrollFrm" action="${path}/mypage/update" method="post">
						<div class="row g-3 g-sm-4 mt-0 mt-lg-2">
							<div class="col-sm-6">
								<label class="form-label" for="fn">이름</label> 
								<input class="form-control" type="text" value="${loginMember.name}" id="name" name="name" >
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="email">이메일</label> 
								<input class="form-control" type="email" value="${loginMember.id}" id="id" name="id" >
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="phone">전화번호</label> 
								<input class="form-control" type="text" value="${loginMember.phone}" id="phone" name="phone">
							</div>
							<div class="col-12">
								<label class="form-label" for="address">주소</label>
								<input class="form-control" id="member_post" type="text" value="${loginMember.addr1}" name="addr1" readonly onclick="findAddr()"><br>
								<input class="form-control" id="member_addr" type="text" value="${loginMember.addr2}" name="addr2" readonly > <br>
								<input class="form-control" type="text" value="${loginMember.addr3}" name="addr3">
							</div>
							<div class="col-12 d-flex justify-content-end pt-3">
								<button class="btn btn-primary ms-3" type="submit">변경사항 저장</button>
							</div>
						</div>
					</form>
				</div>
			</section>
			
			
			<!-- 비밀번호 변경 -->
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
				<div class="card-body">
					<div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3">
						<i class="ai-lock-closed text-primary lead pe-1 me-2"></i>
						<h2 class="h4 mb-0">비밀번호 변경</h2>
					</div>
					
					<form action="${path}/mypage/updatePwd" method="POST">
						<div class="row align-items-center g-3 g-sm-4 pb-3">
							<div class="col-sm-6">
								<label class="form-label" for="new-pass">새 비밀번호</label>
								<div class="password-toggle">
									<input class="form-control" type="password" id="pass1" name="password">
									<label class="password-toggle-btn" aria-label="Show/hide password"> 
										<input class="password-toggle-check" type="checkbox">
										<span class="password-toggle-indicator"></span>
									</label>
								</div>
							</div>
							<div class="col-sm-6">
								<label class="form-label" for="confirm-pass">새 비밀번호 확인</label>
								<div class="password-toggle">
									<input class="form-control" type="password" id="pass2">
									<label class="password-toggle-btn" aria-label="Show/hide password"> 
										<input class="password-toggle-check" type="checkbox">
										<span class="password-toggle-indicator"></span>
									</label>
								</div>
							</div>
						</div>
						<div class="d-flex justify-content-end pt-3">
							<button class="btn btn-secondary" type="reset">취소</button>
							<button class="btn btn-primary ms-3" type="submit" id="updateSubmit" onclick="return validate();">변경사항 저장</button>
						</div>
					</form>
				</div>
			</section>




			<!-- 계정 삭제 -->
			<section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
				<div class="card-body">
					<div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3">
						<i class="ai-trash text-primary lead pe-1 me-2"></i>
						<h2 class="h4 mb-0">계정 삭제</h2>
					</div>
					<form action="${path}/mypage/delete" method="post">
						<div class="alert alert-warning d-flex mb-4">
							<i class="ai-triangle-alert fs-xl me-2"></i>
							<p class="mb-0"> 
								계정 삭제 시, 작성한 글은 남아있으며 동일 계정으로 복구할 수 없습니다. 
							</p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="confirm">
							<label class="form-check-label text-dark fw-medium" for="confirm">
								네, 계정을 삭제하겠습니다.
							</label>
						</div>
						<div class="d-flex flex-column flex-sm-row justify-content-end pt-4 mt-sm-2 mt-md-3">
							<button class="btn btn-danger" type="submit" >
								<i class="ai-trash ms-n1 me-2"></i>계정 삭제
							</button>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
</div>


<!-- Sidebar toggle button-->
<button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount">
	<i class="ai-menu me-2"></i>
</button>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

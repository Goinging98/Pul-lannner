<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!-- Page content -->
<div class="container py-5 mt-3 mt-lg-5 mb-lg-4 my-xl-5">
	<div class="row pt-sm-2 pt-lg-0">

		<!-- Page title + contact form-->
		<section class="container pt-3 pb-lg-2 pb-xl-4  my-5">
			<div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
				<h2 class="h4 mb-0">씨앗 판매</h2>
			</div>
			<div class="row pb-1 pb-sm-3 pb-lg-4">
				<div class="col-lg-12 col-xl-12 ">
					<form class="row g-4 needs-validation" action="${path}/selling_seed" method="post" enctype="multipart/form-data">

						<div class="col-sm-12">
							<input class="form-control form-control-lg" type="text" placeholder="제목" required id="title" name="parceltitle">
						</div>
						<div class="col-sm-12">
							<textarea name="parcelcontent" class="form-control form-control-lg" rows="15" placeholder="내용" required id="message"></textarea>
						</div>
						<label class="form-label fs-base" for="category">분류</label> 
						<select name="parceltype" class="form-select" aria-label="Default select example" id="category" required>
							<option value="">${plantshop.parceltype}</option>
							<!-- <option value="B1">식물</option> -->
							<option value="B2" selected>씨앗</option>
						</select>
						<div class="col-sm-6 inline-col">
							<label class="form-label fs-base" for="amount">가격</label> <input
								class="form-control form-control-lg" type="number"
								placeholder="가격" id="amount" name="parcelprice" required>
						</div>
						<div class="col-sm-6 inline-col">
							<label class="form-label fs-base text-end" for="picture">사진첨부</label>
							<input class="form-control form-control-lg" type="file"
								placeholder="사진첨부" id="picture" name="upfile">
						</div>
						<div class="col-sm-12 pt-2 text-end">
							<button class="btn btn-lg btn-primary" type="submit">저장하기</button>
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
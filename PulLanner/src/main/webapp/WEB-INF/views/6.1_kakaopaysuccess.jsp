<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="카카오 페이 데모" name="title"/>
</jsp:include>


<section id="container">
	
	카카오페이 결제가 정상적으로 완료되었습니다.
	 
	결제일시: ${info.approved_at}<br/>
	주문번호: ${info.partner_order_id}<br/>
	상품명:   ${info.item_name}<br/>
	상품수량: ${info.quantity}<br/>
	결제금액: ${info.amount.total}<br/>
	결제방법: ${info.payment_method_type}<br/>
	 
	 
	<h2>${info}</h2>

</section>







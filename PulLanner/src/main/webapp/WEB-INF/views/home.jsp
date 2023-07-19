<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Spring 홈페이지" name="title"/>
</jsp:include>

<section id="content">
	<h3>Spring 기반의 MVC2 패턴을 활용한 Web Application 입니다.</h3>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

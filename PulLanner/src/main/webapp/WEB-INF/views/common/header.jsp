<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${param.title}</title>
	<link rel="stylesheet" href="${path}/resources/css/main.css"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.7.0.js" ></script>
</head>
<body>
	<header>
		<h2>${param.title}</h2>
		<div class="login-container">
			<!-- 로그인 창 영역 시작 loginMember : session에서 login정보를 담고 있는 Member 객체  -->
			<c:if test="${loginMember == null}">
				<form id="loginFrm" name="loginFrm" action="${path}/login" method="post">
					<table>
						<tr>
							<td>
								<input type="text" name="userId" id="userId" placeholder="아이디" required>
							</td>
							<td></td>
						</tr>		
						<tr>
							<td>
								<input type="password" name="userPwd" id="userPwd" placeholder="비밀번호" required>
							</td>
							<td>
								<input type="submit" value="로그인">
							</td>
						</tr>	
						<tr>
							<td colspan="2">
								<input type="button" value="회원가입" onclick="location.href='${path}/member/enroll'" >
							</td>
						</tr>	
					</table>
				</form>
			</c:if>
			<!-- 로그인 창 영역 끝 -->
			
			<!-- 로그인이 된 상태  -->
			<c:if test="${loginMember != null}">
				<table>
					<tr>
						<td colspan="2">
							${loginMember.name} 님 안녕하세요?
						</td>
					</tr>		
					<tr>
						<td>
							<button onclick="location.href='${path}/member/view'">내정보</button>
						</td>
						<td>
							<button onclick="location.replace('${path}/logout')">로그아웃</button>
						</td>
					</tr>		
				</table>	
			</c:if>
		</div>
		<nav>
			<ul class="main-nav">
				<li class="home"><a href="/">Home</a></li>		
				<li class="notice"><a>공지사항</a></li>
				<li class="board"><a href="${path}/board/list">게시판</a></li>
				<c:if test="${ loginMember.role == 'ROLE_ADMIN' }">
					<li class="admin-member">
						<a href="${path}/admin/member">회원관리</a>
					</li>	
				</c:if>
			</ul>
		</nav>
	</header>

	

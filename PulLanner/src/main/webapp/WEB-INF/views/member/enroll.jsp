<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원 가입" name="title"/>
</jsp:include>

<style>
	section #enroll-container {text-align: center;}
	section #enroll-container input {margin: 3px;}
	section #enroll-container table {margin: 0 auto;}
	section #enroll-container table th {padding: 0 10px; text-align: right;}
	section #enroll-container table td {padding: 0 10px;text-align: left;}
</style>

<section id="content">
	<h3 align="center">회원가입 정보</h3>
	<form id="enroll-container" name="memberEnrollFrm" action="${path}/member/enroll" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" id="id" placeholder="아이디 4글자 이상" required>
					<input type="button" id="checkDuplicate" name="id" value="중복검사">
				</td>
			</tr>		
			<tr>
				<th>패스워드</th>
				<td>
					<input type="password" name="password" id="password1" required>
				</td>
			</tr>		
			<tr>
				<th>패스워드 확인</th>
				<td>
					<input type="password" id="password2" required>
				</td>
			</tr>		
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name" id="name" required>
				</td>
			</tr>		
			<tr>
				<th>전화번호</th>
				<td>
					<input type="tel" name="phone" maxlength="11" placeholder="(-없이)01012345678">
				</td>
			</tr>		
			<tr>
				<th>이메일</th>
				<td>
					<input type="email" name="email" id="email">
				</td>
			</tr>		
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="address" id="address">
				</td>
			</tr>		
			<tr>
				<th>취미</th>
				<td>
					<label><input type="checkbox" name="hobby" value="운동">운동</label> 
					<label><input type="checkbox" name="hobby" value="수영">수영</label> 
					<label><input type="checkbox" name="hobby" value="게임">게임</label> 
					<label><input type="checkbox" name="hobby" value="독서">독서</label> 
					<label><input type="checkbox" name="hobby" value="여행">여행</label> 
				</td>
			</tr>		
		</table>
		<input type="submit" id="enrollSubmit" value="가입">
		<input type="reset" value="취소">
	</form>
</section>

<script type="text/javascript">
	$(()=>{
		$('#password2').blur((event)=>{
			let password1 = $('#password1').val();
			let password2 = $(event.target).val();
			
			if(password1.trim() != password2.trim()){
				alert('패스워드가 일치하지 않습니다.')
				$('#password1').val("");
				$('#password2').val("");
				$('#password1').focus();
			}
		});
		
		$('#enrollSubmit').click(()=>{
			let id = $('#id').val();
			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return false; // submit 안가는 방법
			}
			
			// 유효성 로직 추가하는 곳
			
			return true; // submit 보내짐
		});
		
		$('#checkDuplicate').click(()=>{
			let id = $('#id').val().trim();

			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return;
			}

			$.ajax({
				type:'get',
				url:'${path}/member/idCheck',
				data:{id}, // 속성값이 키값과 같을때 값을 생략해서 보낼수 있다. 보통은 key-value로 채운다.
				success:
					(data)=>{ // data : 서버에서 보내준 결과 값, json으로 응답될수 있다.
						console.log(data);
						if(data.validate === true){
							alert('이미 사용중인 아이디 입니다.');
						} else{
							alert('사용 가능합니다.');
						}
					},
				error:
					(e)=>{
						alert('중복을 확인할수 없습니다.');
						console.log(e)
					}
			});
		});
		
	});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






















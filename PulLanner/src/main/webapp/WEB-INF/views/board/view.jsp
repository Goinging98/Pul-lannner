<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<style>
    section>div#board-write-container{width:600px; margin:0 auto; text-align:center;}
    section>div#board-write-container h2{margin:10px 0;}
    table#tbl-board{width:500px; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
    table#tbl-board th {width: 125px; border:1px solid; padding: 5px 0; text-align:center;} 
    table#tbl-board td {border:1px solid; padding: 5px 0 5px 10px; text-align:left;}
    div#comment-container button#btn-insert{width:60px;height:50px; color:white; background-color:#3300FF;position:relative;top:-20px;}
    
    /*댓글테이블*/
    table#tbl-comment{width:580px; margin:0 auto; border-collapse:collapse; clear:both; } 
    table#tbl-comment tr td{border-bottom:1px solid; border-top:1px solid; padding:5px; text-align:left; line-height:120%;}
    table#tbl-comment tr td:first-of-type{padding: 5px 5px 5px 50px;}
    table#tbl-comment tr td:last-of-type {text-align:right; width: 100px;}
    table#tbl-comment button.btn-delete{display:none;}
    table#tbl-comment tr:hover {background:lightgray;}
    table#tbl-comment tr:hover button.btn-delete{display:inline;}
    table#tbl-comment sub.comment-writer {color:navy; font-size:14px}
    table#tbl-comment sub.comment-date {color:tomato; font-size:10px}
</style>



<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시글 상세조회" name="title"/>
</jsp:include>


<section id="board-write-container">
	<h2 align="center">게시글 상세조회</h2>
	
	<table id="tbl-board">
		<tr>
			<th>글번호</th>
			<td><c:out value="${board.BNo}"/></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><c:out value="${board.title}"/></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><c:out value="${board.id}"/></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><c:out value="${board.readCount}"/></td>
		</tr>
		<tr>
			<th>작성 시간</th>
			<td> <fmt:formatDate type="both" value="${board.createDate}"/> </td>
		</tr>
		<tr>
			<th>수정 시간</th>
			<td> <fmt:formatDate type="both" value="${board.modifyDate}"/> </td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>
				<c:if test="${not empty board.originalFileName}">
					<a href="javascript:fileDownload('${board.originalFileName}',
																'${board.renamedFileName}');">
						<img src="${path}/resources/images/file.png" width="20" height="20"/>
						<c:out value="${board.originalFileName}"></c:out>		
					</a>
				</c:if>
				
				<c:if test="${empty board.originalFileName}">
					<span> - </span>
				</c:if>
			</td>
		</tr>
		<tr>
			<th>첨부파일(이미지)</th>
			<td>
				<c:if test="${not empty board.originalFileName 
								and (fn:contains(board.originalFileName,'.jpg')
									 or fn:contains(board.originalFileName,'.png')
									  or fn:contains(board.originalFileName,'.jpeg'))}">
							<img src="${path}/board/file/${board.renamedFileName}"
								width="100%" height="100%"/>
				</c:if>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea rows="15" cols="50" readonly><c:out value="${board.content}"/></textarea>
			</td>
		</tr>
		<!-- 수정 / 삭제 기능 -->
		<tr>
			<th colspan="2">
				<c:if test="${not empty loginMember && (loginMember.id == board.id 
									|| loginMember.role == 'ROLE_ADMIN')}">
					<button type="button" id="btnUpdate">수정</button>
					<button type="button" id="btnDelete">삭제</button>
				</c:if>
			</th>
		</tr>
	</table>
	
	<!-- 리플 작성 Form -->
	<div id="comment-container">
    	<div class="comment-editor" align="center">
    		<form action="${path}/board/reply" method="post">
    			<input type="hidden" name="BNo" value="${board.BNo}" />
    			<input type="hidden" name="id" value="${loginMember.id}" />
				<textarea name="content" id="replyContent" cols="55" rows="3"></textarea>
				<button type="submit" id="btn-insert">등록</button>	  	
    		</form>
    	</div>
   	</div>
   	
   	<!-- 리플 출력 -->
	<table id="tbl-comment">
		<c:if test="${!empty replyList}">
			<c:forEach var="reply" items="${replyList}">
				<tr>
					<td>
						<sub class="comment-writer">${reply.id}</sub>
						<sub class="comment-date"><fmt:formatDate type="both" value="${reply.createDate}"/></sub>	
						<br>
						<c:out value="${reply.content}"/>
					</td>
					<td>
						<c:if test="${ !empty loginMember && (loginMember.id == reply.id 	|| loginMember.role == 'ROLE_ADMIN') }">
						<button class="btn-delete" onclick="deleteReply('${reply.RNo}','${board.BNo}');" >삭제</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${empty replyList}">
			<tr>
				<td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
			</tr>
		</c:if>
	</table>
</section>
<br>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



<script type="text/javascript">
	$(document).ready(() => {
		$("#btnUpdate").click((e) => {
			location.href = "${path}/board/update?no=${board.BNo}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?no=${board.BNo}");
			}
		});
	});
	
	function deleteReply(replyNo, boardNo){
		var url = "${path}/board/replyDel?replyNo=";
		var requestURL = url + replyNo +"&boardNo=" + boardNo;
		location.replace(requestURL);
	}
	
	function fileDownload(oriname, rename) {
		const url = "/board/fileDown";
		let oName = encodeURIComponent(oriname);
		let rName = encodeURIComponent(rename);
		location.assign(url + "?oriname=" + oName + "&rename=" + rName);
	}
</script>


















<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 게시판</title>
</head>
<body>
	<header>
		<!-- Login, Join 링크 표시 영역 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	<!-- 게시판 상세내용 보기 -->
	<section id="articleForm">
		<h2>문의 상세내용 보기</h2>
		<section id="basicInfoArea">
			<table border="1">
			<tr><th width="70">제 목</th><td colspan="3" >${qna.qna_subject }</td></tr>
			<tr>
				<th width="70">작성일</th>
				<td><fmt:formatDate value="${qna.qna_date }" pattern="yy-MM-dd HH:mm:SS" /></td>
			</tr>
			<tr>
				<th colspan="4">내용</th>
			</tr>
			<tr>
				<td colspan="4">${qna.qna_content }</td>
			</tr>
			</table>
		</section>
<!-- 		<section id="articleContentArea"> -->
<%-- 			${qna.qna_content } --%>
<!-- 		</section> -->
	</section>
	<section id="commandList">
		<input type="button" value="답변" onclick="location.href='QnaReplyForm.my?qna_idx=${param.qna_idx}&pageNum=${param.pageNum }'">
		<input type="button" value="삭제" onclick="location.href='QnaDeleteForm.my?qna_idx=${param.qna_idx}&pageNum=${param.pageNum }'">
		<input type="button" value="목록" onclick="location.href='QnaList.my?pageNum=${param.pageNum}'">
	</section>
</body>
</html>

















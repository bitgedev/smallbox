<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<titl>마이 페이지</title>
<!-- 외부 CSS 가져오기 -->
<link href="css/default.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#articleForm {
		width: 500px;
		height: 550px;
		border: 1px solid red;
		margin: auto;
	}
	
	h2 {
		text-align: center;
	}
	
	table {
		border: 1px solid black;
		border-collapse: collapse; 
	 	width: 500px;
	}
	
	th {
		text-align: center;
	}
	
	td {
		width: 150px;
		text-align: center;
	}
	
	#basicInfoArea {
		height: 70px;
		text-align: center;
	}
	
	#articleContentArea {
		background: orange;
		margin-top: 20px;
		height: 350px;
		text-align: center;
		overflow: auto;
		white-space: pre-line;
	}
	
	#commandList {
		margin: auto;
		width: 500px;
		text-align: center;
	}
</style>
</head>
<body>
	<header>
		<!-- Login, Join 링크 표시 영역 -->
		<jsp:include page="top.jsp"></jsp:include>
	</header>
	<!-- 게시판 상세내용 보기 -->
	<section id="articleForm">
		<h2>문의 상세내용 보기</h2>
		<section id="basicInfoArea">
			<table border="1">
			<tr><th width="70">제 목</th><td colspan="3" >${qna.qna_subject }</td></tr>
			<tr>
				<th width="70">작성자</th><td>${qna.member_idx }</td>
				<th width="70">작성일</th>
				<td><fmt:formatDate value="${qna.qna_date }" pattern="yy-MM-dd HH:mm:SS" /></td>
			</tr>
			<tr>
				<th width="70">조회수</th>
				<td>${qna.qna_readcount }</td>
			</tr>
			</table>
		</section>
		<section id="articleContentArea">
			${qna.qna_content }
		</section>
	</section>
	<section id="commandList">
		<input type="button" value="답변" onclick="location.href='QnaReplyForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="수정" onclick="location.href='QnaModifyForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="삭제" onclick="location.href='QnaDeleteForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="목록" onclick="location.href='QnaList.md?pageNum=${param.pageNum}'">
	</section>
</body>
</html>

















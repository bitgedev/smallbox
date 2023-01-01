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
		<jsp:include page="/inc/top.jsp"></jsp:include>
	</header>
	<!-- 게시판 상세내용 보기 -->
	<section id="articleForm">
		<h2>문의 상세내용 보기</h2>
		<section id="basicInfoArea">
			<table border="1">
			<tr><th width="70">제 목</th><td colspan="3" >${board.board_subject }</td></tr>
			<tr>
				<th width="70">작성자</th><td>${board.board_name }</td>
				<th width="70">작성일</th>
				<td><fmt:formatDate value="${board.board_date }" pattern="yy-MM-dd HH:mm:SS" /></td>
			</tr>
			<tr>
				<th width="70">첨부파일</th>
				<td>
					<a href="upload/${board.board_real_file }" download="${board.board_file }">
						${board.board_file }
					</a>
				</td>
				<th width="70">조회수</th>
				<td>${board.board_readcount }</td>
			</tr>
			</table>
		</section>
		<section id="articleContentArea">
			${board.board_content }
		</section>
	</section>
	<section id="commandList">
		<input type="button" value="답변" onclick="location.href='BoardReplyForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="수정" onclick="location.href='BoardModifyForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="삭제" onclick="location.href='BoardDeleteForm.me?board_num=${param.board_num}&pageNum=${param.pageNum }'">
		<input type="button" value="목록" onclick="location.href='BoardList.me?pageNum=${param.pageNum}'">
	</section>
</body>
</html>

















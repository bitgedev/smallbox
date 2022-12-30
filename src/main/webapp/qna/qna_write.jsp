<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna 게시판</title>
<!-- 외부 CSS 가져오기 -->
<link href="css/default.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#writeForm {
		width: 500px;
		height: 450px;
		border: 1px solid red;
		margin: auto;
	}
	
	h1 {
		text-align: center;
	}
	
	table {
		margin: auto;
		width: 450px;
	}
	
	.td_left {
		width: 150px;
		background: orange;
		text-align: center;
	}
	
	.td_right {
		width: 300px;
		background: skyblue;
	}
	
	#commandCell {
		text-align: center;
	}
</style>
</head>
<body>
	<header>
		<!-- Login, Join 링크 표시 영역 -->
		<jsp:include page="/inc/top.jsp"></jsp:include>
	</header>
	<!-- 게시판 등록 -->
	<section id="writeForm">
		<h1>게시판 글 등록</h1>
		<!-- 파일 업로드 기능 사용 위해 enctype 속성 설정 => cos.jar 라이브러리 필요 -->
		<form action=QnaWritePro.bo" name="boardForm" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td class="td_left"><label for="member_idx">글쓴이</label></td>
					<td class="td_right"><input type="text" name="qna_name" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="qna_pass">비밀번호</label></td>
					<td class="td_right">
						<input type="password" name="qna_pass" required="required" />
					</td>
				</tr>
				<tr>
					<td class="td_left"><label for="qna_subject">제목</label></td>
					<td class="td_right"><input type="text" name="board_subject" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="qna_content">내용</label></td>
					<td class="td_right">
						<textarea id="qna_content" name="qna_content" cols="40" rows="15" required="required"></textarea>
					</td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="다시쓰기">&nbsp;&nbsp;
				<input type="button" value="취소" onclick="history.back()">
			</section>
		</form>
	</section>
</body>
</html>









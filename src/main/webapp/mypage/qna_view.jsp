<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SMALLBOX</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/mypagemain.css" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	
	<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>1:1 문의</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="MyPageMain.my">MyPage</a></li>
            <li>1:1 문의</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	
	
	<!-- 본문 -->
	<!-- 게시판 상세내용 보기 -->
	<div id="sd-in" style="width:1560px;margin: 0 auto;">
    <aside class="side" style="display: inline-block;width:200px;vertical-align: top !important; margin-top: 8em;
    border: 2px #3B0B5F solid;border-radius: 10px;">
   		<ul class="side-list"> 
   			<li class="side-li" style="font-size:20px;">
   				<p><a href="MyPageMain.my">마이페이지</a></p>
   				<p><a href="#">회원정보수정</a></p>
   				<p><a href="Reserved.my">예매내역</a></p>
   				<p><a href="CouponList.my">쿠폰함</a></p>
   				<p><a href="MovieLikeList.my">찜목록</a></p>
   				<p><a href="ReviewList.my">리뷰내역</a></p>
   				<p><a href="QnaList.my">문의내역</a></p>
   				<p><a href="#">회원탈퇴</a></p>
   			</li>
   		</ul>
	</aside>
	
	<section class="inner-page" style="display: inline-block;">
	
	<h2 style="margin-left:50px">문의 상세보기</h2><hr>
	<div>
	</div>
		<section id="basicInfoArea">
			<input type="hidden" name="qna_idx" value="${param.qna_idx }" >
			<input type="hidden" name="pageNum" value="${param.pageNum }" >
			<!-- 답글 작성에 필요한 정보도 hidden 속성으로 전달 -->
			<input type="hidden" name="qna_re_ref" value="${qna.qna_re_ref }" >
			<input type="hidden" name="qna_re_lev" value="${qna.qna_re_lev }" >
			<input type="hidden" name="qna_re_seq" value="${qna.qna_re_seq }" >
			<table>
			<tr>
				<th width="70">제 목</th><td colspan="3" >${qna.qna_subject }</td>
			</tr>
			<tr>
				<th width="70">작성일</th>
				<td><fmt:formatDate value="${qna.qna_date }" pattern="yy-MM-dd HH:mm:SS" /></td>
			</tr>
			<tr>
				<th colspan="4">내용</th><td colspan="4">${qna.qna_content }</td>
			</tr>
			</table><br>
			<input type="button" value="답변" onclick="location.href='QnaReplyForm.my?qna_idx=${param.qna_idx}&pageNum=${param.pageNum }'">
			<input type="button" value="삭제" onclick="location.href='QnaDeleteForm.my?qna_idx=${param.qna_idx}&pageNum=${param.pageNum }'">
			<input type="button" value="목록" onclick="location.href='QnaList.my?qna_idx=${param.qna_idx}&pageNum=${param.pageNum }'">
	</section>
	</section>
</div>
</main>
	<!-- 본문 -->
	 <footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>
</body>
</html>

















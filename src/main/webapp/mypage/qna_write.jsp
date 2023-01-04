<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	
	<h2 style="margin-left:50px">1:1 문의하기<hr></h2>
	<form action="QnaWritePro.my" name="qnaForm" method="post" enctype="multipart/form-data" style="margin-left:50px">
			<div class="title">제목
			<em style="color:red ">*</em>
			<br>
			<input type="text" name="qna_subject" style="width:100%;" required="required" />
			</div>
			
			<div class="sub">문의사항
			<em style="color:red ">*</em>
			<br>
			<textarea name="qna_content" maxlength="550" cols="40" rows="15" required="required" placeholder="문의내용에 개인정보(이름,연락처,카드번호 등)가 포함되지 않도록 유의하시기 바랍니다.
회원로그인 후 문의작성시 나의 문의내역을 통해 답변을 확인하실 수 있습니다."></textarea>
			</div>
			
			<div class="commandCell">
				<button type="submit" style="float:right">문의접수</button>&nbsp;&nbsp;
			</div>
	</form>
	</section>
</main>
  
	<!-- 본문 -->
	
	 <footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>
</body>









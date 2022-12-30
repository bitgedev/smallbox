<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function confirm_logout() {
		let result = confirm("로그아웃 하시겠습니까?");
		
		if(result) {
			location.href="./MemberLogout.sm";
		}
	}
</script>
</head>
<body>
<c:choose>
	<c:when test="${empty sessionScope.sId}">
	  <header id="header" class="d-flex align-items-center">
	    <div class="container d-flex align-items-center">
	
	      <h1 class="logo me-auto">
		     <a href="main.jsp">
		     	<img src="assets/img/logo.png">
		     </a>
	      </h1>
	      <!-- Uncomment below if you prefer to use an image logo -->
	      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
	
	      <nav id="navbar" class="navbar">
	        <ul>
	          <li><a class="nav-link scrollto active" href="MovieList.mv">영화</a></li>
	          <li><a class="nav-link scrollto" href="#about">큐레이션</a></li>
	          <li><a class="nav-link scrollto" href="#services">영화관</a></li>
	          <li><a class="nav-link scrollto " href="#portfolio">특별관</a></li>
	          <li><a class="nav-link scrollto" href="#team">스토어</a></li>
              <li><a class="nav-link scrollto" href="MemberLoginForm.sm">로그인</a></li>
	          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
	          <li><a class="getstarted scrollto" href="#about">예매하기</a></li>
	        </ul>
	        <i class="bi bi-list mobile-nav-toggle"></i>
	      </nav><!-- .navbar -->
	
	    </div>
	  </header><!-- End Header -->
	</c:when>
	<c:otherwise>
		<header id="header" class="d-flex align-items-center">
	    <div class="container d-flex align-items-center">
	
	      <h1 class="logo me-auto">
		     <a href="main.jsp">
		     	<img src="assets/img/logo.png">
		     </a>
	      </h1>
	      <!-- Uncomment below if you prefer to use an image logo -->
	      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
	
	      <nav id="navbar" class="navbar">
	        <ul>
	          <li><a class="nav-link scrollto active" href="MovieList.mv">영화</a></li>
	          <li><a class="nav-link scrollto" href="#about">큐레이션</a></li>
	          <li><a class="nav-link scrollto" href="#services">영화관</a></li>
	          <li><a class="nav-link scrollto " href="#portfolio">특별관</a></li>
	          <li><a class="nav-link scrollto" href="#team">스토어</a></li>
	          <li><a href="MyPageForm.bo">${sessionScope.sId } 님</a></li>
	          	<c:if test='${sessionScope.sId eq "admin"}'> 
					<li><a href="MemberList.bo">관리자페이지</a></li>
				</c:if>
	          <li><a class="nav-link scrollto" href="MemberLogout.sm">로그아웃</a></li>
	          <li class="dropdown"><a href="MyPageMain.my"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
	            <ul>
	              <li><a href="#">회원정보</a></li>
	              <li class="dropdown"><a href="#"><span>필요하면</span> <i class="bi bi-chevron-right"></i></a>
	                <ul>
	                  <li><a href="#">씁시다</a></li>
	                  <li><a href="#">Deep Drop Down 2</a></li>
	                  <li><a href="#">Deep Drop Down 3</a></li>
	                  <li><a href="#">Deep Drop Down 4</a></li>
	                  <li><a href="#">Deep Drop Down 5</a></li>
	                </ul>
	              </li>
	          <li><a class="nav-link scrollto" href="AdminMain.ad">관리자페이지</a></li>
	              <li><a href="#">컬렉션</a></li>
	              <li><a href="#">쿠폰함</a></li>
	              <li><a href="#">코멘트</a></li>
	            </ul>
	          </li>
	          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
	          <li><a class="getstarted scrollto" href="#about">예매하기</a></li>
	        </ul>
	        <i class="bi bi-list mobile-nav-toggle"></i>
	      </nav><!-- .navbar -->
	
	    </div>
	  </header><!-- End Header -->
	</c:otherwise>
</c:choose>

<!-- ======= Header ======= -->
</body>
</html>
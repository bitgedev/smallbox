<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<header>
<meta charset="UTF-8">
<title>회원 정보 수정 </title>
</header>
<body>
	<header>
		<jsp:include page="../test/top.jsp"></jsp:include>
	</header>
  <!-- 로그인 화면 폼 -->
    <div id = "sform">
    	<h4>회원 정보</h4>
   			<form action="MemberModifyPro.sm" method="post">
		         <table>
			         <tr>
			        	 <td width="300px"><input type="text" name="member_name" value="${member.member_name }" readonly="readonly"></td>
			         </tr>
			         <tr>
			       		 <td width="300px"><input type="text" name="member_id" value="${member.member_id }" readonly="readonly"></td>
			         </tr>
			         <tr>
			         	 <td width="300px"><input type="text" name="member_email" value="${member.member_email }" readonly="readonly"></td>
			         </tr>
			         <tr>
			             <td width="300px"><input type="text" name="member_phone" value="${member.member_phone }" readonly="readonly"></td>
			         </tr>
		         	 <br>
			         <tr> <!-- 기존 패스워드 -->
			        	 <td width="300px"><input type="password" placeholder="기존 비밀번호" name="oldPasswd" value = "${member.member_passwd }" readonly="readonly"></td>
			         </tr>
			         <tr> <!-- 새 패스워드 -->
			         	<td width="300px">
			         		<input type="password" name="newPasswd" placeholder="새 비밀번호" >
			         	</td>
			         </tr>
			         <tr> <!-- 새 패스워드 확인 -->
			        	 <td width="300px">
			        		 <input type="password" name="newPasswdCheck" placeholder="새 비밀번호 확인" ><br>
			         		 <button type="submit" >수정</button>
			        	 </td>
			         </tr>
		     </table>
        </form>
    </div>
</body>

<!-- ------------------------------------------------------------------------------------------------------------>

<!-- 비밀번호 수정 -->
<script type="text/javascript">

	function checkConfirmPasswd(confirmPasswd) {
	// 패스워드 입력란에 입력된 패스워드 가져오기
	let passwd = document.fr.passwd.value;
	
	// span 태그 영역(checkConfirmPasswdResult) 객체 가져오기
	let spanCheckConfirmPasswdResult = document.getElementById("checkConfirmPasswdResult");
	
	// 두 패스워드 일치 여부 판별
	if(passwd == confirmPasswd) {
		spanCheckConfirmPasswdResult.innerHTML = "패스워드 일치";
		spanCheckConfirmPasswdResult.style.color = "BLUE";    		
	} else {
		spanCheckConfirmPasswdResult.innerHTML = "패스워드 불일치";
		spanCheckConfirmPasswdResult.style.color = "RED";    	
	}
}

</script>
</body>
</html>

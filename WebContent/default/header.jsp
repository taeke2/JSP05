<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<div align="center">
		<h1 style="color: #AAFFA3; font-size: 3.0em; font-family: Gabriola;">
			CARE &nbsp; LAB</h1>
		<hr>
		<div align="right">
			<a href="../member/index.jsp">HOME</a>&nbsp;&nbsp;
			<a href="../member/memberInfo.jsp">회원 정보</a>&nbsp;&nbsp;
			<%if(session.getAttribute("loginUser")== null){%>
				<a href="../member/login.jsp">로그인</a>
			<%}else{%>
				<a href="../member/logout.jsp">로그아웃</a>
			<%}%>
		</div>
		<hr>
	</div>


</body>
</html>
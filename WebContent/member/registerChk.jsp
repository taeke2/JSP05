<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerChk</title>
</head>
<body>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%
		boolean result = dao.registerUser(dto);
		if(result){
			out.print("<script>alert('회원가입을 축하합니다.');location.href='login.jsp';</script>");	
		}else{
			out.print("<script>alert('이미 가입되어있는 아이디입니다.');location.href='register.jsp';</script>");
		}
	%>
</body>
</html>
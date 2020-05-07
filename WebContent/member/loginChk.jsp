<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginChk</title>
</head>
<body>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%
		int result = dao.loginChk(request.getParameter("id"), request.getParameter("pwd"));
		if(result == 0){
			session.setAttribute("loginUser", dto.getId());
			response.sendRedirect("successLogin.jsp");
		}else if(result == 1){
			out.print("<script>alert('비밀번호가 일치하지 않습니다.');history.back();</script>");
		}else{
			out.print("<script>alert('등록되지 않은 아이디 입니다.');history.back();</script>");
		}
	%>
</body>
</html>
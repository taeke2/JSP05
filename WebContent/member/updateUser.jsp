<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateUser</title>
</head>
<body>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%
		dto.setId((String)session.getAttribute("id"));
		dao.updateMemeber(dto);
		out.print("<script>alert('변경되었습니다.');location.href='userInfo.jsp';</script>");
	%>
</body>
</html>
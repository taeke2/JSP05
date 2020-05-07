<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteInfo</title>
</head>
<body>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		dao.deleteMember((String)session.getAttribute("id"));
		out.print("<script>alert('삭제되었습니다.');location.href='memberInfo.jsp';</script>");
	%>
</body>
</html>
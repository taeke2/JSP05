<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>membership</title>
</head>
<body>
	
	
	<jsp:useBean id="dao" class="members.MemberDAO" />
	<%
		if (session.getAttribute("loginUser") == null) {
		response.sendRedirect("login.jsp");
			} else {
	%>
	<%@ include file="../default/header.jsp" %>
	<%
		ArrayList<MemberDTO> list = dao.memberView();
	%>
			<div align="center">
				<table border='1'>
					<tr>
						<th>이름</th><th>주소</th><th>전화번호</th>
					</tr>
	<%
		for (MemberDTO m : list) {
	%>
					<tr>
						<td><a href="userInfo.jsp?id=<%=m.getId()%>"><%=m.getName()%></a></td><td><%=m.getAddr()%></td><td><%=m.getTel()%></td>
					</tr>
	<%
				}
	%>
				</table>
			</div>
	<%
		}
	%>
	
	<%@ include file="../default/footer.jsp" %>
	
	
</body>
</html>
<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyInfo</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		MemberDTO member = dao.userInfo((String)session.getAttribute("id"));
	%>
	<div align="center">
		<h1>개인 정보</h1>
		<form action="updateUser.jsp" method="get">
			<table style="width: 400px;">
				<tr><th>이 름</th><td><input type="text" name="name" value="<%=member.getName()%>"></td></tr>
				<tr><th>주 소</th><td><input type="text" name="addr" value="<%=member.getAddr()%>"></td></tr>
				<tr><th>전화번호</th><td><input type="text" name="tel" value="<%=member.getTel()%>"></td></tr>
				<tr>
					<th><input type="submit" value="완료"></th>
					<td><input type="button" value="취소" onclick="history.back()"></td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="../default/footer.jsp" %>
</body>
</html>
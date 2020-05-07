<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>personalData</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<div align="center">
		<h1>개인 정보</h1>
		<%
			if(request.getParameter("id")!=null){
				session.setAttribute("id", request.getParameter("id"));	
			}
			MemberDTO member = dao.userInfo((String)session.getAttribute("id"));
		%>
			<table style="width: 400px;">
				<tr><th>아 이 디</th><td><%=member.getId()%></td></tr>
				<tr><th>비밀번호</th><td><%=member.getPwd()%></td></tr>
				<tr><th>이 름</th><td><%=member.getName()%></td></tr>
				<tr><th>주 소</th><td><%=member.getAddr()%></td></tr>
				<tr><th>전화번호</th><td><%=member.getTel()%></td></tr>
				<tr>
					<th><input type="button" value="수정" onclick="location.href='modifyInfo.jsp'"></th>
					<td><input type="button" value="삭제" onclick="location.href='deleteInfo.jsp'"></td>
				</tr>
			</table>
	</div>
	<%@ include file="../default/footer.jsp" %>
	
</body>
</html>
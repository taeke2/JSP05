<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	<%
	//String id = request.getParameter("id");
	//String pwd = request.getParameter("pwd");
	String user = request.getParameter("user");
	String str="test jsp";
	if(user.equals("user")){
	%>
		<jsp:forward page="userPage.jsp">
			<jsp:param value="param_user" name="name"/>
		</jsp:forward>
	<%}else{ %>
		<jsp:forward page="adminPage.jsp">
			<jsp:param value="param_admin" name="name"/>
		</jsp:forward>
	<%} %>
	<!-- form을 통해서 받은 값들을 다시 다음페이지에 넘겨주기 위해 forward 함수를 사용한다. -->
</body>
</html>









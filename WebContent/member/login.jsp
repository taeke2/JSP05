<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../default/header.jsp" />

	<div align="center">
		<h1>로그인 페이지 입니다.</h1>
	</div>
	<div align="right">
		<form action="loginChk.jsp" method="get">
			<table>
				<tr>
					<td><input type="text" name="id" placeholder="아이디"></td>
					<td rowspan="2"><input type="submit" value="로그인"
						style="padding: 15px 10px 15px 10px;"></td>
				</tr>
				<tr>
					<td><input type="text" name="pwd" placeholder="비밀번호"></td>
				</tr>
				<tr>
					<td><a href="register.jsp">회원가입</a></td>
				</tr>
			</table>
		</form>
	</div>

	<jsp:include page="../default/footer.jsp" />
</body>
</html>
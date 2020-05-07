<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script type="text/javascript">
	function pwchk() {
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
		if (pw1 == pw2) {
			document.getElementById("lb").innerHTML = "확인!!";
		} else {
			document.getElementById("lb").innerHTML = "불일치!!";
			document.getElementById("pw1").value = "";
			document.getElementById("pw2").value = "";
			document.getElementById("pw1").focus();
		}
	}
	
	function chkData(){
		var id = document.getElementById("id").value;
		if(id == ""){
			alert("아이디는 필수 입력 사항입니다.");
		}else if(document.getElementById("pw1").value == ""){
			alert("비밀번호는 필수 입력 사항입니다.");
		}else if(document.getElementById("pw2").value == ""){
			alert("비밀번호 확인은 필수 입력 사항입니다.");
		}else{
			<%response.setCharacterEncoding("utf-8");%>
			fo.submit();
		}
	}
</script>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	
	<div align="center">
		<form action="registerChk.jsp" method="get" id="fo">
			<table>
				<tr><td><input type="text" name="id" placeholder="아이디" id="id"></td><td>(*필수 항목)</td></tr>
				<tr><td><input type="text" name="pwd" placeholder="비밀번호" id="pw1"></td></tr>
				<tr><td><input type="text" name="pwdchk" placeholder="비밀번호 확인" id="pw2" onchange="pwchk()"></td>
					<td><label id="lb">(*필수 항목)</label></td></tr>
				<tr><td><input type="text" name="name" placeholder="이름"></td></tr>
				<tr><td><input type="text" name="addr" placeholder="주소"></td></tr>
				<tr><td><input type="text" name="tel" placeholder="전화번호"></td></tr>
				<tr><td align="center"><input type="button" value="회원가입" onclick="chkData()"></td></tr>
			</table>
					
		</form>
	</div>
	
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>
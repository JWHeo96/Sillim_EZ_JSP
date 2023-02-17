<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardSample1</title>
</head>
<style>
	body{
		background: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%); 
		width: 100%; 
		height: 450px;
		background-repeat: no-repeat;
	}
</style>
<body>
<!--  이름과 나이를 입력하여 출력하세요. 단, forward를 이용합니다. -->
	<h2 align="center" style="color:royalblue">인적사항 입력</h2>
	<form align="center"  type="post" action="forwardSample2.jsp">
		<table align="center" cellpadding="10" cellspacing="10" border="2">
		<tr>
		<td><input type="text" name="name" autofocus placeholder="이름"></td>
		<td><input type="text" name="age" placeholder="나이"></td>
		</tr>
		<tr>
		<td><input type="text" name="height" placeholder="키"></td>
		<td><input type="text" name="weight" placeholder="몸무게"></td>
		</tr>
		</table>
		<br>
		<input type="submit" value="입력">
		<input type="reset" value="취소"> 
	</form>
</body>
</html>
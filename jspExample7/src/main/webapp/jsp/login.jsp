<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
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
	<h2 align="center" style="color:red">로그인</h2>
	<form method="post" action="login_2.jsp" align="center">
		아이디 : 
		<input type="text" name="id" autofocus placeholder="아이디 입력"><br>
		암호 : &nbsp;
		<input type="password" name="pwd" placeholder="비밀번호 입력"><br><br />
		<input type="submit" value="로그인">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원</title>
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
	<h2>회원가입 폼</h2>
	<form method="post" action="joinMemberPro.jsp">
		아이디: <input type="text" name="id" maxlength="12" autofocus placeholder="아이디"><br>
		패스워드: <input type="password" name="passwd" maxlength="12" placeholder="비밀번호"><br>
		이름: <input type="text" name="name" maxlength="10" placeholder="이름"><br><br>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>
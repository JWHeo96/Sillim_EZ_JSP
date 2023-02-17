<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_1.jsp</title>
</head>
<body>
	<h2 align="center">로그인 페이지입니다.</h2>
	<hr>
	<form align="center" method="post" action="include_2.jsp">
		<label>
		아이디:
		<input type="text" name="strID" autofocus placeholder="ID" required><br>
		</label>
		<label>
		비밀번호:
		<input type="password" name="strPWD" placeholder="PWD" required><br>
		</label><br>
		<input type="submit" value="로그인"> &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>
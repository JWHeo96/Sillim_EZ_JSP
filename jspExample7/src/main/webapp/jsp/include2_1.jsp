<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2_1.jsp</title>
</head>
<body>
	<h2>값 입력</h2>
	<form method="post" action="include2_2.jsp">
		숫자 입력: 
		<input type="text" name="year" autofocus placeholder="숫자를 입력해주세요" required>
		<br><br>
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</form>
</body>
</html>
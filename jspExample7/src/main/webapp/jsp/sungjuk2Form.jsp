<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여러 과목 성적처리</title>
</head>
<body>
	<h2>여러 과목 성적처리</h2>
	<form method="post" action="sungjuk2Pro.jsp">
	과목:
	<select name="select">
		<option value="Java">Java</option>
		<option value="Oracle">Oracle</option>
		<option value="CSS">CSS</option>
		<option value="JavaScript">JavaScript</option>
		<option value="JSP">JSP</option>
	</select><br>
	이름:
	<input type="text" name="name" placeholder="문자열 입력" required><br />
	성적:
	<input type="text" name="score" placeholder="숫자 입력" required><br />
	<input type="submit" value="확인">
	</form>
</body>
</html>
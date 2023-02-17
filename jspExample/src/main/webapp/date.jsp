<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시간</title>
</head>
<style>
	hr {
		border: solid;
		color: green;
	}
	h2 {
		color: red;
	}
</style>
<body>
	<h2>Hello~ JSP Programming</h2>
	오늘의 날짜와 시간은: <%= new java.util.Date() %>
	<hr>
</body>
</html>
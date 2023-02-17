<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
	<%
		Cookie cookie1 = new Cookie("Name", URLEncoder.encode("허장욱"));
		Cookie cookie2 = new Cookie("Job", URLEncoder.encode("프로그래머"));
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
	%>
	쿠키가 생성되었습니다.
</body>
</html>
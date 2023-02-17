<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 설정 및 읽기</title>
</head>
<body>
	<%
		Cookie cookie1 = new Cookie("Name", URLEncoder.encode("허장욱"));
		Cookie cookie2 = new Cookie("Job", URLEncoder.encode("프로그래머"));
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		out.println(cookie1.getName() + "쿠키의 값" + cookie1.getValue() + "<br>");
		out.println(cookie2.getName() + "쿠키의 값" + cookie2.getValue() + "<br>");
		
		String strCookie1 = URLDecoder.decode(cookie1.getValue());
		String strCookie2 = URLDecoder.decode(cookie2.getValue());
		
		out.println(cookie1.getName() + "쿠키의 값:" +strCookie1 + "<br>");
		out.println(cookie2.getName() + "쿠키의 값:" +strCookie2);
	%>
</body>
</html>
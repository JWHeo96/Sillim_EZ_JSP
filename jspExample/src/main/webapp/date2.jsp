<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
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
	<% Date datetime = new Date(); %>
	안녕하세요? 현재 시간은
	<%out.println(datetime);
		out.println("<br>이고, IP 주소는 ");
		out.println(request.getLocalAddr());
	%>
	입니다.
	<hr>
</html>
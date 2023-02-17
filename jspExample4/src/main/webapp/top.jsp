<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top.jsp</title>
</head>
<body>
	<% Date date = new Date();%>
	top.jsp입니다<p>
	<%=date.toLocaleString() %>
	<hr>
</body>
</html>
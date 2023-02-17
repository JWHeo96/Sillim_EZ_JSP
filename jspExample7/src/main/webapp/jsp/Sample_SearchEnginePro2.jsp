<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String keyword = request.getParameter("word");
		String text_url = URLEncoder.encode(keyword, "utf-8");
		String url ="https://www.google.com/search?q=" + text_url;
		response.sendRedirect(url);
	%> 
</body>
</html>
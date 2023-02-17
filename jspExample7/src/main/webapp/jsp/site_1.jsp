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
		String url = request.getParameter("url");
		String httpUrl = "http://" + url;
		// pageContext.forward("site_2.jsp"); -- jsp:forward 대신 사용
	%>
	<jsp:forward page="site_2.jsp">
		<jsp:param name="url" value="<%=httpUrl %>" />
	</jsp:forward>
</body>
</html>
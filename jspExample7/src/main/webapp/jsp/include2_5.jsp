<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2_5.jsp</title>
</head>
<body>
	<%
		int year = Integer.parseInt(request.getParameter("year"));
		int day = year * 365;
	%>
	<b  align="center"><%=year %> 년은 <%=day %>일 입니다.</b>
</body>
</html>
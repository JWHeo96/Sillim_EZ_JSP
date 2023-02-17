<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2_4.jsp</title>
</head>
<body>
	<%
		int year = Integer.parseInt(request.getParameter("year"));
		int week = (year*365) / 7;
	%>
	<b style="color:blue"  align="center"><%=year %> 년은 <%=week %>주 입니다.</b>
</body>
</html>
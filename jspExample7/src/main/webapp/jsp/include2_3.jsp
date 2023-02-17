<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2_3.jsp</title>
</head>
<body>
	<%
		int year = Integer.parseInt(request.getParameter("year"));
		int month = year * 12;
	%>
	<b><%=year %> 년은 <%=month %>달 입니다.</b>
</body>
</html>
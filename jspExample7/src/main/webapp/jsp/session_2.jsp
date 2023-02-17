<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세선ID/유지시간 출력</title>
</head>
<body>
	<% 
		String ID = request.getParameter("strID");
	
		String strSessionID = session.getId();
		int intTime = session.getMaxInactiveInterval();
	%>
	<b><%=ID %> 님 환영합니다.</b><p>
	세선 ID: <%=strSessionID %><br>
	세선 시간: <%=intTime %>
</body>
</html>
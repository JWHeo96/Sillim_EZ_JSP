<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>접속 시간</title>
</head>
<body>
	<%
		long lastTime = session.getLastAccessedTime();
		long createTime = session.getCreationTime();
		long useTime = (lastTime - createTime) / 60000;
	%>
	<%=useTime %>
</body>
</html>
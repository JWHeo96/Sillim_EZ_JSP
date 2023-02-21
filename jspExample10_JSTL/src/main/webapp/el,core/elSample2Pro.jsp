<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장객체 사용 예제</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		// String name = request.getParameter("name");
		// String tel = request.getParameter("tel");
	%>
	<h2>${sessionScope.test }</h2>
	<h2>${param.name }</h2>
	<h2>${param.tel }</h2>
	<!-- 
		<h2><%//=name %></h2>
		<h2><%//=tel %></h2>
	 -->
</body>
</html>
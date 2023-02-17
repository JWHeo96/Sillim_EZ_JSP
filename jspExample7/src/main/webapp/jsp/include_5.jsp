<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_5.jsp</title>
</head>
<body>
	<h2 align="center">저희 사이트에 방문해 주셔서 감사합니다.</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String ID = request.getParameter("strID");
	%>
	<hr>
	<jsp:include page="include_3.jsp">
		<jsp:param name="strID" value="<%=ID %>"/>
	</jsp:include>
	<b><%=ID %></b> 님은 정 회원입니다.
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardSample2</title>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
	%>
	<jsp:forward page="forwardSample3.jsp">
		<jsp:param name="name" value="<%=name %>"/>
		<jsp:param name="age" value="<%=age %>"/>
		<jsp:param name="height" value="<%=height %>"/>
		<jsp:param name="weight" value="<%=weight %>"/>
	</jsp:forward>
</body>
</html>
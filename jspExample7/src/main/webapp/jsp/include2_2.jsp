<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2_2.jsp</title>
</head>
<body>
	<h2 align="center" style="color:red">include2_2.jsp입니다.</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String year = request.getParameter("year");
	%><div align="center">
		<jsp:include page="include2_3.jsp">
			<jsp:param name="year" value="<%=year %>"/>
		</jsp:include>
		<hr>
		<jsp:include page="include2_4.jsp">
			<jsp:param name="year" value="<%=year %>"/>
		</jsp:include>
		<hr>
		<jsp:include page="include2_5.jsp">
			<jsp:param name="year" value="<%=year %>"/>
		</jsp:include>
	<p>
	<a href="include2_1.jsp"><button>홈으로</button></a>
		</div>
</body>
</html>
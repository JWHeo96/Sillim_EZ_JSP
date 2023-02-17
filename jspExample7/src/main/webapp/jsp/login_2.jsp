<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>
	<h2 align="center" style="color:blue">로그인 예제</h2>
	<% 
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if((id.equals("guest") && !pwd.equals("anonymous")) || (id.equals("") && pwd.equals("")) || (pwd.equals(""))){
	%>

	<jsp:include page="login_3.jsp">
		<jsp:param value="<%=id %>" name="id" />
		<jsp:param value="<%=pwd %>" name="pwd" />
	</jsp:include>
	
	<%
		} else {
			out.println("회원님 반갑습니다. <hr>");
	%>
	아이디: <%=id %>, 암호: <%=pwd %>
	<% } %>
	<p>
	<form action="login.jsp" method="get">
		<input type="submit" value="처음으로">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arith04</title>
</head>
<body>
	<jsp:useBean id="calc" class="ArithBeans.ArithBean" scope="page" />
	<jsp:setProperty property="*" name="calc"/>
	계산 결과: 
	<%
		String x = request.getParameter("calc");
		if(x.equals("1")){
	%>	<jsp:getProperty property="calc1" name="calc" />
	<%
		} else if (x.equals("2")){
	%>	<jsp:getProperty property="calc2" name="calc" />
	<% } else if (x.equals("3")){
	%> 	<jsp:getProperty property="calc3" name="calc" />
	<% } else if (x.equals("4")){
	%>	<jsp:getProperty property="calc4" name="calc" />
	<%
	}
	%>
	<p>
	<a href="arith03.html"><button>다시</button></a>
</body>
</html>
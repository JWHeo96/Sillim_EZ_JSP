<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">구구단</h2>
<br>
<hr>
<table align="center" border="1" width="600" cellpadding="10"
cellspacing="20">

<%
	int k;
	for(int i=1; i<=9; i++){
		out.println("<tr>");
		for(int j=2; j<= 9; j++){
			k = i * j;
			out.println("<td align='center'>" + j + "*" + i + "=" + k + "</td>");
		}
		out.println("</tr>");
	}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 출력</title>
</head>
<body>
	<h2>학생정보</h2>
	<%
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String subject = request.getParameter("subject");
	%>
	<table border="1">
	<tr align="center">
		<td width="150">학번</td>
		<td width="150"><%=num %></td>
	</tr>
	<tr align="center">
		<td width="150">이름</td>
		<td width="150"><%=name %></td>
	</tr>
	<tr align="center">	
		<td width="150">학년</td>
		<td width="150"><%=grade %></td>
	</tr>
	<tr align="center">	
		<td width="150">선택과목</td>
		<td width="150"><%=subject %></td>
	</tr>
	</table>
</body>
</html>
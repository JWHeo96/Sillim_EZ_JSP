<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 과목 성적 입력</title>
</head>
<body>
	<div align="center">
	<h2>JSP과목의 성적을 입력해주세요.</h2>
		<form method="post" action="sungjukPro.jsp">
		성적 입력:<br />
		<%
			int number = Integer.parseInt(request.getParameter("number"));
		
			for(int i=0; i<number; i++){
		%>	
		<input type="text" name=<%=i %>><br />
		<% 	
			}
		%>
		<input type="hidden" name="number" value=<%=number %>>
		<input type="submit" value="데이터전송">
		</form>
	</div>
</body>
</html>
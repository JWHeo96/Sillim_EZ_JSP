<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
		background: linear-gradient(to top, #b8ceef 0%, #C0F5FB 100%); 
		width: 100%; 
		height: 450px;
		background-repeat: no-repeat;
		color: royalblue;
	}
	hr {
		border: dashed 5px blue;
	}
</style>
<body>
	<%
		String name=request.getParameter("name");	
		String age=request.getParameter("age");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");
	%>
	<table align="center" border="1" cellpadding="5" cellspacing="5">
		<tr>
			<th colspan="2"> <%=name %>'s 프로필 </td>
		</tr>
		<tr>
			<td align="center">이름: <%=name %></td>
			<td align="center">나이: <%=age %> 세</td>
		</tr>`
		<tr>
			<td align="center">키: <%=height %> cm </td>
			<td align="center">몸무게: <%=weight %> kg</td>
		</tr>
	</table>
	<br>
	<form align="center" method="get" action="forwardSample1.jsp">
		<input type="submit" value="홈으로">
	</form>
</body>
</html>
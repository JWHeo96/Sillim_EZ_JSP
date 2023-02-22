<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="./img/favicon.png" />
<style>
	div {
		position: relative;
	}
	a {
		padding: 20px;
		margin: 30px;
	}
</style>
<body>
<!-- -------------------------------------------------------------------------------------- -->
	<%
		String id = "";
	
		try {
			id = (String) session.getAttribute("id");
			if(id == null){
				response.sendRedirect("login.jsp");
			}
			
		} catch (Exception e){
			e.printStackTrace();
		}
		String center = request.getParameter("center");
	
		if(center == null){
			center = "Center.jsp";
		}
	%>
	
	<table border="1" style="align:center; width:800;">
		<tr height="150">
			<td align="center" colspan="2">
				<jsp:include page="header.jsp"></jsp:include>
			</td>
		</tr>
		<tr height="500">
			<td align="center" width="150">
				<jsp:include page="left.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td align="center" width="650">
				<jsp:include page="<%=center %>"></jsp:include>
			</td>
		</tr>
		<tr height="100">
			<td align="center" colspan="2">
				<jsp:include page="footer.jsp"></jsp:include>
			</td>
		</tr>
		
	</table>
	
	<b><%= id %></b>님이 로그인 하셨습니다.
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_2</title>
</head>
<style>
	body{
		background: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%); 
		width: 100%; 
		height: 450px;
		background-repeat: no-repeat;
	}
</style>
<body>
	<%
		String strValue = request.getParameter("download");
		String strURL = null;
		
		if(strValue.equals("1")){
			strURL = "JDK_link.jsp";
		} else if(strValue.equals("2")){
			strURL = "Tomcat_link.jsp";
		} else if(strValue.equals("3")){
			strURL = "Editplus_link.jsp";
		}
	%>
	<jsp:forward page ="<%=strURL %>" />
</body>
</html>
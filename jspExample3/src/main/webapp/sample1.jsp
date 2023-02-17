<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sample1</title>
</head>
<body>
	<% 
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd H:m:s");
		
		String strDate = sdf.format(today);
	%>
	
	오늘은 <%= strDate %>
	
</body>
</html>
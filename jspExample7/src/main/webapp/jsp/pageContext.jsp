<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 객체</title>
</head>
<body>
	<%
		pageContext.setAttribute("pageValue", "pageContext Example");
	
		Object cobe = pageContext.getAttribute("pageValue");
			if(cobe != null){
				String strValue = (String)cobe;
				out.println("page Value = " + strValue + "<br>");
			} else {
				out.println("Not found!!");
			}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arith02</title>
</head>
<body>
	<%
		int x = Integer.parseInt(request.getParameter("num1"));
		int y = Integer.parseInt(request.getParameter("num2"));
		String z = request.getParameter("calc");
		int result = 0;
		
		if(z.equals("1")){
			result = x + y;
		} else if (z.equals("2")){
			result = x - y;
		} else if (z.equals("3")){
			result = x * y;
		} else if (z.equals("4")){
			result = x / y;
		}
	%>
	계산 결과: <%=result %>
	<p>
	<a href="arith01.html"><button>다시</button></a>
</body>
</html>
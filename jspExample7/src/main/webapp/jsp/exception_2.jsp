<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exception 객체</title>
</head>
<body>
<%
	try{
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		int intResult = num1 / num2;
		out.println(intResult);
	} catch (ArithmeticException e){
		//e.printStackTrace();
		RequestDispatcher dispatcher = request.getRequestDispatcher("error/error.jsp");
		dispatcher.forward(request, response);
		log("Zero 에러 발생!");
	} catch (NumberFormatException e){
		RequestDispatcher dispatcher = request.getRequestDispatcher("error/error2.jsp");
		dispatcher.forward(request, response);
		log("정수 에러 발생!");
	}
%>
<br>
<a href="exception_1.jsp"><button>홈으로</button></a>
</body>
</html>
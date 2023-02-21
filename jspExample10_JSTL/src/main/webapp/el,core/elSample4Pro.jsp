<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elSample4Pro</title>
</head>
<body align="center">
	<c:set var="num1" value="${param.num1 }" />
	<c:set var="num2" value="${param.num2 }" />
	<c:set var="select" value="${param.select }" />
	
	<c:catch var="err">
	<c:if test="${select == 1}">
	더하기<br> ${num1} + ${num2} =
	${num1 + num2 }<br>
	</c:if>
	
	<c:if test="${select == 2}">
	빼기<br> ${num1} - ${num2} =
	${num1 - num2 }<br>
	</c:if>
	
	<c:if test="${select == 3}">
	곱하기<br> ${num1} * ${num2} =
	${num1 * num2 }<br>
	</c:if>
	
	<c:if test="${select == 4}">
	나누기<br> ${num1} / ${num2} =
	${num1 / num2 }<br>
	</c:if>
	
	<c:if test="${select == 5}">
	나머지<br> ${num1} % ${num2} =
	${num1 % num2 }<br>
	</c:if>
	</c:catch>
	<br>
	<c:if test="${err != null }">
		Error Message: ${err.message }<br>
	</c:if>

	<a href="coreTest4.jsp"><button style="background-color:aliceblue">홈으로</button></a>
</body>
</html>
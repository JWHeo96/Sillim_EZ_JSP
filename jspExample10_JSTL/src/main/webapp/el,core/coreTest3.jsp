<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Library Core Version 이용</title>
</head>
<body>
	<c:forEach var="text" begin="1" end="10" step="2">
		<b>${text}</b>&nbsp;
	</c:forEach>
	<br>
	
	<c:forEach var="text2" begin="2" end="10" step="2">
		<b>${text2 }</b>&nbsp;
	</c:forEach>
	<br>
	
	<!-- 어떤 수를 0으로 나누면 오류가 발생합니다.
	이 오류를 처리하는 메시지를 출력해 보세요. -->
	
	<%
		int num1 = 100;
		int num2 = 0;
	%>
	<c:catch var="err">
		<%= num1 / num2 %>
	</c:catch>
	<c:if test="${err != null }">
		Error Message: ${err.message }<br>
		num2를 다시 입력해 주세요.
	</c:if>
</body>
</html>
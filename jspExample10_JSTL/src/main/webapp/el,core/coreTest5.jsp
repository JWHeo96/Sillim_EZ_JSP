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
	<!-- 1 ~ 10 사이의 숫자를 출력하세요. -->
	<h2>1 ~ 10 사이의 데이터 출력1</h2>
	<c:forEach var="i" begin="1" end="10" step="1">
		<b>${i }</b>
	</c:forEach>
	<br><br>
	
	<!-- 1 ~ 10 사이의 숫자를 출력하세요. -->
	<c:set var="h2" value="1 ~ 10 사이의 데이터 출력2" />
	<b style="color:blue; font-size:30px;"><c:out value="${h2 }" /></b>
	<br><br>
	<c:forEach var="i" begin="1" end="10" step="1">
		<b>${i }</b>&nbsp;
	</c:forEach>
	<br><br>
	
		<!-- 1 ~ 10 사이의 숫자를 출력하세요. -->
	<c:set var="h2" value="1 ~ 10 사이의 데이터 출력3" />
	<b style="color:blue; font-size:40px;"><c:out value="${h2 }" /></b>
	<br><br>
	<c:forEach var="i" begin="1" end="10" step="1">
		<font size=${i }><b>${i }</b>&nbsp;</font>
	</c:forEach>
	
	
</body>
</html>
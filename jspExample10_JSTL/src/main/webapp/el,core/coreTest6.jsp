<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Library Core Version 이용</title>
</head>
<body align="center">
	<!-- 구구단을 출력하세요. -->
	<c:set var="h2" value="구구단 출력" />
	<font size="30px" color="blue"><b><c:out value="${h2 }" /></b></font>
	<br>
	
	<hr>
	
	<table border="1" align="center" cellpadding="10" cellspacing="10">
	<c:forEach var="x" begin="1" end="9" step="1">
	<td style="color:red">${x }</td>
	</c:forEach>
	<c:forEach var="i" begin="1" end="9" step="1">
	<tr> 
		<td style="color:red">
			${ i} 
		</td>
		<c:forEach var="j" begin="2" end="9" step="1">
		<td><b> ${i*j }</b></td>&nbsp;
		</c:forEach>
	</tr>
	</c:forEach>
	</table>
	<br><br>
	
	
</body>
</html>
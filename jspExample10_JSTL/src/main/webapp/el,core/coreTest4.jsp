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
	<!-- 두 수를 입력받아서, elSample4Pro.jsp로 전송하고, 
		가감승제산을 하여 결과를 출력하도록 작성하세요. -->
	<h2 align="center" style="color:red">사칙연산</h2>
	<form method="post" action="elSample4Pro.jsp">
	<table border="1" align="center" style="background-color:aliceblue">
	<tr>
	<td>
		<input type="text" name="num1" size="7" autofocus placeholder="첫 번째 숫자">
	</td>
	<td>
		<select name="select">
			<option value="1">+</option>
			<option value="2">-</option>
			<option value="3">*</option>
			<option value="4">/</option>
			<option value="5">%</option>
		</select>
	</td>
	<td>
		<input type="text" name="num2" size="7" autofocus placeholder="두 번째 숫자">
	</td>
	</tr>
	<tr>
	<td colspan="3" align="center">
		<input type="submit" value="계산하기" style="background-color:pink">
		<input type="reset" value="취소하기" style="background-color:pink">
	</td>
	</tr>
	</table>
	</form>
</body>
</html>
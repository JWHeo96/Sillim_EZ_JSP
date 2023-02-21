<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTest</title>
</head>
<%
	session.setAttribute("test", "Session Test");
%>
<body>
	<form action="elSample2Pro.jsp" method="post">
		<table border="1" align="center">
			<tr>
				<td>이름:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호:</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="입력버튼">
					<input type="reset" value="취소버튼">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
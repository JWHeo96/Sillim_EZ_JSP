<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 숫자가 10보다 작거나 같은지 비교</title>
</head>
<body>
	<h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
	<%
		String strNumber = request.getParameter("number");
		int number = Integer.parseInt(strNumber);
		
		if(number <= 10) {
			out.println("입력받은 숫자는 " + number + "입니다.");
		} else {
			out.println("숫자가 잘못 입력되었습니다.");
		}
	%>
	<p>
	<a href="ifTestform.jsp">숫자 입력폼으로 돌아가기</a>
</body>
</html>
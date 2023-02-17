<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<B> 현재 Buffer 상태 </B><BR><BR>
	<%
	int intTotal = out.getBufferSize();
	int intRemain = out.getRemaining();
	out.println("Buffer 전체 크기 : " + intTotal + "<BR>");
	out.println("Buffer 현재 사용량 : " + intRemain);
	%>
</body>
</html>
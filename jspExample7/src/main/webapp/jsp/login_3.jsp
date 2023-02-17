<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_2.jsp</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		out.println("회원이 아니시군요. 반갑습니다.<br>");
		out.println("다음으로 로그인 하세요.<br><hr>");
		out.println("아이디: guest, 암호: anonymous");
	%>
	<p>
</body>
</html>
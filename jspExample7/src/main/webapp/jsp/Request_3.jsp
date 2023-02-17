<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권역을 선택하는 폼</title>
</head>
<body>
	<%
	String ID = request.getParameter("strID");
	String pass = request.getParameter ("strPwd");
	out.println("아이디 : " + ID + "<BR>");
	out.println("비밀번호 : " + pass);
	%>
</body>
</html>
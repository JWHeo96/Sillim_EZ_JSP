<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<jsp:useBean id="login" class="loginSample.LoginBean" scope="page" />
	<jsp:setProperty property="*" name="login"/>

	<h2 align="center">로그인 예제</h2>
	<hr>
	<%
		if(!login.checkUser()){
			out.println("로그인 실패!!");
		} else {
			out.println("로그인 성공!!");
		}
	%>
	
	<hr>
	사용자 아이디: <jsp:getProperty property="userid" name="login"/>
	사용자 패스워드: <jsp:getProperty property="passwd" name="login"/>
</body>
</html>
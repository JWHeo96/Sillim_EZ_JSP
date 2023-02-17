<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디와 비밀번호</title>
</head>
<body>
	<h2>아이디와 비밀번호 테스트</h2>
	<Form Action = "./jsp/Request_3.jsp" Method = "post">
	아이디 : <Input Type = "Text" Name = "strID"> <BR>
	비밀번호 : <Input Type = "PassWord" Name = "strPwd"> <BR><BR>
	<Input Type = "Submit" Value = "로그인">
	<Input Type = "Reset" Value = "취소">
	</Form>
	<%-- http://localhost:8500/jspExample7/jsp/Request_3.jsp --%>
</body>
</html>
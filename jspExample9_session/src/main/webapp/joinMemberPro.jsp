<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="BeansTest.logonDBBean" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertMemberPro</title>
</head>
<body>
	<jsp:useBean id="ldb" class="BeansTest.logonDataBean"> <!-- DTO에 접근하는 역할 -->
		<jsp:setProperty name="ldb" property="*" />
		<!-- setName(), setId(), setPasswd()  -->
	</jsp:useBean>
	
	<%
		ldb.setReg_date(new Timestamp(System.currentTimeMillis()));
		logonDBBean logon = logonDBBean.getInstance();
		logon.insertMember(ldb);
	%>
	<jsp:getProperty property="id" name="ldb" />님 회원가입을 축하합니다.
	<a href="sessionLogin.jsp"><button>홈으로</button></a>
</body>
</html>
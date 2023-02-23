<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ page import="kr.co.ezen.*" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세보기 수정 화면</title>
</head>
<%

	String id = request.getParameter("id");
	
	memberDAO mDao = new memberDAO();
	
	memberBean mBean = mDao.oneSelectMember(id);
%>
<body style="background:black;">
	<h2 align="center" style="color:purple;s">로그인</h2>
	<form action="loginPro.jsp" method="post">
		<table align="center" border="1">
			<tr align="center" style="height:50px;">
				<td align="center" style="width:230px;background:pink;">아이디</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="id"  placeholder="아이디 입력"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">패스워드</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="password" name="pass1"  placeholder="비밀번호 입력"></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="submit" value="로그인" />
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberJoinForm.jsp'" value="회원가입" />
		</div>
	</form>
</body>
</html>
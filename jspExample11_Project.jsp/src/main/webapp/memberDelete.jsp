<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body style="background: #FFEFBA;  /* fallback for old browsers */
background: -webkit-linear-gradient(to top, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to top, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
;background-repeat:no-repeat;">
	<h2 align="center" style="color:purple;s">회원정보 상세보기 수정 화면</h2>
	<form action="memberDeletePro.jsp" method="post">
		<table align="center" border="1">
			<tr align="center" style="height:50px;">
				<td align="center" style="width:230px;background:pink;">아이디</td>
				<td style="width:350px;background:aliceblue"><%=mBean.getId() %></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">패스워드</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="password" name="pass1"  placeholder="비밀번호 입력"></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="hidden" name="id" value="<%=mBean.getId() %>">
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="submit" value="삭제" />
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberList.jsp'" value="목록" />
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
		</div>
	</form>
</body>
</html>
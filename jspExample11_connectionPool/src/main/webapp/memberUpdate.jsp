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
<body style="background:black;">
	<h2 align="center" style="color:purple;s">회원정보 상세보기 수정 화면</h2>
	<form action="memberUpdatePro.jsp" method="post">
		<table align="center" border="1">
			<tr align="center" style="height:50px;">
				<td align="center" style="width:230px;background:pink;">아이디</td>
				<td style="width:350px;background:aliceblue"><%=mBean.getId() %></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">이름</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="name"" placeholder="이름 입력" value="<%=mBean.getName()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">이메일</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="email" name="email" placeholder="이메일 입력" value="<%=mBean.getEmail()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">전화번호</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="tel" placeholder="전화번호 입력" value="<%=mBean.getTel()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">관심분야</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="hobby" placeholder="관심분야 입력" value="<%=mBean.getHobby()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">직 업</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="job" placeholder="직업 입력" value="<%=mBean.getJob()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">연령대</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="text" name="age" placeholder="연령대 입력" value="<%=mBean.getAge()%>"></td>
			</tr>
			<tr align="center" style="height:50px;">
				<td align="center" style="background:pink;">패스워드</td>
				<td style="width:350px;background:aliceblue"><input size="30" type="password" name="pass1"  placeholder="비밀번호 입력"></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="hidden" name="id" value="<%=mBean.getId() %>">
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="submit" value="수정" />
			<input style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=memberList.jsp'" value="목록" />
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
		</div>
	</form>
</body>
</html>
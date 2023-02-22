<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세보기 화면 구현</title>
</head>
<body style="background: #FFEFBA;  /* fallback for old browsers */
background: -webkit-linear-gradient(to top, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to top, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
;background-repeat:no-repeat;">
	<%
		String id = request.getParameter("id");	
	
		// DB 연결
		memberDAO mDao = new memberDAO();
		
		// data input
		memberBean mBean = mDao.oneSelectMember(id);
	%>
	
	<h2 align="center" style="color:red">회원정보 상세보기</h2>
	<table align=center border="1" style="width:600; background:aliceblue;">
		<tr height="40" align="center">
			<td width="150"  style="background:pink;">아이디</td>
			<td width="350"> <%=mBean.getId() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">이 름</td>
			<td width="350"> <%=mBean.getName() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">전자우편</td>
			<td width="350"> <%=mBean.getEmail() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">전화번호</td>
			<td width="350"> <%=mBean.getTel() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">관심분야</td>
			<td width="350"><%=mBean.getHobby() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">직 업</td>
			<td width="350"> <%=mBean.getJob() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">연령대</td>
			<td width="350"> <%=mBean.getAge() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150" style="background:pink;">기타사항</td>
			<td width="350"> <%=mBean.getInfo() %></td>
		</tr>
	</table>
	<br>
	<div align="center">
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberUpdate.jsp?id=<%=mBean.getId() %>'"><b style="color:white">수정</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberDelete.jsp?id=<%=mBean.getId() %>'"><b style="color:white">삭제</b></button>	
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberList.jsp'"><b style="color:white">목록</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberJoinForm.jsp'"><b style="color:white">회원가입</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
	</div>
</body>
</html>
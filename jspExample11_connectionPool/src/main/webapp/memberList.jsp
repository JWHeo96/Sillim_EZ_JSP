<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.memberDAO" %>
<%@ page import="kr.co.ezen.memberBean" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 페이지</title>
</head>
<body style="background:black;">
	<%
		// 데이터베이스 연결 객체 생성
		memberDAO mDao = new memberDAO();
		// DATA Input
		Vector<memberBean> vec = mDao.selectMember();
		
		// 회원목록 페이지로 이동하기
		// response.sendRedirect("memberList.jsp");
		
	%>
	
	<h2 align="center" style="color:royalblue;">회원목록 데이터 출력</h2>
	<table align=center border="1" style="width:90%;">
		<tr height="40" align="center" style="background:pink;">
			<td width="80">아이디</td>
			<td width="100">이 름</td>
			<td width="150">이메일</td>
			<td width="150">전화번호</td>
			<td width="150">관심분야</td>
			<td width="120">직 업</td>
			<td width="40">연령</td>
			<td width="150">기타사항</td>
		</tr>
		<%
			for(int i=0; i < vec.size(); i++){
				memberBean mBean = vec.get(i);
		%>
		<tr height="30" align="center" style="background:aliceblue;">
			<td align="center"><a href="Main.jsp?center=memberDetail.jsp?id=<%=mBean.getId() %>" style="color:red; text-decoration:none;"><%=mBean.getId() %></a></td>
			<td align="center"><%=mBean.getName() %></td>
			<td align="center"><%=mBean.getEmail() %></td>
			<td align="center"><%=mBean.getTel() %></td>
			<td align="center"><%=mBean.getHobby() %></td>
			<td align="center"><%=mBean.getJob() %></td>
			<td align="center"><%=mBean.getAge() %></td>
			<td align="center"><%=mBean.getInfo() %></td>
		</tr>
		<%
			}
		%>
	</table>
	<br>
	<div align="center">
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
	</div>
</body>
</html>
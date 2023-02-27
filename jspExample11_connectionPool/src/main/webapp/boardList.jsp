<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardDAO" %>
<%@ page import="kr.co.ezen.boardBean" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 데이터 보기</title>
</head>
<body style="background:black;">
	<%
		// 데이터베이스 연결 객체 생성
		boardDAO bDao = new boardDAO();
		// DATA Input
		Vector<boardBean> vec = bDao.selectBoard();
		
		// 회원목록 페이지로 이동하기
		// response.sendRedirect("memberList.jsp");
		
	%>
	
	<h2 align="center" style="color:white;">게시판 목록 데이터 출력</h2>
	<table align="center" border="1" style="width:90%;">
		<tr height="40" align="center" style="background:#ffd700;">
			<td width="50">번호</td>
			<td width="300">제목</td>
			<td width="80">글쓴이</td>
			<td width="120">작성일자</td>
			<td width="70">조회수</td>
		</tr>
		<%
			for(int i=0; i < vec.size(); i++){
				boardBean bBean = vec.get(i);
		%>
		<tr height="30" style="background:aliceblue;">
			<td align="center"><%=i+1 %></td>
			<td width="300" align="left"><a href="Main.jsp?center=boardDetail.jsp?num=<%=bBean.getNum() %>" style="color:black; text-decoration:none;"><%if(bBean.getRe_step() > 1){
				for(int j=0; j<(bBean.getRe_step() -1) * 3;j++){
			%>&nbsp;<%}}%><%=bBean.getSubject()%></a></td>
			<td align="center"><%=bBean.getWriter() %></td>
			<td align="center"><%=bBean.getReg_date() %></td>
			<td align="center"><%=bBean.getReadCount() %></td>
		</tr>
		<%
			}
		%>
	</table>
	<br>
	<div align="center">
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardWriteForm.jsp'"><b style="color:white">글쓰기
		</b></button>&nbsp;
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberJoinForm.jsp'"><b style="color:white">회원가입
		</b></button>&nbsp;
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로
		</b></button>
	</div>
	<br>
</body>
</html>
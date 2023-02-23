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
	<table align=center border="1" style="width:90%;">
		<tr height="40" align="center" style="background:pink;">
			<td width="150">번호</td>
			<td width="150">제목</td>
			<td width="150">글쓴이</td>
			<td width="150">전자우편</td>
			<td width="150">작성일자</td>
			<td width="150">조회수</td>
			<td width="150">내용</td>
		</tr>
		<%
			for(int i=0; i < vec.size(); i++){
				boardBean bBean = vec.get(i);
		%>
		<tr height="30" align="center" style="background:aliceblue;">
			<td align="center"><a href="boardDetail.jsp?num=<%=bBean.getNum() %>" style="color:red; text-decoration:none;"><%=bBean.getNum() %></a></td>
			<td align="center"><%=bBean.getSubject() %></td>
			<td align="center"><%=bBean.getWriter() %></td>
			<td align="center"><%=bBean.getEmail() %></td>
			<td align="center"><%=bBean.getReg_date() %></td>
			<td align="center"><%=bBean.getReadCount() %></td>
			<td align="center"><%=bBean.getContent() %></td>
		</tr>
		<%
			}
		%>
	</table>
	<br>
	<div align="center">
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='boardWriteForm.jsp'"><b style="color:white">글쓰기
		</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='memberJoinForm.jsp'"><b style="color:white">회원가입
		</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로
		</b></button>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardBean" %>
<%@ page import="kr.co.ezen.boardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
</head>
<body style="background:black;">
	<%
		int num = Integer.parseInt(request.getParameter("num"));	
	
		// DB 연결
		boardDAO bDao = new boardDAO();
		
		// data input
		boardBean bBean = bDao.oneSelectMember(num);
	%>
	
	<h2 align="center" style="color:white">게시글 정보 상세보기</h2>
	<table align=center border="1" style="background:aliceblue;">
		<tr height="40" align="center">
			<td width="100" style="background:#ffd700;">번호</td>
			<td width="250"> <%=bBean.getNum() %></td>

			<td width="100" style="background:#ffd700;">조회수</td>
			<td width="250"> <%=bBean.getReadCount() %></td>
		</tr>
		<tr height="40" align="center">
			<td style="background:#ffd700;">작성자</td>
			<td> <%=bBean.getWriter() %></td>

			<td style="background:#ffd700;">이메일</td>
			<td> <%=bBean.getEmail() %></td>
		</tr>
		<tr height="40" align="center">
			<td style="background:#ffd700;">작성일자</td>
			<td> <%=bBean.getReg_date() %></td>

			<td style="background:#ffd700;">제목</td>
			<td><%=bBean.getSubject() %></td>
		</tr>
		<tr height="30" align="center">
			<td colspan="4" style="background:#ffd700;">내용</td>
		</tr>
		<tr height="300" align="center">
			<td colspan="4" style="background:aliceblue;"> <%=bBean.getContent() %></td>
		</tr>
	</table>
	<br>
	<div align="center">
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardRewriteForm.jsp?num=<%=bBean.getNum() %>&ref=<%=bBean.getRef() %>&re_step=<%=bBean.getRe_step()%>&re_level=<%=bBean.getRe_level() %>'"><b style="color:white">답글</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardUpdateForm.jsp?num=<%=bBean.getNum() %>'"><b style="color:white">수정</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardDeleteForm.jsp?num=<%=bBean.getNum() %>'"><b style="color:white">삭제</b></button>	
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardList.jsp'"><b style="color:white">목록</b></button>
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
	</div>
	<br>
</body>
</html>
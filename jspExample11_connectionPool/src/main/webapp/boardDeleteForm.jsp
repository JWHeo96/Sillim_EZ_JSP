<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제</title>
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));	
	
	// DB 연결
	boardDAO bDao = new boardDAO();
	
	// data input
	boardBean bBean = bDao.oneSelectMember(num);
%>
<body style="background:black;">
	<h2 align="center" style="color:white">게시글 삭제하기</h2>
	<form action="boardDeletePro.jsp" method="post">
		<table width="500" align=center border="1" style="background:aliceblue;">
			<tr height="40" align="center">
				<td style="background:#ffd700;">작성자</td>
				<td> <%=bBean.getWriter() %></td>
				
				<td style="background:#ffd700;">작성일자</td>
				<td> <%=bBean.getReg_date() %></td>
			</tr>
			<tr height="40" align="center">
				<td style="background:#ffd700;">제목</td>
				<td colspan="3"><%=bBean.getSubject() %></td>
			</tr>
			<tr height="30" align="center">
				<td style="background:#ffd700;">비밀번호</td>
				<td colspan="3">
					<input type="password" name="password" autofocus placeholder="비밀번호 입력" size="30"/>
				</td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="hidden" name="num" value="<%=bBean.getNum() %>" />
			<input type="hidden" name="ref" value="<%=bBean.getRef() %>" />
			<input type="hidden" name="re_level" value="<%=bBean.getRe_level() %>" />
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="submit"><b style="color:white">삭제</b></button>&nbsp;	
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardList.jsp'"><b style="color:white">목록</b></button>&nbsp;
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>
		</div>
		<br>
	</form>
</body>
</html>
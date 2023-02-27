<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body style="background:black;">
	<h2 align="center" style="color:white;">게시글 수정</h2>
	<%
		int num = Integer.parseInt(request.getParameter("num"));	
	
		// DB 연결
		boardDAO bDao = new boardDAO();
		
		// data input
		boardBean bBean = bDao.oneSelectMember(num);
	%>
	<form action="boardUpdatePro.jsp" method="post">		
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
				<td>
					<input type="email" name="email" size="30" value="<%=bBean.getEmail() %>" />
				</td>
			</tr>
			<tr height="40" align="center">
				<td style="background:#ffd700;">작성일자</td>
				<td> <%=bBean.getReg_date() %></td>
	
				<td style="background:#ffd700;">제목</td>
				<td>
					<input type="text" name="subject" size="30" value="<%=bBean.getSubject() %>" />
				</td>
			</tr>
			<tr height="40" align="center">
				<td style="background:#ffd700;">비밀번호</td>
				<td colspan="3">
					<input size="80" type="password" name="password" placeholder="비밀번호 입력"/>
				</td>
			</tr>
			<tr height="30" align="center">
				<td colspan="4" style="background:#ffd700;">내용</td>
			</tr>
			<tr height="300" align="center">
				<td colspan="4" style="background:aliceblue;">
					<textarea cols="90" rows="15" name="content" placeholder="내용 입력"></textarea>
				</td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="hidden" name="num" value="<%=bBean.getNum() %>" />
			<input type="submit" value="수정" style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;"/>&nbsp;
			<input type="reset" value="취소" style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;"/>&nbsp;
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardList.jsp'"><b style="color:white">목록</b></button>&nbsp;
			<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>		
		</div>
		<br>
	</form>
</body>
</body>
</html>
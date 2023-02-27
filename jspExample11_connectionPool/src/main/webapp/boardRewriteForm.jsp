<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.co.ezen.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 댓글 쓰기 입력 폼</title>
</head>
<body>
	<h2 style="color:white;">게시판 댓글 쓰기 입력 폼</h2>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		int ref = Integer.parseInt(request.getParameter("ref"));
		int re_step = Integer.parseInt(request.getParameter("re_step"));
		int re_level = Integer.parseInt(request.getParameter("re_level"));
		boardBean bBean = new boardBean();
	%>
	<form action="boardRewritePro.jsp" method="post">
		<table align=center border="1" style="background:aliceblue;" width="90%">
			<tr height="40" align="center">
				<td style="background:#ffd700;">주제</td>
				<td colspan="3">
					<input type="text" name="subject" placeholder="[Reply]: >" size="75" autofocus/>
				</td>
			</tr>
			<tr height="40" align="center">
				<td style="background:#ffd700;">작성자</td>
				<td>
					<input type="text" name="writer" size="75" />
				</td>
			</tr>
			<tr height="40" align="center">			
				<td style="background:#ffd700;">이메일</td>
				<td>
					<input type="email" name="email" size="75" />
				</td>
			</tr>
			<tr height="40" align="center">			
				<td style="background:#ffd700;">비밀번호</td>
				<td>
					<input type="password" name="password" size="75" />
				</td>
			</tr>
			<tr height="30" align="center">
				<td colspan="4" style="background:#ffd700;">내용</td>
			</tr>
			<tr height="250" align="center">
				<td colspan="4" style="background:aliceblue;">
					<textarea cols="84" rows="13" name="content"></textarea>
				</td>
			</tr>
		</table>
		<br>
		<input type="hidden" name="ref" value="<%=ref %>" />
		<input type="hidden" name="re_step" value="<%=re_step %>" />
		<input type="hidden" name="re_level" value="<%=re_level %>" />
		<input type="submit" value="댓글 쓰기" style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;"/>&nbsp;
		<input type="reset" value="댓글 취소" style="color:white; background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;"/>&nbsp;
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp?center=boardList.jsp'"><b style="color:white">목록</b></button>&nbsp;
		<button style="background:black ;border-color:white ;border-radius:100px ;width:90px; height:30px;" type="button" onclick="location.href='Main.jsp'"><b style="color:white">홈으로</b></button>		
	</form>
	<br>
</body>
</html>
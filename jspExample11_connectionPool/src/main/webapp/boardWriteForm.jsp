<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 쓰기</title>
</head>
<style>
	body {
		background-color:black;
	}
</style>
<body>
	<h2 align="center" style="color:white">게시판 글 쓰기</h2>
		<form action="boardWritePro.jsp" method="post" align="center">
			<table border="1" align="center" width="600" bgcolor="aliceblue">
				<tr height="40">
					<td align="center" width="200" align="center">작성자</td>
					<td align="center" width="500" align="center">
						<input type="text" name="writer" size="60" required="required" autofocus placeholder="이름 입력" />
					</td>
				</tr>
				<tr height="40">
					<td align="center" width="200">글제목</td>
					<td align="center" width="500">
						<input type="text" name="subject" size="60" required="required" autofocus placeholder="제목 입력" />
					</td>
				</tr>
				<tr height="40">
					<td align="center" width="200">전자우편</td>
					<td align="center" width="500">
						<input type="email" name="email" size="60" required="required" autofocus placeholder="이메일 입력" />
					</td>
				</tr>
				<tr height="40">
					<td align="center" width="200">비밀번호</td>
					<td align="center" width="500">
						<input type="password" name="password" size="60" autofocus required="required" placeholder="비밀번호 입력" />
					</td>
				</tr>
				<tr height="180">
					<td align="center" width="200">글내용</td>
					<td align="center" width="500">
						<textarea name="content" cols="62" rows="10" required="required" ></textarea>
					</td>
				</tr>
			</table><br>
			<input type="submit" value="글쓰기" />&nbsp;&nbsp;&nbsp;
			<input type="reset" value="재작성" />&nbsp;&nbsp;&nbsp;
			<button onclick="location.href='boardList.jsp'">글목록보기</button>
		</form>
</body>
</html>
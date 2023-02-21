<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2 align="center">Session Login</h2>
	<form method="post" action="">
		<table border="1" align="center">
			<tr style="height:40px">
				<td>아이디</td>
				<td><input style="height:30px;" type="text" name="id" autofocus placeholder="아이디 입력" size="25"></td>
			</tr>
			<tr style="height:40px">
				<td>비밀번호</td>
				<td><input style="height:30px;" type="password" name="pass1" placeholder="비밀번호 입력" size="25"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
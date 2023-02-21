<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<style>

</style>
<body>
	<h2 align="center">회원 가입</h2>
	<form method="post" action="">
	<table align="center" border="1" cellpadding="5" cellspacing="5">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" size="55" autofocus placeholder="id를 입력해 주세요." required></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pass1" size="55" placeholder="영문자와 숫자, 특수문자를 8자리이상 15자리 이하로" required></td>
		</tr>
		<tr>
			<td>패스워드확인</td>
			<td><input type="password" name="pass1" size="55" placeholder="위의 패스워드와 같은 내용으로 입력해 주세요." required></td>
		</tr>	
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" size="55" placeholder="hong@hong.co.kr[예시]" required></td>
		</tr>	
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="tel" size="55" required></td>
		</tr>
		<tr>
			<td align="center">당신의 관심분야</td>
			<td align="center">
				<input type="checkbox" name="hobby">캠핑
				<input type="checkbox" name="hobby">등산
				<input type="checkbox" name="hobby">영화
				<input type="checkbox" name="hobby">독서
			</td>	
		</tr>	
		<tr>
			<td>당신의 직업은</td>
			<td align="center">
				<select name="job">
					<option value="교사">교사</option>
					<option value="간호사">간호사</option>
					<option value="의사">의사</option>
					<option value="검사">검사</option>
				</select>
			</td>
		</tr>	
		<tr>
			<td>당신의 연령은</td>
			<td align="center">
				<input type="radio" name="age">10대
				<input type="radio" name="age">20대
				<input type="radio" name="age">30대
				<input type="radio" name="age">55대
				<input type="radio" name="age">50대
				<input type="radio" name="age">60대
			</td>	
		</tr>		
		<tr>
			<td>하고싶은말</td>
			<td><input type="text" name="info" size="50" style="width:98%; height:100px"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="회원가입"> &nbsp;
				<input type="reset" value="취소">
			</td>
		</tr>					
	</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body align="center">
	<h2>회원가입 페이지</h2>
	<form action="memberJoinPro.jsp" method="post">
		<table border="1" width="600" align="center">
			<tr height="40" align="center">
				<td align="center" width="150">아이디</td>
				<td width="250">
					<input type="text" name="id" size="70" autofocus placeholder="ID를 입력해주세요.">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center" width="150">비밀번호</td>
				<td width="250">
					<input type="password" name="pass1" size="70" placeholder="영문자와 숫자, 특수문자를 8자리이상 15자리 이하로">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center" width="150">비밀번호 확인</td>
				<td width="250">
					<input type="password" name="pass2" size="70" placeholder="위의 비밀번호와 같은 내용으로 입력해 주세요.">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center" width="150">이름</td>
				<td width="250">
					<input type="text" name="name" size="70" placeholder="이름 입력">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center" width="150">전자우편</td>
				<td width="250">
					<input type="email" name="email" size="70" placeholder="hong@hong.co.kr[예시]">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center" width="150">전화번호</td>
				<td width="250">
					<input type="text" name="tel" size="70" placeholder="010-1234-5678[예시]">
				</td>
			</tr>
			
			<tr height="40" align="center">
				<td align="center">관심분야</td>
				<td align="center">
					<input type="checkbox" name="hobby" value="등산" />캠핑
					<input type="checkbox" name="hobby" value="영화" />영화
					<input type="checkbox" name="hobby" value="게임" />게임
					<input type="checkbox" name="hobby" value="주식" />주식
					<input type="checkbox" name="hobby" value="부동산" />부동산
					<input type="checkbox" name="hobby" value="인공지능" />인공지능
				</td>	
			</tr>	
			
			<tr height="40" align="center">
				<td>직업</td>
				<td align="center">
					<select name="job">
						<option value="교수">교수</option>
						<option value="공무원">공무원</option>
						<option value="프로그래머">프로그래머</option>
						<option value="디자이너">디자이너</option>
						<option value="운동선수">운동선수</option>
						<option value="강사">강사</option>
					</select>
				</td>
			</tr>	
			
			<tr height="40" align="center">
				<td>연령대</td>
				<td align="center">
					<input type="radio" name="age" value="10">10대
					<input type="radio" name="age" value="20">20대
					<input type="radio" name="age" value="30">30대
					<input type="radio" name="age" value="40">40대
					<input type="radio" name="age" value="50">50대
					<input type="radio" name="age" value="60">60대
				</td>	
			</tr>		
			
			<tr height="40" align="center">
				<td>하고싶은말</td>
				<td><textarea name="info" cols="60" rows="5" style="width:98%"></textarea></td>
			</tr>
			
			<tr height="40" align="center">
				<td colspan="2" align="center">
					<input type="submit" value="회원가입" /> &nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
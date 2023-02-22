<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>낭만 캠핑</title>
</head>
<style>
	div {
		position: relative;
	}
	a {
		padding: 20px;
		margin: 30px;
	}
</style>
<body>
	<div align="right">
		<b style="font-size:15px; color:blue;"><%=session.getAttribute("id") %> 님</b><br>
		유효 시간 : <%=session.getMaxInactiveInterval()/60 %>분<br>
		<button onclick="location.href='logout.jsp'">로그아웃</button>
	</div>
	<div>
		<a href="Main.jsp"><img src="./img/campingmap.jpg"></a>
		<h2 align="center">낭만 캠핑</h2>
	</div>
	<div align="center">
		<a href ="" style="color:blue; text-decoration:none;"><b>텐트</b></a>
		<a href ="" style="color:blue; text-decoration:none;"><b>의자</b></a>
		<a href ="" style="color:blue; text-decoration:none;"><b>식기류</b></a>
		<a href ="" style="color:blue; text-decoration:none;"><b>테이블</b></a>
		<a href ="" style="color:blue; text-decoration:none;"><b>화롯대</b></a>
	</div>
	<br><br>
	<div align="center">
		<table border="1">
			<tr>
				<td align="center" style="width:200px; color:red; height:75px;"><a href="">스노우 파크</a></td>
				<td rowspan="4" style="width:500px;"><img src="./img/camping.png" style="width:500px; height:300px;"></td>
			</tr>
			<tr>
				<td align="center" style="width:200px; color:red; height:75px;"><a href="">콜맨</a></td>
			</tr>
			<tr>
				<td align="center" style="width:200px; color:red; height:75px;"><a href="">지프</a></td>
			</tr>
			<tr>
				<td align="center" style="width:200px; color:red; height:75px;"><a href="">코베이</a></td>
			</tr>
			<tr>
				<td align="center" colspan="2" style="font-size:13px">
				이용약관 이메일 무단수집거부 개인정보 취급(처리)방침 윤리경영 보안신고 Contact Us 사업장 소개 사이트맵<br>
				웹접근성 도움말<br>
				배드민턴단 COPYRIGHT@2015 SAMSUNG ELECTRO-MECHANICS, All rights reserved.
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등급 처리 입력</title>
</head>
<style>
	hr {
		color: blue;
		border: thick blue solid;
	}
	input {
		background-color: yellow;
	}
</style>
<body>
	<h2 align="center">회원 등급 처리 출력</h2>
	<hr>
	<form method="post" action="gradePro.jsp">
	<label>
		포인트 점수:
		<input type="text" name="score" size="24" placeholder="숫자형식으로 입력하세요" required><br>
	</label>
	<label>
		고객 이름:
		<input type="text" name="name" size="24" placeholder="문자열형식으로 입력하세요" required><br>
	</label>
	<label>
		가입 년도:
		<input type="text" name="year" size="24" placeholder="문자열형식으로 입력하세요" required><br>
	</label>
	<label>
		전송 버튼:
		<input type="submit" value="포인트 점수 전송">
	</label>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	hr {
		color: red;
		border: thick solid royalblue;
	}
	h3 {
		color: purple;
	}
	input {
		background-color: pink;
	}
	.div1 {
		width: 300px;
		background-color: red;
	}
	.div2 {
		width: 300px;
		background-color: blue;
	}
	.div3 {
		width: 300px;
		background-color: green;
	}
	.div4 {
		width: 300px;
		background-color: black;
	}
</style>
<body>
<h3 align="center">
<hr>
<form action="sample7_pointScorePro.jsp" method="post">
<label>
<div class="div1">
포인트 점수 : <input type="text" name="point" size="24" placeholder="숫자형식으로 입력하세요" required><br><br>
</div>
<div class="div2">
고객 이름 : <input type="text" name="name" size="24" placeholder="문자열형식으로 입력하세요" required><br><br>
</div>
<div class="div3">
가입 년도 : <input type="text" name="date" size="24" placeholder="날짜형식으로 입력하세요" required><br><br>
</div>
<div class="div4">
전송 버튼 :&nbsp; <input type="submit" value="포인트점수전송">
</div>
</label>
</form>
	
</body>
</html>
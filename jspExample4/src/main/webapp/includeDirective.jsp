<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include디렉티브 연습</title>
</head>
<style>
	.btn {
		color: red;
		font-size: 50px;
		background-color: yellow;
		border-radius: 20px;
		border: solid purple 20px;
	}
	.div2 {
		color: blue;
	}
	.div3 {
		color: pink;
	}
</style>
<body>
	<h2>include디렉티브 연습</h2>
	<div class="div2">
	<%@ include file="top.jsp" %>
	</div>
	포함하는 페이지 includeDirective.jsp의 내용입니다.
	<div class="div3">
	<%@ include file="bottom.jsp" %>
		</div>
	<br> <button class="btn">환영합니다!!!</button>
</body>
</html>
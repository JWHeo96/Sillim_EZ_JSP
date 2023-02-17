<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1~100사이의 합계 구하기 : 5050</title>
</head>
<style>
	div {
		color: red;
	}
</style>
<body>
	1부터 100까지의 합계는 
	<div>
	<% int sum = 0;
		for(int i=1; i<=100; i++) {
			sum +=i;
		}
		out.println(sum);
	%>
	</div>
	입니다.
</body>
</html>
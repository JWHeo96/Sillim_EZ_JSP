<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_1</title>
</head>
<style>
	body{
		background: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%); 
		width: 100%; 
		height: 450px;
		background-repeat: no-repeat;
		background-color:red;
	}
</style>
<body>
	<form action="forward_2.jsp" method=get">
	다운로드 페이지에 오신 것을 환영 합니다. <br>
	원하는 프로그램을 선택하세요.<p>
	
	<select name="download">
		<option selected value="1"> JDK </option>
		<option value="2"> 톰캣 </option>
		<option value="3"> EditPlus </option>
	</select>
	<input type="submit" value="이동">
	</form>
</body>
</html>
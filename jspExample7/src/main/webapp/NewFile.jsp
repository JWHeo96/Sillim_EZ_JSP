<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="NewFile.html"> 
	<div style="border:3px solid blue; padding:10px;">
	<h2 align="center">***** 고객정보 입력하기 *****</h2>
	</div>
	
	<h3 align="center">
	이름 <input type="text" name="name"><br>
	나이 <input type="text" name="age"><br><br>
	<input type="submit" value="고객등록">
	<br><br><br>
	</h3>
	</form>



	<form action="NewFile.html">
	<div style="border:3px solid blue; padding:10px;">
	<h2 align="center">***** 고객정보 삭제하기 *****</h2>
	</div>
	
	<h3 align="center">
	번호 <input type="text" name="number"><br><br>
	<input type="submit" value="고객삭제">
	<br><br><br>
	</h3>
	</form>



	<form action="NewFile.html">
	<div style="border:3px solid blue; padding:10px;">
	<h2 align="center">***** 고객정보 출력하기 *****</h2>
	</div><br><br>
	</form>
	
	<jsp:include page="NewFile.html" />
</body>
</html>
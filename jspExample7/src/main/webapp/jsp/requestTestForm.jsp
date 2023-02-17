<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 입력</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<form method="post" action="requestTestPro.jsp">
		학번:
		<input type="text" name="num" placeholder="숫자 입력" required><br />
		이름:
		<input type="text" name="name" placeholder="문자열 입력" required><br />
		<label>
			<input type="radio" name="grade" value="1" checked>1학년&nbsp;
			<input type="radio" name="grade" value="2" >2학년&nbsp;
			<input type="radio" name="grade" value="3" >3학년&nbsp;
			<input type="radio" name="grade" value="4" >4학년
		</label><br />
		선택과목:
		<select name="subject">
			<option value="JAVA">JAVA</option>
			<option value="JSP">JSP</option>
			<option value="XML">XML</option>
		</select>	
		<input type="submit" value="입력완료">
	</form>
</body>
</html>
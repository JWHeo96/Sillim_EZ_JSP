<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 전화번호 출력</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		String localNum ="";
		if(local.equals("서울")){
			localNum = "02";
			out.println(name + "님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		} else if(local.equals("경기")){
			localNum = "031";
			out.println(name + "님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		} else if(local.equals("강원")){
			localNum = "033";
			out.println(name + "님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		}
	%>
	<a href="elseIfTestForm.jsp"><button>홈으로</button></a>
</body>
</html>
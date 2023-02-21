<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int score = Integer.parseInt(request.getParameter("score"));
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		
		if(score > 30000){
			out.println(name + "님은 VVIP 등급이고, 가입년도는 " + year + "입니다.");
		} else if(score > 8000 ){
			out.println(name + "님은 VIP 등급이고, 가입년도는 " + year + "입니다.");
		} else if(score > 5000){
			out.println(name + "님은 골드 등급이고, 가입년도는 " + year + "입니다.");
		} else if(score > 3000){
			out.println(name + "님은 베스트 등급이고, 가입년도는 " + year + "입니다.");
		} else if(score > 1000){
			out.println(name + "님은 실버 등급이고, 가입년도는 " + year + "입니다.");
		} else {
			out.println(name + "님은 일반 등급이고, 가입년도는 " + year + "입니다.");
		}
	%>
	<a href="gradeForm.jsp"><button>홈으로</button></a>
</body>
</html>
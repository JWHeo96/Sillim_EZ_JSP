<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%		
	 	request.setCharacterEncoding("UTF-8");
		int pointScore = Integer.parseInt(request.getParameter("point"));
		String name = request.getParameter("name");
		String year = request.getParameter("date");
		
		if(pointScore>0 && pointScore<=1000)
		out.println(name + "님은 일반 등급이고, 가입년도는 " + year + "입니다.");
		else if(pointScore>1001 && pointScore<=3000)
		out.println(name + "님은 실버 등급이고, 가입년도는 " + year + "입니다.");
		else if(pointScore>3001 && pointScore<=5000)
		out.println(name + "님은 베스트 등급이고, 가입년도는 " + year + "입니다.");
		else if(pointScore>5001 && pointScore<=8000)
		out.println(name + "님은 골드 등급이고, 가입년도는 " + year + "입니다.");
		else if(pointScore>8001 && pointScore<=30000)
		out.println(name + "님은 VIP 등급이고, 가입년도는 " + year + "입니다.");
		else if(pointScore>=30001)
		out.println(name + "님은 VVIP 등급이고, 가입년도는 " + year + "입니다.");

	%>
	<p>
	<a href="sample7_pointScoreTest.jsp"><button>홈으로</button></a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름과 전화번호 출력</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		String localNum = "";
	
		if(local.equals("서울")){
			localNum ="02";
			out.println("<b>" + name + "</b> 님의 전화번호는 " + localNum + "-" + tel + "입니다");
		} else if (local.equals("경기")){ //local변수의 값이 경기일경우
			localNum = "031";
			out.println("<b>"+ name + " </b> 님의 전화번호는 " + localNum +
			"-" + tel + " 입니다");
		}else if (local.equals("강원")){ //local변수의 값이 강원일경우
			localNum = "033";
			out.println("<b>"+ name + " </b> 님의 전화번호는 " + localNum +
			"-" + tel + " 입니다");
		}
	
	
	%>
	
	<p>
	<a href="ifMultiTestForm.jsp"><button>홈으로</button></a>
</body>
</html>
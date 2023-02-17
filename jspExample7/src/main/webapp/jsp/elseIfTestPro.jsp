<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등급 출력</title>
</head>
<style>
	button {
		color: red;
		background-color: yellow;
		border: solid 2px blue;
		border-radius: 15px;
	}
	.div1 {
		color: #ffd700;
	}
	.div2 {
		color: #c0c0c0;
	}
	.div3 {
		color: #624637;
	}
</style>
<body>
	<%
		String name = request.getParameter("name");
		int intScore = Integer.parseInt(request.getParameter("score"));
		
		if (intScore > 10){
			out.println("<div class=\"div1\">");
			out.println(name + " 회원님의 등급은 골드입니다.");
			out.println("</div>");
			}else if (intScore > 5){
				out.println("<div class=\"div2\">");
			out.println(name + " 회원님의 등급은 실버입니다.");
			out.println("</div>");
			}else {
				out.println("<div class=\"div3\">");
			out.println(name + " 회원님의 등급은 일반입니다.");
			out.println("</div>");
			}
	%>
	
		<%--
		String name = request.getParameter("name");
		int intScore = Integer.parseInt(request.getParameter("score"));
		
		switch(intScore){
		case 10: {
			out.println("<div class=\"div1\">");
			out.println(name + " 회원님의 등급은 골드입니다.");
			out.println("</div>");
			break;
			}
		case 5: {
				out.println("<div class=\"div2\">");
			out.println(name + " 회원님의 등급은 실버입니다.");
			out.println("</div>");
			break;
			}
		case 3: {
				out.println("<div class=\"div3\">");
			out.println(name + " 회원님의 등급은 일반입니다.");
			out.println("</div>");
			break;
			}
		}
	--%>
	<p>
	<a href="elseIfTestForm.jsp"><button>홈으로</button></a>
</body>
</html>
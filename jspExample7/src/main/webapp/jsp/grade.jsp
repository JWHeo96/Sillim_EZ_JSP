<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 : grade.jsp</title>
</head>
<body>
	<h2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</h2>
	<% request.setCharacterEncoding("UTF-8"); %>
	<!-- 			object			package.className 			-->
	<jsp:useBean id="score" class="sungjuk.gradeBean" scope="page" />
	
	<hr>
	<h3>폼에서 전달받은 이름과 성적을 JavaBeans gradeBean에 저장</h3><p>
	
	<!-- String name = request.getParameter("name");
		score.setName(name); -->
	
	이름: <%=request.getParameter("name") %><p>
	국어: <%=request.getParameter("kor") %><p>
	영어: <%=request.getParameter("eng") %><p>
	수학: <%=request.getParameter("math") %><p>
	
	<jsp:setProperty name="score" property="name" param="name" />
	<jsp:setProperty name="score" property="kor" param="kor" />
	<jsp:setProperty name="score" property="eng" param="eng" />
	<jsp:setProperty name="score" property="math" param="math" />
		
	<hr>
	<h3>JavaBeans gradeBean에 저장된 정보를 조회 출력</h3><p>
	이름: <jsp:getProperty name="score" property="name" /><br>
	국어: <jsp:getProperty name="score" property="kor" /><br>
	영어: <jsp:getProperty name="score" property="eng" /><br>
	수학: <jsp:getProperty name="score" property="math" /><br>
	총점: <jsp:getProperty name="score" property="total" /><br>
	평균: <jsp:getProperty name="score" property="aver" /><br>
	등급: <jsp:getProperty name="score" property="grade" /><br>
</body>
</html>
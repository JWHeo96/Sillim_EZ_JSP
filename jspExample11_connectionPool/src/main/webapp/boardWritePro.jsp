<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardBean" %>
<%@ page import="kr.co.ezen.boardDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 처리하기</title>
</head>
<body>
	<jsp:useBean id="bBean" class="kr.co.ezen.boardBean">
		<jsp:setProperty property="*" name="bBean" />
	</jsp:useBean>
	<%
		boardDAO bDao = new boardDAO();
		bDao.insertBoard(bBean);
		
		response.sendRedirect("boardList.jsp");
	%>
</body>
</html>
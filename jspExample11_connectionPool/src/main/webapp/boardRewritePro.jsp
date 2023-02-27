<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 처리 구현</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>	
		<jsp:useBean id="bBean" class="kr.co.ezen.boardBean" >
			<jsp:setProperty property="*" name="bBean" />
		</jsp:useBean>
	<%
		boardDAO bDao = new boardDAO();
		bDao.rewriteBoard(bBean);
		
		response.sendRedirect("Main.jsp?center=boardList.jsp");
	%>
</body>
</html>
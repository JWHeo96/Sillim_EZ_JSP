<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDeletePro</title>
</head>
<body>
	<jsp:useBean id="mBean" class="kr.co.ezen.memberBean">
		<jsp:setProperty property="*" name="mBean" />
	</jsp:useBean>
		<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("pass1");	
		
		// 데이터베이스 연결 객체 생성
		memberDAO mDao = new memberDAO();
		
		// data select
		String pass = mDao.getPassword(id);
		
		if(pass.equals(password)){
	
			session.setAttribute("id", id);
			session.setAttribute("password", password);
			session.setMaxInactiveInterval(60 * 20);
	%>
		<script type="text/javascript">
			var strid = "<%=session.getAttribute("id") %>";
			alert(strid + '님 환영합니다!!!');
			location.href="Main.jsp";
		</script>
	<%
		} else {
	%>
		<script type="text/javascript">
			alert("비밀번호가 맞지 않습니다. 다시 확인 바랍니다.!!!")
			history.back();
		</script>
	<%		
		}
	%>
	
</body>
</html>
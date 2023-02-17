<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="BeansTest.logonDBBean"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 로그인 처리</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		logonDBBean logon = logonDBBean.getInstance(); // 데이터베이스 연동
		
		// 1: 참, -1: 아이디가 존재하지 않는 상태, 0: 비밀번호 체크
		int check= logon.userCheck(id,passwd);
		
		if(check==1){
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(20*60);
			response.addCookie(cookie);
			response.sendRedirect("cookieMain.jsp");
		} else if(check==0){%>
		<script>
			alert("비밀번호가 맞지 않습니다.");
			history.go(-1); // 이전 페이지로 이동하기
		</script>
			<%}else{ %>
		<script>
			alert("아이디가 맞지 않습니다..");
			history.go(-1);
		</script>
	<%}%>

</body>
</html>
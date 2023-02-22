<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdatePro</title>
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
			mDao.updateMember(mBean);
			
			response.sendRedirect("memberList.jsp");
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
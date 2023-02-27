<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 처리 구현</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String password = request.getParameter("password");
	%>	
		<jsp:useBean id="bBean" class="kr.co.ezen.boardBean" >
			<jsp:setProperty property="*" name="bBean" />
		</jsp:useBean>
	<%
		boardDAO bDAO = new boardDAO();
		// data select
		String pass = bDAO.getPassword(num);
		
		if(pass.equals(password)){
	
			boardDAO bDao = new boardDAO();
			bDao.updateBoard(bBean);
	%>
		<script type="text/javascript">
			alert('수정 완료!!!');
			location.href= "Main.jsp?center=boardDetail.jsp?num=<%=bBean.getNum()%>";
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
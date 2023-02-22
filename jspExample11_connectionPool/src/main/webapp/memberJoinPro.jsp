<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="login.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.co.ezen.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 - memberJoinPro</title>
</head>
<body style="background: #FFEFBA;  /* fallback for old browsers */
background: -webkit-linear-gradient(to top, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to top, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
;background-repeat:no-repeat;">
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");	// ${param.id}
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
	%>
	<jsp:useBean id="mBean" class="kr.co.ezen.memberBean">
		<jsp:setProperty property="*" name="mBean"/>
	</jsp:useBean>
	
	<% 
		String hobby[] = request.getParameterValues("hobby");
		String texthobby = "";
		for(int i=0; i<hobby.length; i++){
			texthobby += hobby[i] ;
		}
		mBean.setHobby(texthobby);
		
		// 데이터베이스 연결 객체 생성
		memberDAO mDao = new memberDAO();
		// DATA Input
		mDao.insertMember(mBean);
		
		// 회원목록 페이지로 이동하기
		response.sendRedirect("memberList.jsp");
	%>
	
	
	<h2 align="center">회원 정보 보기</h2>
	<table align=center border="1" style="width:600;">
		<tr height="40" align="center">
			<td width="150">아이디</td>
			<td width="350"> <%=mBean.getId() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">이 름</td>
			<td width="350"> <%=mBean.getName() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">전자우편</td>
			<td width="350"> <%=mBean.getEmail() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">전화번호</td>
			<td width="350"> <%=mBean.getTel() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">관심분야</td>
			<td width="350"> 
			<%
			for(int i=0; i< hobby.length; i++){
				out.write(hobby[i]);
			}
			%></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">직 업</td>
			<td width="350"> <%=mBean.getJob() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">연령대</td>
			<td width="350"> <%=mBean.getAge() %></td>
		</tr>
		<tr height="40" align="center">
			<td width="150">기타사항</td>
			<td width="350"> <%=mBean.getInfo() %></td>
		</tr>
		<tr>
			<td colspan="9" align="center">
				<button type="button" onclick="location.href='memberJoinForm.jsp'">회원가입 페이지 이동</button>
			</td>
		</tr>
	</table>
	
</body>
</html>
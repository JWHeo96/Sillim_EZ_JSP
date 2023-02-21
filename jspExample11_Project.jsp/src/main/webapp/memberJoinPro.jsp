<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 - memberJoinPro</title>
</head>
<body>
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
		
		String dbId ="heo";
		String dbPass = "1234";
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbDriver = "oracle.jdbc.OracleDriver";
		
		try {
			Class.forName(dbDriver);
			Connection conn = DriverManager.getConnection(dbUrl,dbId,dbPass);
			
			String sql = "insert into campingmember values(?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,mBean.getId());
				pstmt.setString(2,mBean.getPass1());
				pstmt.setString(3,mBean.getPass2());
				pstmt.setString(4,mBean.getName());
				pstmt.setString(5,mBean.getEmail());
				pstmt.setString(6,mBean.getTel());
				pstmt.setString(7,mBean.getHobby());
				pstmt.setString(8,mBean.getJob());
				pstmt.setString(9,mBean.getAge());
				pstmt.setString(10,mBean.getInfo());
			pstmt.executeUpdate();
		} catch (Exception e){
			e.printStackTrace();
		} 
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
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 보기</title>
</head>
<body>
	<h2 align="center">회원 정보 보기</h2>
	<table border="1" align="center">
		<tr>
			<td align="center">아이디</td>
			<td align="center">이메일</td>
			<td align="center">전화번호</td>
			<td align="center">취미</td>
			<td align="center">직업</td>
			<td align="center">연령</td>
			<td align="center">하고 싶은 말</td>
		</tr>
	<%
		String dbId = "heo";
		String dbPwd = "1234";
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbDriver = "oracle.jdbc.OracleDriver";
		
		try {
			Class.forName(dbDriver);
			
			Connection conn = DriverManager.getConnection(dbUrl, dbId, dbPwd);
			
			String sql = "select id, email, tel, hobby, job, age, info from campingmember";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			int i = 0;
			while(rs.next()){
				String id = rs.getString(1);
				String email = rs.getString(2);
				String tel = rs.getString(3);
				String hobby = rs.getString(4);
				String job = rs.getString(5);
				String age = rs.getString(6);
				String info = rs.getString(7);			
	%>			
				<tr>
					<td align="center"><a href="memberViewPro.jsp"><%=id %></a></td>
					<td align="center"><%=email %></td>
					<td align="center"><%=tel %></td>
					<td align="center"><%=hobby %></td>
					<td align="center"><%=job %></td>
					<td align="center"><%=age %></td>
					<td align="center"><%=info %></td>
				</tr>
	<%		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>	
				</table>
</body>
</html>
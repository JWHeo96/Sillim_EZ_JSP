<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id"); // Session 영역에 저장되어 있는 ID값을 불러옵니다.
		
		if(id == null) { // 로그인이 안되어 있으면
			id = "GUEST"; 
		}
	%>
	<table width="1000" border="1" bordercolor="green">
		<tr height="100">
			<td colspan="2" align="center">
				<img src="./img/ezen.jpg"  alt="" height="60" onclick="location.href='Main.jsp'" />
			</td>
			<td colspan="4" align="center">
				<font size="18px" color="white">이젠 낭만 캠프</font>
			</td>
			<td align="center" width="200" rowspan="2">
				<b style="color:white;"><%=id %>님 반갑습니다.</b>

			<%
				if(id.equals("GUEST")){
			%>
				<button onclick="location.href='Main.jsp?center=login.jsp'">로그인</button>
			<%
				} else {
			%>
				<button onclick="location.href='Main.jsp?center=logout.jsp'">로그아웃</button>
			<%
				}
			%>
			</td>
		</tr>	
	<!--  header상 위의 메뉴 선택하기 -->
		<tr height="50px">
			<td>
				<font size="4" color="white">
					<a href="Main.jsp?center=tent.jsp" style="color:white; text-decoration:none;">텐트</a>
				</font>
			</td>
			<td>
				<font size="4" color="white">
					<a href="Main.jsp?center=sleep.jsp" style="color:white; text-decoration:none;">침낭</a>
				</font>
			</td>
			<td>
				<font size="4" color="white">
					<a href="Main.jsp?center=chair.jsp" style="color:white; text-decoration:none;">의자</a>
				</font>
			</td>
			<td>
				<font size="4" color="white">
					<a href="Main.jsp?center=table.jsp" style="color:white; text-decoration:none;">테이블</a>
				</font>
			</td>
			<td>
				<font size="4" color="white">
					<a href="Main.jsp?center=burner.jsp" style="color:white; text-decoration:none;">버너</a>
				</font>
			</td>
		</tr>	
	</table>
</body>
</html>
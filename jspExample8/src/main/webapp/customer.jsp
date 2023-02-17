<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@	page import="kr.co.ezen.custVO"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객관리시스템 개발 V1.0</title>
</head>
<style>
	div {
		text-align: center;
	}
</style>
<body>
	<div>
		<h2 style="border:3px solid blue; padding:5px;">***** 고객 정보 입력 *****</h2><br>
		<form action="customer.jsp" method="post">
			이름&nbsp;<input type="text" name="cust_name" placeholder="이름 입력" required="required"><br>
			나이&nbsp;<input type="text" name="cust_age" placeholder="나이 입력" required="required"><br>
			<br><input type="submit" value="등록버튼">
		</form>
		<jsp:useBean id="cvo" class="kr.co.ezen.custVO" />
		<jsp:useBean id="dao" class="kr.co.ezen.custDAO" />
		
		<jsp:setProperty property="cust_name" name="cvo"/>
		<jsp:setProperty property="cust_age" name="cvo"/>
		
		<% dao.setInsert(cvo); %>
	</div>
	
		<div>
		<h2 style="border:3px solid blue; padding:5px;">***** 고객 정보 수정 *****</h2><br>
		<form action="customer.jsp" method="post">
			번호&nbsp;<input type="text" name="cust_num2" placeholder="번호 입력" required="required"><br>
			이름&nbsp;<input type="text" name="cust_name2" placeholder="이름 입력" required="required"><br>
			나이&nbsp;<input type="text" name="cust_age2" placeholder="나이 입력" required="required"><br>		
			<br><input type="submit" value="수정버튼">	
			
			<jsp:setProperty property="cust_num2" name="cvo"/>
			<jsp:setProperty property="cust_name2" name="cvo"/>
			<jsp:setProperty property="cust_age2" name="cvo"/>
		</form>
		<% dao.updateCust(cvo); %>
	</div>
	
	<div>
		<h2 style="border:3px solid blue; padding:5px;">***** 고객 정보 삭제 *****</h2><br>
		<form action="customer.jsp" method="post">
			번호&nbsp;<input type="text" name="cust_num" placeholder="번호 입력" required="required"><br>
			<br><input type="submit" value="삭제버튼">	
		<jsp:setProperty property="cust_num" name="cvo"/>
		</form>
		<% dao.deleteCust(cvo); %>
	</div>
	
	<div>
		<h2 style="border:3px solid blue; padding:5px;">***** 고객 정보 출력 *****</h2><br>
		<table border="1" width="250" align="center">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>				
			</tr>
			<%
				ArrayList<custVO> custArr = new ArrayList<custVO>();
				custArr = dao.selectALL();
				
				for(int i=0; i<custArr.size(); i++){
			%>
			<tr>
				<td><%=custArr.get(i).getCust_num() %></td>
				<td><%=custArr.get(i).getCust_name() %></td>
				<td><%=custArr.get(i).getCust_age() %></td>
			</tr>
			<% 
				}
			%>		
		
		</table>
	</div>
</body>
</html>
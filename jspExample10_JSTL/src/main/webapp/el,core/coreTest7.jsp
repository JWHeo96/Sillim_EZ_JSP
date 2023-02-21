<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점심 메뉴 출력</title>
</head>
	<c:set var="result" value="${varData }"/>
<body align="center">
	<!-- 점심 메뉴를 출력하세요.
	메뉴: 불고기 백반, 오므라이스, 냉면, 콩국수, 된장찌게, 김치찌게, 짜장면, 짬뽕
	글자크기는 15폰트정도 설정합니다.
	 -->
	 <div align="center" style="background-color:aliceblue;">
	 <c:set var="lunch" value="***** Lunch Menu *****"></c:set>
	 <font size="30px" color=red><c:out value="${lunch }" /></font>
	 <br><br>
 	 </div>
	 <div align="center" style="background-color:pink;">
	 <c:set var="menu" value="불고기 백반, 오므라이스, 냉면, 콩국수, 된장찌게, 김치찌게, 짜장면, 짬뽕" />
	<% int i=0;%>
	<form method="post" action="coreTest7.jsp">
	<select name="select">
	 <c:forTokens var="varData" items="${menu}" delims=",">

	 			<option value="${varData}">${varData}</option>
	<% i++; %>
	 </c:forTokens>
	 </select>
	 <input type="submit" value="메뉴 선택">
	 </form>
	 </div>
 	 <input type="text" name="result" value="${result }">
</body>
</html>
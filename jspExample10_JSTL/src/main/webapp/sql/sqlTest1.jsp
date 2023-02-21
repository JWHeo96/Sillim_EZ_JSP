<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL Test</title>
</head>
<body>
	<sql:setDataSource var="conn"
	driver="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="heo"
	password="1234"/>

	<sql:update dataSource="${conn }">
	insert into (numb, name) values(1, '김걱동')
	</sql:update>
	
	<sql:update dataSource="${conn }">
	insert into test(numb, name) values(2, '오길동')
	</sql:update>

	<sql:update dataSource="${conn }">
	insert into test(numb, name) values(3, '이길동')
	</sql:update>

	<sql:update dataSource="${conn }">
	insert into test(numb, name) values(4, '박길순')
	</sql:update>
	
	<sql:query var="rs" dataSource="${conn }">
	select * from test where name = ?
	<sql:param>이길동</sql:param>
	</sql:query>
	<c:forEach var="data" items="${rs.rows }">
	<c:out value="${data['numb'] }"/>
	<c:out value="${data['name'] }"/>
	<br>
	</c:forEach>
</body>
</html>
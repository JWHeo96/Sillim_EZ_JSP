<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL member</title>
</head>
<body>
	<sql:setDataSource var="conn"
	driver="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="heo"
	password="1234"/>

	<sql:update dataSource="${conn }">
	insert into member(id, name, height, weight, age) values(33, '허장욱',123,456,789)
	</sql:update>
	
	<sql:update dataSource="${conn }">
	update member set age=111 where id=33
	</sql:update>

	<sql:update dataSource="${conn }">
	delete from member where id=?
	<sql:param>31</sql:param>
	</sql:update>
	
	<sql:query var="rs" dataSource="${conn }">
	select * from member where name = ?
	<sql:param>김길동</sql:param>
	</sql:query>
	<c:forEach var="data" items="${rs.rows }">
	<c:out value="${data['id'] }"/>
	<c:out value="${data['name'] }"/>
	<c:out value="${data['height'] }"/>
	<c:out value="${data['weight'] }"/>
	<c:out value="${data['age'] }"/>
		
	<br>
	</c:forEach>
</body>
</html>
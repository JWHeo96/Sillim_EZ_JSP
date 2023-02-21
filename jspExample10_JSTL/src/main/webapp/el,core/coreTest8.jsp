<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시간 처리</title>
</head>
<body>
	<c:set var="date" value="<%=new Date() %>"/>${date }<br>
	<fmt:formatDate value="${date }" /><br>
	<fmt:formatDate value="${date }" type="time"/><br>
	<fmt:formatDate value="${date }" type="both"/><br>
		
	<fmt:formatDate value="${date }" dateStyle="full"/><br>
	<fmt:formatDate value="${date }" dateStyle="long"/><br>
	<fmt:formatDate value="${date }" dateStyle="medium"/><br>
	<fmt:formatDate value="${date }" dateStyle="short"/><br>
	
	<fmt:formatDate value="${date }" type="time" timeStyle="full"/><br>
	<fmt:formatDate value="${date }" type="time" timeStyle="long"/><br>
	<fmt:formatDate value="${date }" type="time" timeStyle="medium"/><br>
	<fmt:formatDate value="${date }" type="time" timeStyle="short"/><br>
	
	<fmt:formatDate value="${date }" type="both" timeStyle="short"/><br>
	
	<fmt:formatDate value="${date }" type="date" pattern="yyyy/MM/dd"/><br>
	<fmt:formatDate value="${date }" type="time" pattern="hh:mm:ss"/><br>
</body>
</html>
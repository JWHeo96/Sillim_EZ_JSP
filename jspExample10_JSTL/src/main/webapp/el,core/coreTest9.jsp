<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화폐 단위 처리</title>
</head>
<body>
	<!-- 1000000 -->
	<fmt:formatNumber value="1000000" groupingUsed="false"/><br>
	<!-- 3.14123 -->
	<fmt:formatNumber value="3.14123" pattern="#.#####"/><br>
	<!-- 3.14123 -->
	<fmt:formatNumber value="3.14123" pattern="0.00000"/><br>
	<!-- 314,123 -->
	<fmt:formatNumber value="314123" pattern="###,###"/><br>
	<!-- 314,123 -->
	<fmt:formatNumber value="314123" pattern="000,000"/><br>
	<!-- percent31 -->
	<fmt:formatNumber value="31.4123" pattern="percent"/><br>
	<!-- percent32 -->
	<fmt:formatNumber value="31.5123" pattern="percent"/><br>
</body>
</html>
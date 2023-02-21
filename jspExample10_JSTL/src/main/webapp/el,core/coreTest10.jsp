<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
	<fmt:setLocale value="ko-KR"/>
	<ul>
	<!-- 일반 기호 1,000,000 -->
	<fmt:formatNumber value="1000000" type="number"/><br>
	<!-- percent 기호 12,345,600% -->
	<fmt:formatNumber type="percent">123456</fmt:formatNumber><br>
	<!-- 통화 기호 ￦123 -->
	<fmt:formatNumber value="123.45678" type="currency"/><br>
	<!-- 자리수 지정 123,456,712,345.68 -->
	<fmt:formatNumber value="123456712345.6789" type="number"
	groupingUsed="true" maxIntegerDigits="12" maxFractionDigits="2"/><br>
	<fmt:setLocale value="en-US"/>
	<ul>
	<!-- 일반 기호 1,000,000 -->
	<fmt:formatNumber value="1000000" type="number"/><br>
	<!-- percent 기호 12,345,600% -->
	<fmt:formatNumber type="percent">123456</fmt:formatNumber><br>
	<!-- 통화 기호 $123.46 -->
	<fmt:formatNumber value="123.45678" type="currency"/><br>
	<!-- 자리수 지정 123,456,712,345.68 -->
	<fmt:formatNumber value="123456712345.6789" type="number"
	groupingUsed="true" maxIntegerDigits="12"
	maxFractionDigits="2"/><br>
	</ul>

</body>
</html>
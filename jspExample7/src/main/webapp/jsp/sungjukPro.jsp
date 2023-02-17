<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력</title>
</head>
<body>
	<div align="center">
	<%
		String number = request.getParameter("number");
	
		int student[] = new int[Integer.parseInt(number)];
		int sum = 0;
		
		for(int i=0; i< student.length; i++){
			String s = Integer.toString(i);
			student[i] = Integer.parseInt(request.getParameter(s));
			sum+=student[i];
		}
	%>
	
	총 학생수: <%= number %><br>
	총점: <%=sum %><br>
	평균: <%=sum/student.length %>
	</div>
	<a href="sungjukForm.jsp"><button>홈으로</button></a>
</body>
</html>
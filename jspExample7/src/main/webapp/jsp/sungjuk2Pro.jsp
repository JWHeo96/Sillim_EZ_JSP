<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 출력</title>
</head>
<body>
	<%!
		float JavaTotal=0.0f, JSPTotal=0.0f, CSSTotal=0.0f, JavaScriptTotal=0.0f, OracleTotal=0.0f,
				Javaavg=0.0f, JSPavg=0.0f, CSSavg=0.0f, JavaScriptavg=0.0f, Oracleavg=0.0f; 
		int countJava=0, countJSP=0, countCSS=0, countJavaScript=0, countOracle=0;
	%>
	<%
		String select=request.getParameter("select");
		String name=request.getParameter("name");
		float score = Integer.parseInt(request.getParameter("score"));
		
		if(select.equals("Java")){
			countJava++;
			JavaTotal+=score;
			Javaavg = JavaTotal / countJava;
			out.println("total:" + JavaTotal);
			out.println("avg:" + Javaavg);
			out.println("countJava:" + countJava);
		} else if(select.equals("JSP")){
			countJSP++;
			JSPTotal+=score;
			JSPavg = JSPTotal / countJSP;
			out.println("total:" + JSPTotal);
			out.println("avg:" + JSPavg);
			out.println("countJSP:" + countJSP);
		} else if(select.equals("CSS")){
			countCSS++;
			CSSTotal+=score;
			CSSavg = CSSTotal / countCSS;
			out.println("total:" + CSSTotal);
			out.println("avg:" + CSSavg);
			out.println("countCSS:" + countCSS);
		} else if(select.equals("JavaScript")){
			countJavaScript++;
			JavaScriptTotal+=score;
			JavaScriptavg = JavaScriptTotal / countJavaScript;
			out.println("total:" + JavaScriptTotal);
			out.println("avg:" + JavaScriptavg);
			out.println("countJavaScript:" + countJavaScript);
		} else if(select.equals("Oracle")){
			countOracle++;
			OracleTotal+=score;
			Oracleavg = OracleTotal / countOracle;
			out.println("total:" + OracleTotal);
			out.println("avg:" + Oracleavg);
			out.println("countOracle:" + countOracle);
		}
	%>
	<br /><br />
	<a href="sungjuk2Form.jsp"><button>이전으로</button></a>
</body>
</html>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String num1,num2;
	String[] check1;
	int num3,num4;
	request.setCharacterEncoding("utf-8");
	num1 =request.getParameter("number1");
	num2= request.getParameter("number2");
	check1=request.getParameterValues("hobby");
	String str =Arrays.toString(check1);
	num3=Integer.parseInt(num1);
	num4=Integer.parseInt(num2);
	%>
	[덧셈,뺄셈,곱셈,나눗셈]<br>
<% 
	if(str.contains("add")){
		out.print("덧셈 결과는 "+(num3+num4)+"입니다."+"<br>");
	}if (str.contains("minus")){
		out.print("뺄셈 결과는 "+(num3-num4)+"입니다."+"<br>");
	}if(str.contains("mul")){
		out.print("곱셈 결과는 "+(num3*num4)+"입니다."+"<br>");
	}if(str.contains("div")){
		out.print("나눗셈 결과는 "+(num3/num4)+"입니다."+"<br>");
	}
	
%>


</body>
</html>
<%@page import="java.rmi.server.Operation"%>
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
	String num1,num2,check1;
	int num3,num4;
	request.setCharacterEncoding("utf-8");
	num1 =request.getParameter("number1");
	num2= request.getParameter("number2");
	check1=request.getParameter("check");
	num3=Integer.parseInt(num1);
	num4=Integer.parseInt(num2);
	
	if(check1.equals("add")){
		out.print("두 수의 덧셈은 "+(num3+num4)+"입니다.");
	}else if (check1.equals("minus")){
		out.print("두 수의 뺄셈은 "+(num3-num4)+"입니다.");
	}else if(check1.equals("mul")){
		out.print("두 수의 곱셈은 "+(num3*num4)+"입니다.");
	}else if(check1.equals("div")){
		out.print("두 수의 나눗셈은 "+(num3/num4)+"입니다.");
	}
	
	
%>

	
</body>
</html>
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
	request.setCharacterEncoding("utf-8");
	int num1 =Integer.parseInt(request.getParameter("num1"));              
	int num2= Integer.parseInt(request.getParameter("num2")); 
	
	
	String check1=request.getParameter("div");
	
	out.print("첫번째수:"+num1+"<br>");
	out.print("두번째수:"+num2+"<br>");
	out.print(num1+"/"+num2+"="+num1/num2+"<br>");
	
%>
	<input type="submit" value="초기화면">
	

</body>
</html>
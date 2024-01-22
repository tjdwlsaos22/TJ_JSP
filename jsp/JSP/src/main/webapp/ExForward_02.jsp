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
	
	out.print("첫번째수:"+num1+"<br>");
	out.print("두번째수:"+num2+"<br>");
	
	out.print(num1+"+"+num2+"="+(num1+num2)+"<br>");
%>

<form action="ExForward_05.jsp" method="get">
	<input type="hidden" name="num1" value="<%= num1 %>">
    <input type="hidden" name="num2" value="<%= num2 %>">
	<input type="submit" value="나눗셈">
</form>
<%
//hidden은 값이 나타나진 않지만, 서버로 데이터 전송

%>
	
</body>
</html>
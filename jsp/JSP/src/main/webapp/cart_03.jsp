<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str="";
if(request.getAttribute("result").equals("success")){
str="저장되었습니다.";
}else{
	str="저장 실패";
}
%>	
	<h1>상품 선택 저장 결과</h1>
	<%=str %>
	<br>
	<br>
	<form action="cart_05.jsp" method="get">
	<input type ="submit" value="저장 결과 불러오기">
	
	</form>

</body>
</html>
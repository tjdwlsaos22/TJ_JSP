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
 request.setCharacterEncoding("UTF-8");
String animal =  request.getParameter("animal");
session.setAttribute("animal", animal);
%>
당신은<%=session.getAttribute("FOOD") %>와 
<%=session.getAttribute("ANIMAL") %>을 좋아하는 성격입니다.

<%session.invalidate(); %>

</body>
</html>
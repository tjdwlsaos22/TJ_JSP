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
String food =  request.getParameter("food");
session.setAttribute("food", food);
%>

<h2>좋아하는 동물은?</h2>
<br><br>
<form action="CharacterTest3.jsp">
		<input type="text" name="animal">
		<input type="submit" name="OK">
	


</form>

</body>
</html>
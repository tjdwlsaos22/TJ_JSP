<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="num4.jsp" method="get">
		계산을 위한 숫자를 입력하세요.<br>
		숫자 1 :
			<select name="number1">
            <% for (int i = 1; i <= 100; i++) { %>
                <option value="<%= i %>"><%= i %></option>
            <% } %>	
			</select><br>
		숫자 2 :
			<select name="number2">
            <% for (int i = 1; i <= 100; i++) { %>
                <option value="<%= i %>"><%= i %></option>
            <% } %>	
			</select><br>
		계산방법 :<br>
			<input type="checkbox" name="hobby" value="add" >덧셈<br>
			<input type="checkbox" name="hobby" value="minus" >뺄셈<br>
			<input type="checkbox" name="hobby" value="mul">곱셈<br>
			<input type="checkbox" name="hobby" value="div">나눗셈 <br>
			
			<input type="submit" value="계산">
			

</body>
</html>
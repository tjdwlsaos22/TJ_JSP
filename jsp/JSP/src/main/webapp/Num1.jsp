<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="Num2.jsp" method="get">
		num1 :
			<select name="number1">
            <% for (int i = 1; i <= 100; i++) { %>
                <option value="<%= i %>"><%= i %></option>
            <% } %>	
			</select><br>
		num2 :
			<select name="number2">
            <% for (int i = 1; i <= 100; i++) { %>
                <option value="<%= i %>"><%= i %></option>
            <% } %>	
			</select><br>
		계산방법 :<br>
			<input type="radio" name="check" value="add" checked="checked">덧셈
			<input type="radio" name="check" value="minus">뺄셈
			<input type="radio" name="check" value="mul">곱셈
			<input type="radio" name="check" value="div">나눗셈
			
			<input type="submit" value="계산">
			
			

</body>
</html>
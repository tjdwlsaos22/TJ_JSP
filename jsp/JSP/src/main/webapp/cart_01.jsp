<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="cart_02.jsp" method="post">
	
	<p>수량 : <input type="text" name="name"><br></p>
	
	<p>크기 :
			<input type="radio" name="check" value="big" >대
			<input type="radio" name="check" value="mid" checked="checked">중
			<input type="radio" name="check" value="sma">소<br></p>
			
	<p>색상:
			<select name="color">
				<option value="beige">베이지</option>
				<option value="brown">브라운</option>
				<option value="kaki selected="selected">카키</option>
			</select><br></p>
			
		<input type="submit" value="저장">		
			
		
	</form>

</body>
</html>
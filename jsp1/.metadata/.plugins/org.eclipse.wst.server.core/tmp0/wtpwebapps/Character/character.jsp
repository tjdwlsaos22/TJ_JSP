<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<form action="Animal" method="get">
	당신의 성격을 테스트 합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요.<br><br>
	이름은?
		<input type="text" name="name" size="5" style="text-align: right;  padding-right:1px"><br><br>
	좋아하는 색은?
			<input type="radio" name="color" value="노랑" >노랑
			<input type="radio" name="color" value="빨강" >빨강
			<input type="radio" name="color" value="파랑" >파랑<br><br>
	좋아하는 동물은?
			<select name="animal">
            <% 
                // 동적으로 콤보박스 옵션 생성
                String[] animal = {"거북이", "토끼", "다람쥐"};

                for (String ani : animal) {
            %>
            <option value="<%= ani %>"><%= ani %></option>
            <%
                }
            %>
                
 			</select><br><br>
	
	
	좋아하는 음식은?(모두 고르세요)
			<input type="checkbox" name="food" value="짜장면">짜장면
			<input type="checkbox" name="food" value="짬뽕">짬뽕
			<input type="checkbox" name="food" value="탕수육">탕수육<br><br>
			
			<input type="submit" value="확인">
		
			
	</form>

</body>
</html>
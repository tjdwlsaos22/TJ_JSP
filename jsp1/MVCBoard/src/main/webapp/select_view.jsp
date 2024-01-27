<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="content.do" method="post">
			<table border="0">
			<tr>
				<td>번호</td>
				<td><input type="text" name="bld" size="20" readonly="readonly"></td>
			
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20"></td>
			
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="20"></td>
			
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bContent" rows="10" cols="50"></textarea></td>
			</tr>
		
		</table>
	
	</form>
		
			

</body>
</html>
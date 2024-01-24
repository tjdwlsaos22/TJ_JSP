<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	사용자 ID : <%=session.getAttribute("userid") %> <br><br>
	성명 : <%=session.getAttribute("name") %><br><br>
	전화번호 : <%=session.getAttribute("phone") %><br><br>
	주소 : <%=session.getAttribute("address") %><br><br>
	
	상기의 정보로 입력되었습니다. 감사합니다.

<%session.invalidate(); %>
	
	
</body>
</html>
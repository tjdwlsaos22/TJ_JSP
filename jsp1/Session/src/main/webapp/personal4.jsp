<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>가입내용</h1>
	아이디 : <%=session.getAttribute("ID") %> <br>
	패스워드 : <%=session.getAttribute("pass") %><br>
	성명 : <%=session.getAttribute("name") %>

<%session.invalidate(); %>
	


</body>
</html>
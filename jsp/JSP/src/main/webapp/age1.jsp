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
	request.setCharacterEncoding("utf-8");
	String age =request.getParameter("age");
	int age1 = Integer.parseInt(age);
	
	if(age1 >= 20){
		response.sendRedirect("responseAge_03.jsp?age="+age);
	}else{
		response.sendRedirect("responseAge_04.jsp?age="+age);
	}
	

%>

</body>
</html>
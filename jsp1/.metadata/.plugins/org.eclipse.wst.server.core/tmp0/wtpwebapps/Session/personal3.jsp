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

	
	String agreeValue= request.getParameter("agree");
	if(agreeValue.equals("agree")){
		response.sendRedirect("personal4.jsp");
		
	}else if(agreeValue.equals("disagree")){
		session.invalidate();
		response.sendRedirect("personal.jsp");
	}

%>
</body>
</html>
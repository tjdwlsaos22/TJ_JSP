<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<% request.setCharacterEncoding("UTF-8");
	String name =  request.getParameter("name");
	String ID=request.getParameter("ID");
	String pass=request.getParameter("pass");
	session.setAttribute("ID", ID);
	session.setAttribute("pass", pass);
	session.setAttribute("name", name);%>

	<form action="personal3.jsp">
	<h2>약관</h2><br>
	---------------------------------------------------<br>
	1.회원 정보는 웹사이트의 운영을 위해서만 사용 됩니다.<br>
	2.웹사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.<br>
	---------------------------------------------------<br>
	위의 약관에 동의 하십니까?<br><br><br>
	
	<input type="radio" name="agree" value="agree" >동의 함
	<input type="radio" name="agree" value="disagress" >동의 하지 않음
	
	<input type="submit" value="확인">
	
	
	</form>
	

</body>
</html>
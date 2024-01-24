<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%

String ID = request.getParameter("ID");
String struserid=null;

String url_mysql ="jdbc:mysql://localhost/z?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
String id_mysql="root";
String pw_mysql="qwer1234";

	String query = "select userid from wtest where id=" + ID;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();
	
	ResultSet rs = stmt_mysql.executeQuery(query);
	
	if(rs.next()){
		struserid=rs.getString(1);
		
	}
	
	conn_mysql.close();
	session.setAttribute("OLD", struserid); //예전값 세션에 저장.
	
}catch(Exception e){
	e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>아이디를 수정후 OK버튼을 누르세요</h3>
	<form action="updateTest_03.jsp" method="post">
		사용자ID : <input type="text" name="ID" size="10" value="<%=struserid%>">
		<input type="submit" value="확인"> 
	</form>
	
	


</body>
</html>
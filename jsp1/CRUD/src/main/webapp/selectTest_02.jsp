<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

request.setCharacterEncoding("utf-8");
String seq= request.getParameter("seq");

String url_mysql ="jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
String id_mysql="root";
String pw_mysql="qwer1234";

	String query = "select seq,name,phone,address,email,relation from addresslist where seq="+seq;
	String name="";
	String phone="";
	String address="";
	String email="";
	String relation="";
	
	int cnt=0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();
	
	ResultSet rs = stmt_mysql.executeQuery(query);
	
 	if(rs.next()){
 		seq=rs.getString(1);
 		name=rs.getString(2);
 		phone=rs.getString(3);
 		address=rs.getString(4);
 		email=rs.getString(5);
 		relation=rs.getString(6);
		}	


	conn_mysql.close();
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
	<form action="selectTest_03.jsp" method="post">
		<table>
			<tr>
				<td align="right" >SEQ : </td>
				<td> <input type="text" name="userid" size="10" value="<%=seq %>" readonly="readonly">
			</tr>
			<tr>
				<td align="right" >성명 : </td>
				<td> <input type="text" name="name" size="10" value="<%=name %>" >
			</tr>
			<tr>
				<td align="right" >전화번호 : </td>
				<td> <input type="text" name="phone" value="<%=phone %>">
			</tr>
			<tr>
				<td align="right" >주소 : </td>
				<td> <input type="text" name="address" size="60" value="<%=address %>">
			</tr>
			<tr>
				<td align="right" >전자우편 : </td>
				<td> <input type="text" name="email" size="60" value="<%=email %>">
			</tr>
			<tr>
				<td align="right" >관계 : </td>
				<td> <input type="text" name="relation" size="60" value="<%=relation %>">
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		
		<input type="submit" value="수정"></td>
			
	
	</form>
	<form action="selectTest_04.jsp" method="post">
		<% session.setAttribute("SEQ", seq); %>
		<input type="submit" value="삭제">
	
	
	</form>

</body>
</html>

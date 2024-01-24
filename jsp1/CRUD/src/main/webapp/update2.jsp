<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		 String userid = request.getParameter("id");
		 String strUserid = null;
		 String strName = null;
		 String strTel = null;
		 String strAddress = null;
		 
		 String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf-8&useSSL=false";
		 String id_mysql = "root";
		 String pw_mysql = "qwer1234";
		 
		/*  PreparedStatement ps = null; */ /*  검색이니깐 필요가 없다*/
		String query = "select userid, name, tel, address from purchaserinfo where userid = '" + userid +"'";
		
		 try{
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			 Statement stmt_mysql = conn_mysql.createStatement();
	
			 ResultSet rs = stmt_mysql.executeQuery(query); /* 데이터 값을 보겠다 */
			 if(rs.next()) {
				 strUserid = rs.getString(1);
				 strName = rs.getString(2);
				 strTel = rs.getString(3);
				 strAddress = rs.getString(4);
			 }
						 
			 conn_mysql.close();
			 session.setAttribute("ID", userid);
			 
		 }catch(Exception e) {
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
	<h3>수정후 확인 버튼을 누르세요!</h3>
	<form action="update3.jsp" method="post">
		사용자 ID : <input type="text" name="userid" size="10" value="<%=strUserid %>" readonly="readonly"><br>
		성명 : <input type="text" name="name" size="10" value="<%=strName %>"><br>
		전화번호 : <input type="text" name="tel" size="10" value="<%=strTel %>" ><br>
		주소 : <input type="text" name="address" size="10" value="<%=strAddress %>" ><br>
		<input type="submit" value="OK"><br>
	</form>
	
	
	
</body>
</html>
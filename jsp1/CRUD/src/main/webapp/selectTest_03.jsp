<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		 request.setCharacterEncoding("utf-8");

	     String seq = request.getParameter("seq");
	     String name = request.getParameter("name");
	     String phone = request.getParameter("phone");
	     String address = request.getParameter("address");
	     String email = request.getParameter("email");
	     String relation = request.getParameter("relation");

		 String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf-8&useSSL=false";
		 String id_mysql = "root";
		 String pw_mysql = "qwer1234";
		 
		 PreparedStatement ps = null;
		 try{
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			 Statement stmt_mysql = conn_mysql.createStatement();
			 
			 String query = "update addresslist set name = ?, phone = ?, address = ?, email = ?,relation=? where seq= ?";
			 /* 준비하는거임 */
			 ps = conn_mysql.prepareStatement(query);
			 ps.setString(1, name);
			 ps.setString(2, phone);
			 ps.setString(3, address);
			 ps.setString(4, email);
			 ps.setString(5, relation);
			 ps.setString(6, (String)session.getAttribute("SEQ"));
			 
			 ps.executeUpdate();
			 
			 conn_mysql.close();
			 session.setAttribute("NAME", name);
			 session.setAttribute("PHONE", phone);
			 session.setAttribute("ADDRESS", address);
			 
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 response.sendRedirect("selectTest_01.jsp");
%>
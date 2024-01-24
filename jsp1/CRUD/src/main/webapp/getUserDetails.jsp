<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String url_mysql ="jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
String id_mysql="root";
String pw_mysql="qwer1234";

String userid = request.getParameter("userid");

String userDetailsQuery = "select * from purchaserinfo where userid = '" + userid + "'";

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
    Statement stmt_mysql = conn_mysql.createStatement();
    
    ResultSet rs = stmt_mysql.executeQuery(userDetailsQuery);
    
    if (rs.next()) {
        // Display user details in the new window
%>
        <h2>User Details</h2>
        <p><strong>User ID:</strong> <%= rs.getString(1) %></p>
        <p><strong>Name:</strong> <%= rs.getString(2) %></p>
        <p><strong>Telephone:</strong> <%= rs.getString(3) %></p>
        <p><strong>Address:</strong> <%= rs.getString(4) %></p>
        <p><strong>Insert Date:</strong> <%= rs.getString(5) %></p>
<%
    } else {
        // Handle the case where user details are not found
%>
        <p>User details not found for ID <%= userid %></p>
<%
    }
    
    conn_mysql.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information</title>
</head>
<body>

<%
    String url_mysql = "jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
    String id_mysql = "root";
    String pw_mysql = "qwer1234";

    String query = "select seq,name,phone,address,email,relation from addresslist";
    int cnt = 0;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
        Statement stmt_mysql = conn_mysql.createStatement();

        ResultSet rs = stmt_mysql.executeQuery(query);
%>

    <table border="1">
        <tr>
            <th>seq</th><th>이름</th><th>전화번호</th><th>주소</th><th>전자우편</th><th>관계</th>
        </tr>

        <% while(rs.next()) { %>
            <tr>
               <td><a href = "selectTest_02.jsp?seq=<%=rs.getInt(1)%>"><%=rs.getInt(1) %></a></td>
                <td style="width: 70px;"><%=rs.getString(2) %></td>
                <td style="width: 130px;"><%=rs.getString(3) %></td>
                <td style="width: 130px;"><%=rs.getString(4) %></td>
                <td style="width: 130px;"><%=rs.getString(5) %></td>
                <td style="width: 100px;"><%=rs.getString(6) %></td>
            </tr>
        <% 
            cnt++;
        } %>
    </table>

<%
        conn_mysql.close();
    } catch(Exception e) {
        e.printStackTrace();
    }
%>

<form action="selectTest_05.jsp" method="post">
    <input type="submit" value="입력">
</form>
<br><br>
총 인원은 <%=cnt %>명입니다.


</body>
</html>
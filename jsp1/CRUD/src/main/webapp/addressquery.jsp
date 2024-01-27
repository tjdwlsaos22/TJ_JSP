<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String queryName = request.getParameter("query"); //query가 아래에 selectname으로온다. value에 name을쓰면 이게 name이되고, address이면 주소가져온다.
	String queryContent = request.getParameter("content");
	
	if(queryName==null){
		queryName="address";
		queryContent="";
	}
	
	String url_mysql ="jdbc:mysql://localhost/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql="root";
	String pw_mysql="qwer1234";

		String query = "select seq,name,phone,address,email,relation from addresslist " ;
		String query1 = "where " + queryName +" like '%" + queryContent +"%'"; //여기에 value값에 맞춰서 값이 내려옴
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
		
		ResultSet rs = stmt_mysql.executeQuery(query+query1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>주소록 명단 리스트</h3>
	<form action="addressquery.jsp">
		검색선택 :
			<select name="query">
				<option value="name">이름</option>
				<option value="phone">전화번호</option>
				<option value="address" selected="selected">주소</option>
				<option value="relation">관계</option>
			</select>
		<input type="text" name="content" size="30">	
		<input type="submit" value="검색">
	</form>
	<br><hr>
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
    
    <br><hr>
총 인원은 <%=cnt %>명입니다.
    
<%
	conn_mysql.close();
	} catch(Exception e) {
        e.printStackTrace();
    }

%>    


</body>
</html>
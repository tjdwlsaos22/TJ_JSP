<%@page import="java.util.GregorianCalendar"%>
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

	GregorianCalendar now = new GregorianCalendar();
	String date =String.format("%TF", now);
	String time =String.format("%TT", now);


%>

	오늘의 날짜 : <%=date %><br>
	오늘의 날짜 : <%=time %><br>
	<%= String.format("%TY 년 %Tm 월 %Td 일",now,now, now) %> <br>
	<%= String.format("%Ty 년 %Tm 월 %Td 일",now,now, now) %> <br>
	<%= String.format("%TH 시 %TM 분 %TS 초",now,now, now) %> <br>
</body>
</html>
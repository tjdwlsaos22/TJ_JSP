<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째 수 : <fmt:formatNumber value="1234500" groupingUsed="true"/><br>
	두번째 수 : <fmt:formatNumber value="3.14157"	pattern="#.##"/><br>
	세번째 수 : <fmt:formatNumber value="10.5"	pattern="#.00"/><br>

</body>
</html>
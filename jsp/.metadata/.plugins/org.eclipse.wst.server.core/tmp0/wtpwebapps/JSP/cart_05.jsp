<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String name = "";
	String check = "";
	String color = "";
	
	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("cart.txt");
		reader = new BufferedReader(new FileReader(filePath));
		
		int lineCount = 0;
		while(true) {
			lineCount++;
			
			String str = reader.readLine();
			if(str == null) break;
			
			if(lineCount == 1) {
				name = str;
			}
			if(lineCount == 2) {
				check = str;
			}
			if(lineCount == 3) {
				color = str;
			}
		}
	}catch(FileNotFoundException fnfe) {
		out.print("파일이 존재하지 않습니다");
	}catch(IOException ioe) {
		out.print("파일을 읽을 수 없습니다.");
	}finally {
		try {
			reader.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	request.setAttribute("count", name);
	request.setAttribute("size", check);
	request.setAttribute("color", color);
	
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("cart_04.jsp");
	dispatcher.forward(request, response);
%>
</body>
</html>
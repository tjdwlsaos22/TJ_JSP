<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
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

	BufferedReader reader = null;
try{
	String  filepath = application.getRealPath("file.txt");
	new BufferedReader(new FileReader(filepath));
	while(true){
		String str=reader.readLine();
		if(str==null){ 
			break;}
		else{
		out.print(str+"<br>");}
	}
	
}catch(FileNotFoundException fnfe){
	out.print("존재하지않음");
}catch(IOException ioe){
	out.print("읽을 수 없습");
}finally{
	try{
		
	reader.close();
}catch(Exception e){
	e.printStackTrace();
}
	
}


%>
</body>
</html>
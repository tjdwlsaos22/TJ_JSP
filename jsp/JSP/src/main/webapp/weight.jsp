<%@page import="javax.swing.ImageIcon"%>
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
	String num1,num2;
	int num3,num4;
	num1 =request.getParameter("height");
	num2= request.getParameter("weight");
	num3=Integer.parseInt(num1);
	num4=Integer.parseInt(num2);
	
	double num5 = (num3/100.0)*(num3/100.0);
	double result=(double)num4/num5;
	String result1;
	
	if(result<=18.5){
		result1="저체중";
	}else if(result<=23){
		result1="정상";
	}else if(result<=25){
		result1="과체중";
	}else if(result<=30){
		result1="비만";
	}else{
		result1="고도비만";
	}
	String result2=String.format("%.2f",result);
%>


<% 	
	out.print("입력한 키는 "+num3+" 이고"+"<br>");
	out.print("입력한 몸무게는 "+num4+" 이고"+"<br>");
	out.print("당신의 bmi수치는 "+result2+" 이고"+"<br>");
	out.print("결과는 "+result1+" 입니다.");
	
	%>
	
	<% if (result1.equals("저체중")) { %>
		<p><img alt="Google Logo" src="amiya.png"></p>
	<%}else if(result1.equals("정상")) {%>
		<p><img alt="Google Logo" src="blaze.png"></p>
	<%}else if(result1.equals("과체중")) {%>
		<p><img alt="Google Logo" src="kelsit.png"></p>
	<%}else if(result1.equals("비만")) {%>
		<p><img alt="Google Logo" src="더조은1.png"></p>
	<% }else{%>
		<p><img alt="Google Logo" src="https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=9046601&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNC8yMS9DTFM2L2FzYWRhbFBob3RvXzI0MTRfMjAxNDA0MTY=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004"></p>
		<%} %>
	
	
	
	
</body>
</html>
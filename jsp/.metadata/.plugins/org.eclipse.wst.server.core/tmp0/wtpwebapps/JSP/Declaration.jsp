<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
	//int i=10;
	//String str ="i have a dream";
%>
<%! 
	//public int sum(int num1,int num2){
	//return num1+num2;
//}
%>

<%
	//out.print("sum = "+sum(12,13));

%>

	
<%
	int a=2;
	for(int i=1;i<=5;i++){
		double result =Math.pow(a,i); 
		System.out.printf("%d^%d="+result, a,i);
		String formattedString = String.format("%d^%d=%.0f\n", a, i, result);
        out.print(formattedString+"<br>");
	}
	
	
%>	
	

</body>
</html>
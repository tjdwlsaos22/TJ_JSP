<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
<style>
		
   		 body {
      	display: flex;
      	align-items: center;
      	justify-content: center;
      	height: 100vh;
      	margin: 0;
    	}

</style>

</head>
<body>
<% 
	int a=2;
	int i =1;
	while(i<=9){
		out.print(a+"*"+i+"="+(a*i)+"<br>");
		i++;
	}
	int d=2;
	for(int k=1;k<=9;k++){
		out.print(a+"*"+k+"="+(d*k)+"<br>");
		
	}
	
	String g="";
	int c=0;
	for(int s=1;s<=5;s++){
		g+=".";
		
	}
	out.print(g+"<br>");
	
	for(int j=1;j<=100;j++){
		c+=j;
	}
	out.print("1+2+3+"+g+"+99+100"+"="+c+"<br>");
	
	
	/*for(int e=1;e<=9;e++){
		for(int f=1;f<=9;f++){
			out.print(e+"*"+f+"="+(e*f)+"<br>");
		}
	}*/
	/*int a=30;
	int b=20;
	int addition=a+b;
	int m = a-b;
	int n = a*b;
	int c = a/b;
	int d= a%b;
	
	out.print(a + "+" + b + "=" + (a+b)+"<br>");
	out.print(a + "-" + b + "=" + (a-b)+"<br>");
	out.print(a + "*" + b + "=" + (a*b)+"<br>");
	out.print(a + "/" + b + "=" + (a/b)+"<br>");
	out.print(a + "%" + b + "=" + (a%b));*/
%>
<!--위의 식은 안보이고, 아래 출력값만 출력된다. 이후에 위에 out.print사용시 아래있는 식은 안써도된다.  -->


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	double result = (double) num1 / num2;
	
	java.text.DecimalFormat df = new java.text.DecimalFormat("#.##");
    double formattedResult = Double.parseDouble(df.format(result));


	request.setAttribute("ADD", num1+num2);
	request.setAttribute("SUB", num1-num2);
	request.setAttribute("MUL", num1*num2);
	request.setAttribute("DIV", formattedResult);
	
	RequestDispatcher dispatcher =  request.getRequestDispatcher("forward_03.jsp");
	dispatcher.forward(request, response);
%>

</body>
</html>
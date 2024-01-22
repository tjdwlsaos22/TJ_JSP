<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="java.io.*" %>

<%
    request.setCharacterEncoding("utf-8");
    int name = Integer.parseInt(request.getParameter("name"));
    String check = request.getParameter("check");
    String color = request.getParameter("color");

    // Set these values as attributes
    request.setAttribute("Name", name);
    request.setAttribute("Size", check);
    request.setAttribute("Color", color);

    String filename = "cart.txt";
    PrintWriter writer = null;
    String result;

    try {
        String filepath = application.getRealPath("/" + filename);

        writer = new PrintWriter(filepath);
        writer.println("수량 :" + name);
        writer.println("크기 :" + check);
        writer.println("색상 :" + color);

        result = "success";

    } catch (IOException ioe) {
        result = "fail";
    } finally {
        try {
            if (writer != null) {
                writer.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Forward the request to cart_05.jsp with a parameter
    
    request.setAttribute("Name", name);
	request.setAttribute("Size", check);
	request.setAttribute("Color", color);
	request.setAttribute("result", result);
    RequestDispatcher dispatcher = request.getRequestDispatcher("cart_03.jsp");
    dispatcher.forward(request, response);
%>
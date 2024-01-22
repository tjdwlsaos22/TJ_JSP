package com.javalec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Animal
 */
@WebServlet("/Animal")
public class Animal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Animal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();

	        out.println("<html>");
	        out.println("<head>");
	        out.println("<title>Personality Test Result</title>");
	        out.println("</head>");
	        out.println("<body>");

	        // 입력 폼에서 전달된 데이터 받기
	        String name = request.getParameter("name");
	        String color = request.getParameter("color");
	        String animal = request.getParameter("animal");
	        String[] food = request.getParameterValues("food");

	        out.println("<h2>" + name + "님의 성격을 테스트합니다.</h2>");
	        out.println("데이터를 입력한 후 확인 버튼을 눌러주세요.<br><br>");
	        out.println("이름은? " + name + "<br><br>");
	        out.println("좋아하는 색은? " + color + "<br><br>");
	        out.println("좋아하는 동물은? " + animal + "<br><br>");

	        out.print(name + "님, ");
	        if (color != null) {
	            out.print(color + "색을 좋아하는 당신은 ");
	        }
	        if (animal != null) {
	            out.print(animal + " 그리고 ");
	        }

	        if (food != null && food.length > 0) {
	            for (int i = 0; i < food.length; i++) {
	                out.print(food[i]);
	                // 마지막 항목이 아닌 경우 쉼표를 추가
	                if (i < food.length - 1) {
	                    out.print(", ");
	                }
	            }
	            out.print("를 좋아하는 성격입니다.");
	        } else {
	            out.print("어떤 음식을 좋아하는지 입력하세요.");
	        }}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}

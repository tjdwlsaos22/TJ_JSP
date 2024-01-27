package com.javalec.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.command.BCommand;
import com.javalec.command.BContentCommand;
import com.javalec.command.BListCommand;
import com.javalec.command.BWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("doPost");
		actionDo(request, response);
		
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("actionDo");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();

		
		BCommand command = null;
		String viewpage = null;
		
		String uri=request.getRequestURI();
		//System.out.print(uri);
		String conPath = request.getContextPath();
		//System.out.println(conPath);
		String com = uri.substring(conPath.length());
		//System.out.println(com);
		
		switch(com) {
		case("/list.do"):
				session.setAttribute("test","AAA");
				command = new BListCommand();
				command.execute(request, response);
				viewpage="list.jsp";
				break;
		case("/write_view.do"):
				viewpage="write_view.jsp";
				break;
		case("/write.do"):
				command  = new BWriteCommand();
				command.execute(request, response);
				viewpage="list.do";
				break;
		case("/content_view.do"):
			command  = new BContentCommand();
			command.execute(request, response);
			viewpage="select_view.jsp";
			break;		
			default:
				break;
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewpage);
		dispatcher.forward(request, response);
	}

}

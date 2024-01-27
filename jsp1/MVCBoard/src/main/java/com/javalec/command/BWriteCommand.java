package com.javalec.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.BDao;

public class BWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// write_view.jsp의 request를 받아서 Table에 insert한다.
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String viewPage = null;
		
		if (bName == null || bName.trim().isEmpty() || bTitle == null || bTitle.trim().isEmpty() 
				|| bContent == null || bContent.trim().isEmpty()) {
				viewPage = "error.jsp";
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				try {
					dispatcher.forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else {
			BDao dao = new BDao();
			dao.write(bName, bTitle, bContent);
		}

	}
}

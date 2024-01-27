package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.BDao;
import com.javalec.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		BDao dao = new BDao();
		BDto view = dao.view(request.getParameter("bld"));
		String bName=view.getbName();
		String bTitle=view.getbTitle();
		String bContent = view.getbContent();
		
		request.setAttribute("view_bName", bName);
		request.setAttribute("view_bTitle", bTitle);
		request.setAttribute("view_bContent", bContent);

	}

}

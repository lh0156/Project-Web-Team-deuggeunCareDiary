package com.test.main.healthcare;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/specrecord/edit.do")
public class EditSpecRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String memberseq = req.getParameter("memberseq");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getUserInfo(memberseq);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/editspecrecord.jsp");
		dispatcher.forward(req, resp);
	}

}
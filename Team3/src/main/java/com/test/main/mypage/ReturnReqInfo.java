package com.test.main.mypage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage/returnreqinfo.do")
public class ReturnReqInfo extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String eachorderseq = req.getParameter("eachorder");
		String stat = req.getParameter("stat");
		
		
		
			
		MypageDAO dao = new MypageDAO();
		
		MypageDTO redto = dao.orderRe(eachorderseq);
		
		req.setAttribute("redto", redto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/returnreqinfo.jsp");
		dispatcher.forward(req, resp);
		
		
		
		
	}
}

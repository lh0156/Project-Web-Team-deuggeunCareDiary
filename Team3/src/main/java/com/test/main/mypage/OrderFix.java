package com.test.main.mypage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage/orderfix.do")
public class OrderFix extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String eachorderseq = req.getParameter("eachorderseq");
		
		MypageDAO dao = new MypageDAO();
		
		int result = dao.orderFix(eachorderseq);
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/orderfix.jsp");
		dispatcher.forward(req, resp);
	}
}


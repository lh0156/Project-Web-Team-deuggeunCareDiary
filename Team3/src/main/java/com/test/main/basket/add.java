package com.test.main.basket;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/basket/add.do")
public class add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		BasketDAO dao = new BasketDAO();
		
		String id = session.getAttribute("id").toString();
		
		String memberSeq = dao.getMemberSeq(id);
		
		String count = req.getParameter("select");
		String productseq = req.getParameter("productseq");
		
		
		
		
		
		int result = dao.addBasket(count, productseq, memberSeq);
		System.out.println("result: " + result);
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/basket/add.jsp");
		dispatcher.forward(req, resp);

	}

}
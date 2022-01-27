package com.test.main.basket;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/basket/add.do")
public class add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String count = req.getParameter("select");
		String productseq = req.getParameter("productseq");
		
		System.out.println("count: " + count);
		System.out.println("productseq: " + productseq);
		BasketDAO dao = new BasketDAO();
		
		int result = dao.addBasket(count, productseq);
		System.out.println("result: " + result);
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/basket/add.jsp");
		dispatcher.forward(req, resp);

	}

}
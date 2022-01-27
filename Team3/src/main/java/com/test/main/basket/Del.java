package com.test.main.basket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/basket/del.do")
public class Del extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String[] basketseq = req.getParameterValues("basketseq");
		
		for(int i=0; i<basketseq.length; ++i) {
			System.out.println(basketseq[i]);
			
		}
		
		
		BasketDAO dao = new BasketDAO();
		
		int result = dao.delBasket(basketseq);
		
		
		req.setAttribute("delCount", basketseq.length);
		req.setAttribute("result", result);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/basket/del.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}

}
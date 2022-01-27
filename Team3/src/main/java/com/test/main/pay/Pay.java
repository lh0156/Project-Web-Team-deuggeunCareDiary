package com.test.main.pay;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.basket.BasketDTO;

@WebServlet("/pay/pay.do")
public class Pay extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String[] basketseq = req.getParameterValues("basketseq");
		
		//Clear
		
		PayDAO dao = new PayDAO();
		ArrayList<PayDTO> list = new ArrayList<PayDTO>();
		
		list = dao.getList(basketseq);
		
		int allPrice = 0;
		int productCount = list.size();
		
		System.out.println(productCount);
		
		
		
		for(PayDTO dto : list) {
			allPrice += dto.getPrice();
		}
		
		
		
		req.setAttribute("list", list);
		req.setAttribute("allPrice", allPrice); //총액을 표시하기 위함
		req.setAttribute("productCount", productCount); //n개를 표시하기 위함
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/pay/pay.jsp");
		dispatcher.forward(req, resp);

	}

}
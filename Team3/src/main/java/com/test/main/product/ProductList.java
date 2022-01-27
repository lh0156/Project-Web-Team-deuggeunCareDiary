package com.test.main.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/productlist.do")
public class ProductList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			ArrayList<ProductDTO> dto = new ArrayList<ProductDTO>();
			
			ArrayList<ProductDTO> dtoScore = new ArrayList<ProductDTO>(); //review점수
			
			ProductDAO dao = new ProductDAO();
			
			dto = dao.getProduct();
			
			dtoScore = dao.getProductReivewScore();
		
			req.setAttribute("list", dto);
			req.setAttribute("listScore", dtoScore);
			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productlist.jsp");
		dispatcher.forward(req, resp);
	}
}
package com.test.main.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/product/productdetail.do")
public class ProductDetail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//할일
		//1. -productdetail.do?productseq="PD1";
		//2. DB 작업 > select > DAO 위임
		//3. 반환값 전달 + JSP 호출하기
		
//		ArrayList<ProductDTO> dto = new ArrayList<ProductDTO>();
//		//1.
//		String productseq = req.getParameter("productseq");
//		
//		//2.
//		ProductDAO dao = new ProductDAO();
//		
//		dto = dao.get(productseq);
		
		String productseq = req.getParameter("productseq");
		
		//테스트(O)
		System.out.println(productseq);
		
		ProductDTO dto = new ProductDTO();
		
		ProductDAO dao = new ProductDAO();
		
		dto = dao.getDTO(productseq);
		
		int price10 = (int) (dto.getPrice()*10);
		int price30 = (int) (dto.getPrice()*30*0.97);
		int price50 = (int) (dto.getPrice()*50*0.95);
		int price100 = (int) (dto.getPrice()*100*0.93);
		
		int diffrentPrice30 = price30-price10;
		int diffrentPrice50 = price50-price10;
		int diffrentPrice100 = price100-price10;
		
		req.setAttribute("dto", dto);
		
		req.setAttribute("price10", price10);
		req.setAttribute("price30", price30);
		req.setAttribute("price50", price50);
		req.setAttribute("price100", price100);
		
		req.setAttribute("diffrentPrice30", diffrentPrice30);
		req.setAttribute("diffrentPrice50", diffrentPrice50);
		req.setAttribute("diffrentPrice100", diffrentPrice100);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productdetail.jsp");

		dispatcher.forward(req, resp);
	}
}

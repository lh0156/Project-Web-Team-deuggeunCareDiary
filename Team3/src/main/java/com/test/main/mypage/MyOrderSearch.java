package com.test.main.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/mypage/myordersearch.do")
public class MyOrderSearch extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		MypageDAO dao = new MypageDAO();
		
		String id = session.getAttribute("id").toString();
		ArrayList<MypageDTO> list = dao.myOrderGet(id);
		
		for (MypageDTO dto : list) {
			
			if (dto.getCourier().equals("CJ대한통운")) {
				dto.setCourier("04");
			}
			if (dto.getCourier().equals("우체국택배")) {
				dto.setCourier("01");
			}
			if (dto.getCourier().equals("로젠택배")) {
				dto.setCourier("06");
			}
			if (dto.getPostdate().length() > 10) {
				dto.setPostdate(dto.getPostdate().substring(0, 11));
			}
			
		}
		
		
		
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/myordersearch.jsp");
		dispatcher.forward(req, resp);
	}
}
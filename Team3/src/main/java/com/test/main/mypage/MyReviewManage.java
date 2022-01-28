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


@WebServlet("/mypage/myreviewmanage.do")
public class MyReviewManage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		
		MypageDAO dao = new MypageDAO();
		
		//String id = session.getAttribute("id").toString();
		String id = "aaf1698";
		ArrayList<MypageDTO> list = dao.reviewGet(id);
		
		
		req.setAttribute("list", list);
		
		for (MypageDTO dto : list) {
			
			
			
			if (dto.getProductname().length() > 6) {
				dto.setProductname(dto.getProductname().substring(0, 6) + "..");
			}
			if (dto.getReviewdate().length() > 10) {
				dto.setReviewdate(dto.getReviewdate().substring(0, 11) + "..");
			}
			if (dto.getReviewcontent().length() > 30) {
				dto.setReviewcontent(dto.getReviewcontent().substring(0, 30) + "..");
			}
			if (dto.getOrderdate().length() > 10) {
				dto.setOrderdate(dto.getOrderdate().substring(0, 11) + "..");
			}
			
			
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/myreviewmanage.jsp");
		dispatcher.forward(req, resp);
		
	}
}

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

@WebServlet("/mypage/myqamanage.do")
public class MyQAManage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		MypageDAO dao = new MypageDAO();
		
		//String id = session.getAttribute("id").toString();
		String id = "aaf1698";
		ArrayList<MypageDTO> list = dao.qaGet(id);
		
		
		
		for (MypageDTO dto : list) {
			
			if (dto.getQAAnswer().length() > 5) {
				dto.setQAAnswer(dto.getQAAnswer().substring(0, 5) + "..");
			}
			if (dto.getQAContent().length() > 20) {
				dto.setQAContent(dto.getQAContent().substring(0, 11) + "..");
			}
			if (dto.getQADate().length() > 10) {
				dto.setQADate(dto.getQADate().substring(0, 11) + "..");
			}
			
			
		}
		
		req.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/myqamanage.jsp");
		dispatcher.forward(req, resp);
	}
}

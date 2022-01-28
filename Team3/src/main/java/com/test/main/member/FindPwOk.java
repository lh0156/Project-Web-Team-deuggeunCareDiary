package com.test.main.member;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/findpwok.do")
public class FindPwOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO();
		
		dto.setName(name);
		dto.setId(id);
		dto.setTel(tel);
		
		MemberDTO result = dao.pwSearch(dto);
		
		
		req.setAttribute("result", result);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/findpwok.jsp");
		dispatcher.forward(req, resp);
	}
}

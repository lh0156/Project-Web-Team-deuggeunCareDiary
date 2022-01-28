package com.test.main.member;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/repassword.do")
public class RePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String tel = req.getParameter("tel");
		String password = req.getParameter("password");
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO();
		dto.setName(name);
		dto.setId(id);
		dto.setTel(tel);
		dto.setPw(password);
		
		int result = dao.rePw(dto);
		System.out.println(result);
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/repassword.jsp");
		dispatcher.forward(req, resp);
	}
}

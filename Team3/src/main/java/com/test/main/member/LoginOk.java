package com.test.main.member;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		
		MemberDTO result = dao.login(dto);
		
		String pass;
		if (result != null) {
			
			//로그인 성공
			HttpSession session = req.getSession();
			System.out.println(result.getId());
			session.setAttribute("id", result.getId()); //인증 티켓
			session.setAttribute("name", result.getName());
			session.setAttribute("grade", result.getGrade());
			session.setAttribute("mileage", result.getMileage());
			req.setAttribute("pass", result.getAccountStatus());
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/loginok.jsp");
		dispatcher.forward(req, resp);
	}
}

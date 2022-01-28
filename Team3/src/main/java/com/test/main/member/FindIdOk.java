package com.test.main.member;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/findidok.do")
public class FindIdOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//할일
		//1. 휴대폰번호를 받는다.
		//2. db에 휴대폰번호로 가입된 아이디가 있는지 찾는다
		//3. 아이디를 반환하여 findidok로 보낸다.
		//4. findidok에 아이디를 확인할 수 있게 출력한다.
		
		String tel = req.getParameter("tel");
		
		MemberDAO dao = new MemberDAO();
		System.out.println(tel);
		MemberDTO dto = dao.idSearch(tel);
		
		req.setAttribute("name", dto.getName());
		req.setAttribute("id", dto.getId());
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/findidok.jsp");
		dispatcher.forward(req, resp);
	}
}

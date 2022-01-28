package com.test.main.member;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/signupok.do")
public class SignUpOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("signid");
		String pw = req.getParameter("signpw");
		String name = req.getParameter("signname");
		String tel = req.getParameter("signtel");
		String email1 = req.getParameter("signemail1");
		String email2 = req.getParameter("signemail2");
		String jumin = req.getParameter("signjumin1");
		String gender = req.getParameter("signjumin2");
		String postalcode = req.getParameter("signpost");
		String address1 = req.getParameter("signad1");
		String address2 = req.getParameter("signad2");
		
		
		String email = email1 + "@" + email2;
		String address = address1 + " " + address2;
		String tel1 = tel.substring(0, 3);
		String tel2 = tel.substring(3, 7);
		String tel3 = tel.substring(7, 11);
		
		tel = tel1 + "-" + tel2 + "-" + tel3;
		
		if(gender.equals("1") || gender.equals("3")) {
			gender = "남자";
		} else {
			gender = "여자";
		}
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setJumin(jumin);
		dto.setGender(gender);
		dto.setPostalcode(postalcode);
		dto.setAddress(address);
		
		int result = dao.memberInsert(dto);
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/signupok.jsp");
		dispatcher.forward(req, resp);
	}
}

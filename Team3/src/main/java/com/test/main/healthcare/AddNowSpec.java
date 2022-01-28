package com.test.main.healthcare;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.main.healthcare.MemberDAO;
import com.test.main.healthcare.MemberDTO;

@WebServlet("/healthcare/addnowspec.do")
public class AddNowSpec extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//해야하는 것
		//1. 멤버 시퀀스 받기
		//2. 멤버시퀀스를 통해 유저의 나이, 성별 구하기
		//3. 폼에 입력시키기
		
		
		// 멤버 시퀀스 받기
		String memberseq = req.getParameter("memberseq");
		
		
		// 알바생 만들기
		MemberDAO dao = new MemberDAO();

		// 택배상자
		MemberDTO dto = dao.getUserInfo(memberseq);
		
		
		
		
		//주민 > 나이 바꾸기
		int jumin=Integer.parseInt(dto.getJumin().substring(0, 2));
		int age;
		
		if(jumin>=0 && jumin <22) { 
			age=2000+jumin;
		} else {
			age=1900+jumin;
		}
		age=2022-age;
		
		req.setAttribute("memberseq", memberseq);
		req.setAttribute("dto", dto);
		req.setAttribute("age", age);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/addnowspec.jsp");
		dispatcher.forward(req, resp);
	}

}
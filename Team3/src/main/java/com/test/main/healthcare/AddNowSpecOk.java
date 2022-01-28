package com.test.main.healthcare;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/healthcare/addnowspecok.do")
public class AddNowSpecOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//해야하는 것
		//1. 폼에서 값 받고 저장하기
		//2. DAO > 값을 SQL로 insert 시키는 역할
		//3. 
		String memberseq = req.getParameter("memberseq");
		String txtgender = req.getParameter("txtgender");
		String txtage = req.getParameter("txtage");
		String txtweight = req.getParameter("txtweight");
		String txtfat = req.getParameter("txtfat");
		String txtmuscle = req.getParameter("txtmuscle");
		
		
		//알바생, 택배상자
		NowSpecDAO dao = new NowSpecDAO();
		NowSpecDTO dto = new NowSpecDTO();
		
		//포장하기
		dto.setMemberSeq(memberseq);
		dto.setTxtgender(txtgender);
		dto.setTxtage(txtage);
		dto.setTxtweight(txtweight);
		dto.setTxtfat(txtfat);
		dto.setTxtmuscle(txtmuscle);
		
		//insert 시키기
		dao.insertNowSpec(dto);
		
		
		//멤버시퀀스 전달
		req.setAttribute("memberseq", memberseq);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/addwantspec.jsp");
		dispatcher.forward(req, resp);
	}

}
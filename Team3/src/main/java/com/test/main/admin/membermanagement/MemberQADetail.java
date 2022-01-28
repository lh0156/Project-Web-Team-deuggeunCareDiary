package com.test.main.admin.membermanagement;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/membermanagement/memberQADetail.do")
public class MemberQADetail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		get방식으로 memberseq 받아오기
		String memberseq = req.getParameter("memberseq");
		
		//알바생 생성
		MemberManagementDAO dao = new MemberManagementDAO();
		
		//가져와야할 것 메인DTO, 주문관련 서브DTO
		MemberManagementDTO mainDto = dao.getAll(memberseq);					//메인DTO
		ArrayList<ManagementQaDTO> subDto = dao.getUserQa(memberseq);			//서브DTO
		
		req.setAttribute("memberseq", memberseq);
		req.setAttribute("mainDto", mainDto);
		req.setAttribute("subDto", subDto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/membermanagement/memberQADetail.jsp");
		dispatcher.forward(req, resp);
	}
}
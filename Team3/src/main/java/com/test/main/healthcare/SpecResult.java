package com.test.main.healthcare;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/healthcare/specresult.do")
public class SpecResult extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1 파라미터 받기
		String memberseq = req.getParameter("memberseq");
		String wantweight = req.getParameter("wantweight");
		String wantfat = req.getParameter("wantfat");
		String wantmuscle = req.getParameter("wantmuscle");
		String wantdate = req.getParameter("wantdate");
		String wantgoal = req.getParameter("wantgoal");
		
		
		//2 알바생, 택배상자
		WantSpecDAO dao = new WantSpecDAO();
		WantSpecDTO dto = new WantSpecDTO();
		
		
		//3 포장하기
		dto.setMemberSeq(memberseq);
		dto.setWantWeight(wantweight);
		dto.setWantFat(wantfat);
		dto.setWantMuscle(wantmuscle);
		dto.setWantDate(wantdate);
		dto.setWantGoal(wantgoal);
		
		
		//4 insert 시키기
		dao.insertWantSpec(dto);
		
		
		//멤버시퀀스 전달
		req.setAttribute("memberseq", memberseq);
		
		
		//하루 권장 소비 칼로리 계산
		//int weightkal=Integer.parseInt(dto.getWantWeight());
		//int a;
		
		//a = (int) ((int) (weightkal*0.35) * 0.5);
		
		//req.setAttribute("memberseq", memberseq);
		//req.setAttribute("dto", dto);
		//req.setAttribute("a", a);
		
		

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/specresult.jsp");
		dispatcher.forward(req, resp);
	}

}


















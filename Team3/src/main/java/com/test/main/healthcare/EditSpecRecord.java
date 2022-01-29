package com.test.main.healthcare;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/specrecord/edit.do")
public class EditSpecRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//해야하는 것
		//1. 폼에서 값 받고 저장하기
		//2. DAO > 값을 SQL로 insert 시키는 역할
		//3. 
		String memberseq = req.getParameter("memberseq");
		String txtcalpweightp = req.getParameter("txtpmusclep");
		String txtpfatp = req.getParameter("txtpfatp");
		String txtpmusclep = req.getParameter("txtpmusclep");
		
		
		// 멤버시퀀스, 시작날짜, 끝날짜를 주고 그 멤버의 날짜사이 데이터를 리턴한다
        //String start = req.getParameter("start");     //2022-01-10
        //String end = req.getParameter("end");        //2022-01-28

        //SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

        //LocalDate dBefore = LocalDate.parse(start, DateTimeFormatter.ISO_LOCAL_DATE);
        //LocalDate dAfter = LocalDate.parse(end, DateTimeFormatter.ISO_LOCAL_DATE);
        
            //날짜차이 diff
        //long diff = dBefore.until(dAfter,ChronoUnit.DAYS);
        
        //ChartDAO ctdao = new ChartDAO();
        //ArrayList<ChartDTO> datelist = ctdao.set(memberseq, start, end, diff);
        
        
        

		
		//알바생, 택배상자
		NowSpecDAO dao = new NowSpecDAO();
		NowSpecDTO dto = new NowSpecDTO();
		
		//포장하기
		dto.setMemberSeq(memberseq);
		dto.setTxtweight(txtcalpweightp);
		dto.setTxtfat(txtpfatp);
		dto.setTxtmuscle(txtpmusclep);
		
		//insert 시키기
		dao.insertWeight(dto);
		
		
		//멤버시퀀스 전달
		req.setAttribute("memberseq", memberseq);
		//req.setAttribute("datelist", datelist);
		//req.setAttribute("start", start);
		//req.setAttribute("end", end);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/editspecrecord.jsp");
		dispatcher.forward(req, resp);
	}

}
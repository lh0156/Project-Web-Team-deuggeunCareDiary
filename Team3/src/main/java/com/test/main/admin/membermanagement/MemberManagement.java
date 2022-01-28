package com.test.main.admin.membermanagement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/membermanagement/membermanagement.do")
public class MemberManagement extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		기능목록
		1. 검색창 검색
		
		*/
		
		
		//검색 form에서 값 받아오기
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		String acrt = req.getParameter("acrt");
		String userAll =req.getParameter("userType");
		if(acrt==null) acrt="notAcrt";	//체크박스 안했을 경우, null
		
		//search 여부 판단
		String isSearch = "n";
		
		if ((column == null && word == null && userAll == null) 
				|| (column.equals("") && word.equals("") && userAll.equals(""))) 
		{
			isSearch = "n";
		} else {
			isSearch = "y";
		}
		
		
		//DTO에 검색 정보 담기
		//DTO > HashMap
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("column", column);
		map.put("word", word);
		map.put("acrt", acrt);
		map.put("userType", userAll);
		map.put("isSearch", isSearch);
	
		
		
		
		//할일
		//1. DB 작업 > select > DAO 위임
		//1.5 데이터 조작
		//2. 반환값 전달 + JSP 호출
		
		//1.
		MemberManagementDAO dao = new MemberManagementDAO();
		ArrayList<MemberManagementDTO> memberList = dao.memberList(map);
		
		
		
		
		
		//2.
		req.setAttribute("memberList", memberList);
		req.setAttribute("column", column);
		req.setAttribute("word", word);
		req.setAttribute("acrt", acrt);
		req.setAttribute("user", userAll);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/membermanagement/membermanagement.jsp");
		dispatcher.forward(req, resp);
		
	}

}





















package com.test.main.admin.productmanagement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.admin.membermanagement.MemberManagementDAO;
import com.test.main.admin.membermanagement.MemberManagementDTO;

@WebServlet("/admin/productmanagement/productmanagement.do")
public class ProductManagement extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//검색 form에서 값 받아오기
		String column = req.getParameter("column");
		String word = req.getParameter("word");
		String acrt = req.getParameter("acrt");
		String order =req.getParameter("order");
		String category = req.getParameter("category");
		String state = req.getParameter("state");
		
		if(acrt==null) acrt="notAcrt";	//체크박스 안했을 경우, null
		
		//search 여부 판단
		String isSearch = "n";
		
		if ((column == null && word == null && order == null && category == null && state == null) 
				|| (column.equals("") && word.equals("") && order.equals("") && category.equals("") && state.equals(""))) 
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
		map.put("order", order);
		map.put("category", category);
		map.put("state", state);
		map.put("isSearch", isSearch);
		
		
		
		//1.
		ProductManagementDAO dao = new ProductManagementDAO();
		ArrayList<ProductManagementDTO> memberList = dao.productList(map);
		
		
		
		
		
		//2
		req.setAttribute("column", column);
		req.setAttribute("word", word);
		req.setAttribute("acrt", acrt);
		req.setAttribute("order", order);
		req.setAttribute("category", category);
		req.setAttribute("state", state);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/productmanagement/productmanagement.jsp");
		dispatcher.forward(req, resp);

	}

}
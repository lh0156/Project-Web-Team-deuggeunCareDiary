package com.test.main.basket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/basket/list.do")
public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 지금은 임시로 memberSeq로 해놓았지만 아이디로 교체도 쌉가능할듯
		// String id = req.getParameter("id");

		HttpSession session = req.getSession();
		BasketDAO dao = new BasketDAO();

		if (!session.getAttribute("id").equals(null)) {

			String id = session.getAttribute("id").toString();

			String memberSeq = dao.getMemberSeq(id);

			ArrayList<BasketDTO> list = new ArrayList<BasketDTO>();

			list = dao.basketList(memberSeq);

			int allPrice = 0;
			int productCount = list.size();

			for (BasketDTO dto : list) {
				allPrice += dto.getPrice();
			}

			req.setAttribute("list", list);
			req.setAttribute("allPrice", allPrice); // 총액을 표시하기 위함
			req.setAttribute("productCount", productCount); // n개를 표시하기 위함
			req.setAttribute("memberSeq", memberSeq);

		} else {
			System.out.println("id값이 없습니다.");
			return;
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/basket/list.jsp");
		dispatcher.forward(req, resp);
	}
}

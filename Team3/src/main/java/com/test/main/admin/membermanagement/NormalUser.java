package com.test.main.admin.membermanagement;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/membermanagement/normaluser.do")
public class NormalUser extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//할일
		//2. 데이터 가져오기(seq)
		//3. DB 작업 > update > DAO 위임
		//4. 결과 피드백 > JSP 위임
		String memberseq = req.getParameter("memberseq");
		
		
		//3
		MemberManagementDAO dao = new MemberManagementDAO();
		int result = dao.usernormal(memberseq);
		
		req.setAttribute("result", result);
		//4
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/membermanagement/normaluser.jsp");
		dispatcher.forward(req, resp);

	}

}
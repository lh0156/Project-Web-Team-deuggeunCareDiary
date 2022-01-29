package com.test.main.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/product/productlist.do")
public class ProductList extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
      
	   	
      
      
         String category = req.getParameter("category");
      
         if(category != null) {
            ArrayList<ProductDTO> dto = new ArrayList<ProductDTO>();
            ArrayList<ProductDTO> dtoScore = new ArrayList<ProductDTO>(); //review점수
            
            ProductDAO dao = new ProductDAO();
            
            dto = dao.getCProduct(category);
            
           
            
            dtoScore = dao.getProductReivewScore();
            
            int count = dto.size(); 
            req.setAttribute("count", count);
            
            req.setAttribute("list", dto);
            req.setAttribute("listScore", dtoScore);
            req.setAttribute("category",category);
            
         } else {
            
            String searchkeyword = req.getParameter("searchkeyword");
            
            String search = "n";
            
            if(searchkeyword == null) {
               search = "n"; 
               
            } else {
               search = "y";
            }
            
            HashMap<String,String> map = new HashMap<String,String>();
            
            map.put("searchkeyword", searchkeyword);
            map.put("search", search);
            
            
            
            
            ArrayList<ProductDTO> dto = new ArrayList<ProductDTO>();
            ArrayList<ProductDTO> dtoScore = new ArrayList<ProductDTO>(); //review점수
            
            ProductDAO dao = new ProductDAO();
            
            dto = dao.getProduct(map);
            
            
            dtoScore = dao.getProductReivewScore();
            
            req.setAttribute("list", dto);
            req.setAttribute("listScore", dtoScore);
         }
      
      
      
         
         
         
         
         
         
      RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productlist.jsp");
      dispatcher.forward(req, resp);
   }
}
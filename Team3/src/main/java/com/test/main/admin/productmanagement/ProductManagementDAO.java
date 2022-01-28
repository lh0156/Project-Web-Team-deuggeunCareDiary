package com.test.main.admin.productmanagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.admin.membermanagement.MemberManagementDTO;

public class ProductManagementDAO {
	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public ProductManagementDAO() {
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	//검색불러오기
	//서블릿에서 검색정보를 드릴테니 검색결과를 리턴해주세요
	public ArrayList<ProductManagementDTO> productList(HashMap<String, String> map) {
		try {
			String where="";
			
			if(map.get("isSearch").equals("y")) {
				//근접검색의 경우
				if(map.get("acrt").equals("notAcrt")) { //
					where = String.format("where %s like '%%%s%%' ", map.get("column"), map.get("word"));					
				
				//정확한 검색
				} else {
					where = String.format("where %s like '%s' ", map.get("column"), map.get("word"));										
				}
				
				//카테고리 검색
				if(!map.get("category").equals("전체")) {
					where += String.format(" and category='%s'", map.get("category"));					
				}
				
				//상품 검색
				if(!map.get("state").equals("전체")) {
					where += String.format(" and salesstatus='%s'", map.get("state"));					
				}
				
				//정렬하기
				if(map.get("order").equals("stockLow")) { //재고낮은
					where+="order by inventory";
				}else if(map.get("order").equals("stockHigh")) {
					where+="order by inventory desc";
				}else if(map.get("order").equals("priceHigh")) {
					where+="order by price desc";					
				}else if(map.get("order").equals("priceLow")) {
					where+="order by price";									
				}else if(map.get("order").equals("saleHigh")) {
					where+="order by totalstock desc";													
				}else if(map.get("order").equals("saleLow")) {
					where+="order by totalstock";																	
				}
			}
			String sql = String.format("select * from tblmember %s ", where);
			System.out.println(sql);
			
			rs = stat.executeQuery(sql);
			
			ArrayList<ProductManagementDTO> productList = new ArrayList<ProductManagementDTO>();
			
			
			
		} catch (Exception e) {
			System.out.println("ProductManagementDAO.productList()");
			e.printStackTrace();
		}
		
		
		
		return null;
	}

	

}





















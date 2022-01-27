package com.test.main.pay;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;
import com.test.main.basket.BasketDTO;

public class PayDAO {
	private Connection conn;
	private Statement stat; // 매개변수X
	private PreparedStatement pstat; // 매개변수O
	private ResultSet rs;

	public PayDAO() {

		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("basketDAO.basketDAO()");
			e.printStackTrace();
		}

	}

	public ArrayList<PayDTO> getList(String[] basketseq) {
		
		
		try {
			
			
			
			String sql = "select b.basketseq as basketseq, b.score as count, p.productname as productName, p.price as price, pu.imgurl as url, m.name as name, m.id as id"
					+ "    from tblbasket b"
					+ "        inner join  tblproduct p"
					+ "            on b.productseq = p.productseq"
					+ "                inner join tblproducturl pu"
					+ "                    on p.productseq = pu.productseq"
					+ "                        inner join tblmember m "
					+ "                            on b.memberseq = m.memberseq"
					+ "                                where b.basketseq = ?";
			
			ArrayList<PayDTO> result = new ArrayList<PayDTO>();
			
			for(int i=0; i<basketseq.length; ++i) {
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, basketseq[i]);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				PayDTO dto = new PayDTO();
				
				if (rs.getInt("count") == 100) {
					dto.setPrice((int) (rs.getInt("price") * rs.getInt("count") * 0.93));
				} else if (rs.getInt("count") == 50) {
					dto.setPrice((int) (rs.getInt("price") * rs.getInt("count") * 0.95));
				} else if (rs.getInt("count") == 30) {
					dto.setPrice((int) (rs.getInt("price") * rs.getInt("count") * 0.97));
				} else {
					dto.setPrice(rs.getInt("price") * rs.getInt("count"));
				}
				
				dto.setCount(rs.getInt("count"));

				dto.setProductName(rs.getString("productName"));
				dto.setName(rs.getString("name"));
				dto.setUrl(rs.getString("url"));
				dto.setId(rs.getString("id"));
				dto.setBasketseq(rs.getString("basketseq"));
				
				result.add(dto);
				
				}
			}
			
			return result;
			
			
		} catch (Exception e) {
			System.out.println("PayDAO.getList()");
			e.printStackTrace();
		}
		
		
		return null;
	}

}

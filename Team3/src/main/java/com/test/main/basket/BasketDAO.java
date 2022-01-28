package com.test.main.basket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class BasketDAO {

	private Connection conn;
	private Statement stat; // 매개변수X
	private PreparedStatement pstat; // 매개변수O
	private ResultSet rs;

	public BasketDAO() {

		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("basketDAO.basketDAO()");
			e.printStackTrace();
		}

	}

	// 멤버 Seq를 줄테니 장바구니 리스트를 주세요~
	public ArrayList<BasketDTO> basketList(String memberSeq) {

		try {
			String sql = "select b.basketseq as basketseq, b.score as count, p.productname as productName, p.price as price, pu.imgurl as url, m.name as name, m.id as id"
					+ "    from tblbasket b"
					+ "        inner join  tblproduct p"
					+ "            on b.productseq = p.productseq"
					+ "                inner join tblproducturl pu"
					+ "                    on p.productseq = pu.productseq"
					+ "                        inner join tblmember m "
					+ "                            on b.memberseq = m.memberseq"
					+ "                                where b.memberseq=?";
			
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, memberSeq);

			rs = pstat.executeQuery();

			ArrayList<BasketDTO> result = new ArrayList<BasketDTO>();

			while (rs.next()) {
				
				BasketDTO dto = new BasketDTO();

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

			return result;

		} catch (Exception e) {
			System.out.println("BasketDAO.basketList()");
			e.printStackTrace();
		}

		return null;
	}

	public int delBasket(String[] basketseq) {
		
		
		try {
			
			int result = 0;
			
			for(int i=0; i<basketseq.length; ++i) {
				String sql = "delete from tblbasket where basketseq = ?";
				
				pstat = conn.prepareStatement(sql);

				pstat.setString(1, basketseq[i]);
				pstat.executeUpdate();
				result++;
				
			}
			
			return result;
		} catch (Exception e) {
			System.out.println("BasketDAO.delBasket()");
			e.printStackTrace();
		}
		return 0;
	}

	public int addBasket(String count, String productseq, String memberseq) {
		
		try {
			
			String sql = "insert into tblBasket values('BS'||basket_seq.nextVal, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, memberseq);
			pstat.setString(2, productseq);
			pstat.setString(3, count);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BasketDAO.addBasket()");
			e.printStackTrace();
		}
		
		return 0;
	}

	public String getMemberSeq(String id) {

		try {
			
			String sql = "select Memberseq from tblmember where id = ?";
			
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("Memberseq");
			}
			
		} catch (Exception e) {
			System.out.println("BasketDAO.getMemberSeq()");
			e.printStackTrace();
		}
		
		return null;
	}
	
	
}

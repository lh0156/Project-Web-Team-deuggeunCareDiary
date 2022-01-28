package com.test.main.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;


public class ProductDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public ProductDAO() {
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("productDAO.productDAO()");
			e.printStackTrace();
		}
		
	}


	public ArrayList<ProductDTO> getProduct(HashMap<String, String> map) {
	 	//ArrayList로 안해두면 상품 하나만 반환하므로 ArrayList처리.
	try {
		
		String sql = "      SELECT DISTINCT P.productseq AS productseq, "
				+ "P.productname AS productname, "
				+ "P.capacity AS capacity, "
				+ "P.category AS category, "
				+ "P.price AS price, "
				+ "PD.imgurl AS producturl "
				+ "from tblproduct P "
				+ "INNER JOIN tblproducturl PD "
				+ " ON P.productseq = PD.productseq "
				+ "INNER JOIN tbleachorder EO "
				+ "ON P.productseq = EO.productseq ";
				
		
		String order = "order by P.productseq ";
		
		
		
		String where = "";
	
		if(map.get("search").equals("y"))  {
		
			where = String.format("where productname like '%%%s%%' ", map.get("searchkeyword"));
			
			sql = sql +  where + order;
		} else {
			sql = sql + order;
		}
		
		
		
	
		pstat=conn.prepareStatement(sql); //오라클과 연결한다
		
		//pstat.setString(n, 값); -> ?이 들어간 부분을 %s처럼 채워준다
		
		rs=pstat.executeQuery(); //오라클에 쿼리문을 쏴준다
		
		//이걸 안해주셨습니다
		
		ArrayList<ProductDTO> result = new ArrayList<ProductDTO>();
		
		while(rs.next()) {
			
			ProductDTO dto = new ProductDTO(); //객체 생성
			
			dto.setProductseq(rs.getString("productseq"));
			dto.setProductname(rs.getString("productname"));
			dto.setCapacity(rs.getString("capacity"));
			dto.setCategory(rs.getString("category"));
			dto.setPrice(rs.getInt("price"));
			dto.setProducturl(rs.getString("producturl"));
	
		
			
			result.add(dto);
		}
		
		return result;
		
	} catch (Exception e) {
		System.out.println("ProductDAO.getProductImg()");
		e.printStackTrace();
	}
	return null;
}


			public ArrayList<ProductDTO> getProductReivewScore() {
				//ArrayList로 안해두면 상품 하나만 반환하므로 ArrayList처리.
				try {
					
					
					String sql="   SELECT DISTINCT P.productseq AS productseq, "
							+ "                round(AVG(R.reviewpoint),1) AS reviewpoint, "
							+ "                count(*) as reviewcount "
							+ "                     FROM tblproduct P "
							+ "                INNER JOIN tbleachorder EO "
							+ "                    ON P.productseq = EO.productseq "
							+ "                INNER JOIN tblreview R "
							+ "                    ON EO.eachorderseq = R.eachorderseq "
							+ "                       GROUP BY P.productseq ";
					
					
					pstat = conn.prepareStatement(sql); //오라클과 연결한다.
					
					//pstat.setString(n, 값); -> ?이 들어간 부분을 %s처럼 채워준다
					
					rs=pstat.executeQuery(); //오라클에 쿼리문을 쏴준다
					
					ArrayList<ProductDTO> result = new ArrayList<ProductDTO>();

					
					while(rs.next()) {
						
						ProductDTO dto = new ProductDTO(); //객체 생성
						
						dto.setReviewcount(rs.getInt("reviewcount"));
						dto.setProductseq(rs.getString("productseq"));
						dto.setReviewpoint(rs.getInt("reviewpoint"));
						
						result.add(dto);
						
						
					}
					
					return result;
					
				} catch (Exception e) {
					System.out.println("ProductDAO.getProductReivewScore()");
					e.printStackTrace();
				}
				return null;
			}


			//productDetail이 프로덕트 시퀀스를 줄테니 값을 주세요~
			public ProductDTO getDTO(String productseq) {
				
				
				try {
					
				
					String sql = "SELECT DISTINCT P.productseq AS productseq, P.productname AS productname, P.capacity AS capacity,"
							+ "    P.category AS category, P.price AS price, PD.imgurl AS producturl from tblproduct P "
							+ "    INNER JOIN tblproducturl PD "
							+ "        ON P.productseq = PD.productseq"
							+ "            INNER JOIN tbleachorder EO"
							+ "                ON P.productseq = EO.productseq"
							+ "                    where P.productseq = ?";
					
					pstat = conn.prepareStatement(sql); //오라클과 연결한다.
					pstat.setString(1, productseq);
					rs=pstat.executeQuery(); //오라클에 쿼리문을 쏴준다
					
					
					if(rs.next()) {
						
						ProductDTO dto = new ProductDTO(); //객체 생성
						
						dto.setProductseq(rs.getString("productseq"));
						dto.setProductname(rs.getString("productname"));
						dto.setCapacity(rs.getString("capacity"));
						dto.setCategory(rs.getString("category"));
						dto.setPrice(rs.getInt("price"));
						dto.setProducturl(rs.getString("producturl"));
						
						return dto;
						
					}
					
					
					
				} catch (Exception e) {
					System.out.println("ProductDAO.getDTO()");
					e.printStackTrace();
				}
				
				return null;
			}


//			public ArrayList<ProductDTO> get(String productseq) {
//				try {
//					
//					String sql =" SELECT DISTINCT P.productseq AS productseq, "
//							+ " P.productname AS productname, "
//							+ "  P.capacity AS capacity, "
//							+ "  P.category AS category, "
//							+ "  P.price AS price, "
//							+ "   PD.imgurl AS producturl "
//							+ "  from tblproduct P "
//							+ "   INNER JOIN tblproducturl PD "
//							+ "   ON P.productseq = PD.productseq"
//							+ "  INNER JOIN tbleachorder EO"
//							+ "    ON P.productseq = EO.productseq"
//							+ "  where p.productseq = '?'";
//					
//					pstat = conn.prepareStatement(sql);
//					pstat.setString(1, productseq);
//					
//					pstat.executeQuery();
//					
//					
//					
//				} catch (Exception e) {
//					System.out.println("ProductDAO.get()");
//					e.printStackTrace();
//				}
//				return null;
//			}


		
		
	
	
}
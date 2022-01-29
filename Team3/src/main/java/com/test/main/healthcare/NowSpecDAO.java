package com.test.main.healthcare;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class NowSpecDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public NowSpecDAO() {
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("NowSpecDTO.NowSpecDTO");
			e.printStackTrace();
		}
		
	}
	
	

	//서블릿에서 멤버시퀀스와 그 멤버의 헬스정보를 줄테니 insert 부탁
	public void insertNowSpec(NowSpecDTO dto) {
		try {
			String sqlWeight="INSERT INTO tblWeight VALUES ('WG'||Weight_Seq.nextVal, ?, sysdate, ?)";
			String sqlFat="INSERT INTO tblFat VALUES ('FA'||Fat_Seq.nextVal, ?, sysdate, ?)";
			String sqlMuscle="INSERT INTO tblMuscle VALUES ('MS'||Muscle_Seq.nextVal, ?, sysdate, ?)";
			
			//몸무게 값이 null이 아닐 때
			if(!dto.getTxtweight().equals("") && !(dto.getTxtweight()=="")) {
				//Weight
				pstat = conn.prepareStatement(sqlWeight);
				pstat.setString(1, dto.getTxtweight());
				pstat.setString(2, dto.getMemberSeq());
				pstat.executeUpdate();
				pstat.clearParameters();				
			}
			
		
			if(!dto.getTxtfat().equals("") && !(dto.getTxtfat()=="")) {
				//Fat
				pstat = conn.prepareStatement(sqlFat);
				pstat.setString(1, dto.getTxtfat());
				pstat.setString(2, dto.getMemberSeq());
				pstat.executeUpdate();
				pstat.clearParameters();
			}
			
			
			if(!dto.getTxtmuscle().equals("") && !(dto.getTxtmuscle()=="")) {
				//Muscle
				pstat = conn.prepareStatement(sqlMuscle);
				pstat.setString(1, dto.getTxtmuscle());
				pstat.setString(2, dto.getMemberSeq());
				pstat.executeUpdate();
				pstat.clearParameters();
			}
			
		} catch (Exception e) {
			System.out.println("NowSpecDAO.insertNowSpec()");
			e.printStackTrace();
		}
		
		
	}
	
	
				//서블릿에서 멤버시퀀스와 그 멤버의 체중정보를 줄테니 insert 부탁
				public void insertWeight(NowSpecDTO dto) {
						try {
			String sqlWeight="INSERT INTO tblWeight VALUES ('WG'||Weight_Seq.nextVal, ?, sysdate, ?)";
			
			//몸무게 값이 null이 아닐 때
			if(!dto.getTxtweight().equals("") && !(dto.getTxtweight()=="")) {
				//Weight
				pstat = conn.prepareStatement(sqlWeight);
				pstat.setString(1, dto.getTxtweight());
				pstat.setString(2, dto.getMemberSeq());
				pstat.executeUpdate();
				pstat.clearParameters();				
			}
			
		} catch (Exception e) {
			System.out.println("NowSpecDAO.insertweight()");
			e.printStackTrace();
		}
		
		
	}
				
				
				//서블릿에서 멤버시퀀스와 그 멤버의 헬스정보를 줄테니 insert 부탁
				public void insertFat(NowSpecDTO dto) {
					try {
						String sqlFat="INSERT INTO tblFat VALUES ('FA'||Fat_Seq.nextVal, ?, sysdate, ?)";
						if(!dto.getTxtfat().equals("") && !(dto.getTxtfat()=="")) {
							//Fat
							pstat = conn.prepareStatement(sqlFat);
							pstat.setString(1, dto.getTxtfat());
							pstat.setString(2, dto.getMemberSeq());
							pstat.executeUpdate();
							pstat.clearParameters();
						}
						
					} catch (Exception e) {
						System.out.println("NowSpecDAO.insertFat()");
						e.printStackTrace();
					}
	
				}
				
				
				//서블릿에서 멤버시퀀스와 그 멤버의 헬스정보를 줄테니 insert 부탁
				public void insertMuscle(NowSpecDTO dto) {
					try {
						String sqlMuscle="INSERT INTO tblMuscle VALUES ('MS'||Muscle_Seq.nextVal, ?, sysdate, ?)";
						
					
						if(!dto.getTxtmuscle().equals("") && !(dto.getTxtmuscle()=="")) {
							//Muscle
							pstat = conn.prepareStatement(sqlMuscle);
							pstat.setString(1, dto.getTxtmuscle());
							pstat.setString(2, dto.getMemberSeq());
							pstat.executeUpdate();
							pstat.clearParameters();
						}
						
					} catch (Exception e) {
						System.out.println("NowSpecDAO.insertMuscle()");
						e.printStackTrace();
					}
					
					
				}

				public NowSpecDTO getNowSpec(String memberseq) {
			        try {

			            String sql= "select weight, fat, muscle from "
			            		+ "(select rownum, t1.* from (select * from tblWeight order by weightdate desc) t1 where memberseq=? and rownum=1) s1 "
			            		+ "inner join  "
			            		+ "(select rownum, t2.* from (select * from tblFat order by fatdate desc) t2 where memberseq=? and rownum=1) s2 "
			            		+ "on s1.memberseq=s2.memberseq "
			            		+ "inner join "
			            		+ "(select rownum, t3.* from (select * from tblmuscle order by muscledate desc) t3 where memberseq=? and rownum=1) s3 "
			            		+ "on s1.memberseq=s3.memberseq ";


			                pstat = conn.prepareStatement(sql);
			                pstat.setString(1, memberseq);
			                pstat.setString(2, memberseq);
			                pstat.setString(3, memberseq);
			                rs = pstat.executeQuery();

			                NowSpecDTO dto = new NowSpecDTO();
			                if(rs.next()) {

			                    dto.setTxtfat(rs.getString("fat"));
			                    dto.setTxtweight(rs.getString("weight"));
			                    dto.setTxtmuscle(rs.getString("muscle"));



			                }

			                return dto;

			        } catch (Exception e) {
			            System.out.println("NowSpecDAO.getNowSpec()");
			            e.printStackTrace();
			        }
			        return null;
			    }
	
	
	
}








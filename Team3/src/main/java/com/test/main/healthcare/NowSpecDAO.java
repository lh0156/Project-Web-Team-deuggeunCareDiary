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
	
	public NowSpecDTO getNowSpec(String memberseq) {
        try {
        	
            String sql="select * from "
                    + "(select * from "
                    + "(select t1.* from tblWeight t1 order by t1.weightdate desc) "
                    + "WHERE ROWNUM= 1) t1 "
                    + "inner join "
                    + "(select * from "
                    + "(select * from tblFat t1 order by fatdate desc) "
                    + "WHERE ROWNUM= 1) t2 on t1.memberseq = t2.memberseq "
                    + "inner join  "
                    + "(select * from  "
                    + "(select * from tblmuscle order by muscledate desc) "
                    + "WHERE ROWNUM= 1) t3 on t1.memberseq = t3.memberseq "
                    + "WHERE memberSeq=? ";


                pstat = conn.prepareStatement(sql);
                pstat.setString(1, memberseq);
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








package com.test.main.healthcare;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class WantSpecDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public WantSpecDAO() {
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println(" WantSpecDTO. WantSpecDTO");
			e.printStackTrace();
		}
		
	}

	public void insertWantSpec(WantSpecDTO dto) {
		try {
			String sql = "insert into tblWantSpec VALUES ('WS'||wantSpec_seq.nextVal, ?, ?, ?, sysdate, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getWantWeight());
			pstat.setString(2, dto.getWantFat());
			pstat.setString(3, dto.getWantMuscle());
			pstat.setString(4, dto.getWantGoal());
			pstat.setString(5, dto.getMemberSeq());
			
			pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("WantSpecDAO.insertWantSpec()");
			e.printStackTrace();
		}
	}

	

	
	
	
	
	
}








package com.test.main.healthcare;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MemberDAO() {
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("MemberDTO.MemberDTO");
			e.printStackTrace();
		}
		
	}
	
	//멤버시퀀스를 줄테니 그 멤버의 정보를 주세요. (성별, 나이)
	public MemberDTO getUserInfo(String memberseq) {
		try {
			String sql = "select memberSeq, gender, jumin from tblmember where memberseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			rs=pstat.executeQuery();
			
			MemberDTO dto = new MemberDTO();
			
			while(rs.next()) {
				dto.setMemberSeq(rs.getString("memberSeq"));
				dto.setGender(rs.getString("gender"));
				dto.setJumin(rs.getString("jumin"));
				
				
				
				return dto;
			}
		} catch (Exception e) {
			System.out.println("MemberDAO.getUserInfo()");
			e.printStackTrace();
		}
		return null;
	}
	
	
	
}








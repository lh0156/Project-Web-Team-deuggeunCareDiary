package com.test.main.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

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
			System.out.println("MemberDAO.MemberDAO()");
			e.printStackTrace();
		}
		
	}
	
	//LoginOk 서블릿이 아이디와 암호를 줄테니 개인 정보를 돌려주세요. > 로그인 처리
	public MemberDTO login(MemberDTO dto) {
		
		try {
			//? > 오라클 매개변수 > %s 역할
			String sql = "select * from tblmember where id=? and password=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				MemberDTO result = new MemberDTO();
				
				result.setId(rs.getString("id"));
				result.setName(rs.getString("name"));
				result.setGrade(rs.getString("grade"));
				result.setAccountStatus(rs.getString("accountstatus"));
				result.setMileage(rs.getString("mileage"));
				
				return result;				
			}			
		} catch (Exception e) {
			System.out.println("MemberDAO.login()");
			e.printStackTrace();
		}
		return null;
		
	}//MemberDTO
	
	
	//signupok서블릿에서 사용자가 입력한 값을 줄테니 tblmember에 insert해주세요. > 회원 가입
	public int memberInsert(MemberDTO dto) {
		
		try {
			
			String sql = "Insert into tblMember (memberSeq,NAME,ID,PASSWORD,JUMIN,GENDER,POSTALCODE,ADDRESS,TEL,EMAIL,GRADE,ACCOUNTSTATUS,MILEAGE) values ('MB'||Member_Seq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?, ?, '회원', default, default)";

			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getPw());
			pstat.setString(4, dto.getJumin());
			pstat.setString(5, dto.getGender());
			pstat.setString(6, dto.getPostalcode());
			pstat.setString(7, dto.getAddress());
			pstat.setString(8, dto.getTel());
			pstat.setString(9, dto.getEmail());
			
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.memberInsert()");
			e.printStackTrace();
		}
		
		return 0;
	}
	//findidok에서 전화번호 줄테니 해당하는 회원 이름이랑 id주세요~!
	public MemberDTO idSearch(String tel) {
		
		
		try {
			
			String sql = "select id, name from tblMember where tel = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, tel);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.idSearch()");
			e.printStackTrace();
		}
		
		
		return null;
	}
	//findpwok에서 이름, 아이디, 휴대전화번호 줄테니 3가지정보 모두 일치하는 등록된 회원이 있는지 확인하고 해당회원의 정보를 주세요~
	public MemberDTO pwSearch(MemberDTO dto) {
		
		try {
			
			String sql = "select * from tblMember where name = ? and id = ? and tel = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getTel());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				MemberDTO result = new MemberDTO();
				result.setName(rs.getString("name"));
				result.setId(rs.getString("id"));
				result.setTel(rs.getString("tel"));
				return result;
			}
			
		} catch (Exception e) {
			System.out.println("MemberDAO.pwSearch()");
			e.printStackTrace();
		}
		
		return null;
	}
	//새로설정한 비번과 회원정보를 줄테니 비밀번호를 업데이트해주시고 결과값을 0,1로 반환해주세요~!
	public int rePw(MemberDTO dto) {
		
		try {
			
			String sql = "update tblMember set password = ? where id = ? and name = ? and tel = ?";
			pstat = conn.prepareStatement(sql);
			System.out.println(dto.getPw());
			System.out.println(dto.getId());
			System.out.println(dto.getName());
			System.out.println(dto.getTel());
			pstat.setString(1, dto.getPw());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getName());
			pstat.setString(4, dto.getTel());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.rePw()");
			e.printStackTrace();
		}
		
		return 0;
	}

}

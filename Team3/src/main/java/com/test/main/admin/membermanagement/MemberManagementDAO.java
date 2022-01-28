package com.test.main.admin.membermanagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class MemberManagementDAO {
	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public MemberManagementDAO() {
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	//검색불러오기
	//서블릿에서 검색정보를 드릴테니 검색결과를 리턴해주세요
	public ArrayList<MemberManagementDTO> memberList(HashMap<String, String> map) {
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
				
				
//				//정확한 검색의 경우	
//				if(map.get("acrt").equals("accurate")) {
//				}else { //비슷한 검색의 경우
//				}
				
				//유저 타입 1) 모두 2) 일반 3) 정지
				if(map.get("userType").equals("normalUser")) { //일반 유저의 경우
					where+=String.format(" and accountStatus='일반'");					
				} else if(map.get("userType").equals("stopUser")) { //일반유저의 경우
					where+=String.format(" and accountStatus='정지'");
				}
				
			}
			
			String sql = String.format("select * from tblmember %s ", where);
			System.out.println(sql);
			
			rs = stat.executeQuery(sql);
			
			ArrayList<MemberManagementDTO> memberList = new ArrayList<MemberManagementDTO>();
			
			while(rs.next()) {
				MemberManagementDTO dto = new MemberManagementDTO();
				dto.setMemberseq(rs.getString("memberseq"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setJumin(rs.getString("jumin"));
				dto.setGender(rs.getString("gender"));
				dto.setPostalcode(rs.getString("postalcode"));
				dto.setAddress(rs.getString("address"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setGrade(rs.getString("grade"));
				dto.setAccountstatus(rs.getString("accountstatus"));
				dto.setMileage(rs.getInt("mileage"));
				
				memberList.add(dto);
			}
			return memberList;
			
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.memberList()");
			e.printStackTrace();
		}
		
		return null;
	}


	//서블릿에서 memberseq를 줄테니 그 seq의 accountstatus를 바꿔주세요
	public int userstop(String memberseq) {
		try {
			String sql = "update tblMember set accountstatus = '정지' where memberseq=?";
			System.out.println(sql+", "+memberseq);
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.userstop()");
			e.printStackTrace();
		}
		return 0;
	}


	//서블릿에서 memberseq를 줄테니 그 seq의 accountstatus를 바꿔주세요
	public int usernormal(String memberseq) {
		try {
			String sql = "update tblMember set accountstatus = '일반' where memberseq=?";
			System.out.println(sql+", "+memberseq);
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.usernormal()");
			e.printStackTrace();
		}
		return 0;
	}

	
	
	// 서블릿에서 memberseq를 줄테니 그 seq의 잡다한 정보(유저 상세보기 정보)를 주세요
	public MemberManagementDTO getAll(String memberseq) {
		try {
			String sql="select t1.memberseq, t1.name, t1.id, t1.password, t1.jumin, t1.gender, t1.postalcode, t1.address, t1.tel, t1.email, t1.grade, t1.accountstatus, t1.mileage, v1.\"totalMileage\", v1.\"totalPaid\", v1.\"totalQA\", v1.\"totalReview\", v1.totalorder from vwmembertotal v1 inner join tblmember t1 on v1.memberseq=t1.memberseq where t1.memberseq=?";
			System.out.println(sql + ", "+memberseq);
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			rs=pstat.executeQuery();
			
			MemberManagementDTO dto = new MemberManagementDTO();
			System.out.println("test");
			while(rs.next()) {
				System.out.println("test"+rs.getString("memberseq"));
				dto.setMemberseq(rs.getString("memberseq"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setJumin(rs.getString("jumin"));
				dto.setGender(rs.getString("gender"));
				dto.setPostalcode(rs.getString("postalcode"));
				dto.setAddress(rs.getString("address"));
				dto.setTel(rs.getString("tel"));
				dto.setEmail(rs.getString("email"));
				dto.setGrade(rs.getString("grade"));
				dto.setAccountstatus(rs.getString("accountstatus"));
				dto.setMileage(rs.getInt("mileage"));
				dto.setTotalMileage(rs.getInt("totalmileage"));
				dto.setTotalPaid(rs.getInt("totalpaid"));
				dto.setTotalQA(rs.getInt("totalqa"));
				dto.setTotalReview(rs.getInt("totalreview"));
				dto.setTotalOrder(rs.getInt("totalOrder"));
				return dto;
			}
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.getAll()");
			e.printStackTrace();
		}
		return null;
	}

	//멤버 시퀀스를 줄테니 그 멤버의 주문서 정보를 주세요
	public ArrayList<ManagementOrderDTO> getUserOrder(String memberseq) {
		try {
			String sql = "select "
					+ "t1.orderseq, t1.courier, t1.invoicenum, t1.paymentmethod, t1.orderdate, t1.orderpostalcode, t1.orderaddress, sum(t3.price*t2.stock*((100-t2.discountrate)*0.01)) AS price "
					+ "from "
					+ "tblOrder t1 "
					+ "inner join tblEachOrder t2 on t1.orderseq = t2.orderseq "
					+ "inner join tblProduct t3 on t2.productseq = t3.productseq "
					+ "where t1.memberseq=? "
					+ "group by t1.orderseq, t1.courier, t1.invoicenum, t1.paymentmethod, t1.orderdate, t1.orderpostalcode, t1.orderaddress";
			System.out.println(sql + ", "+memberseq);
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			rs=pstat.executeQuery();
			
			ArrayList<ManagementOrderDTO> subDto = new ArrayList<ManagementOrderDTO>(); 
			
			
			while(rs.next()) {
				ManagementOrderDTO dto = new ManagementOrderDTO();
				dto.setOrderseq(rs.getString("orderseq"));
				dto.setCourier(rs.getString("courier"));
				dto.setInvoicenum(rs.getString("invoicenum"));
				dto.setPaymentmethod(rs.getString("paymentmethod"));
				dto.setOrderdate(rs.getString("orderdate"));
				dto.setOrderpostalcode(rs.getString("orderpostalcode"));
				dto.setOrderaddress(rs.getString("orderaddress"));
				dto.setPrice(rs.getString("price"));
				
				subDto.add(dto);
			}
			return subDto;
			
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.getUserOrder()");
			e.printStackTrace();
		}
		
		return null;
	}

	//멤버 시퀀스를 줄테니 그 맴버가 쓴 문의글 어레이리스트 DTO를 주세요
	public ArrayList<ManagementQaDTO> getUserQa(String memberseq) {
		try {
			String sql = "select qaseq, qacategory, qasubject, qacontent, qaanswer, qadate from tblqa where memberseq = ?";
			System.out.println(sql + ", "+memberseq);
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			rs=pstat.executeQuery();
			
			ArrayList<ManagementQaDTO> subDto = new ArrayList<ManagementQaDTO>(); 
			
			while(rs.next()) {
				ManagementQaDTO dto = new ManagementQaDTO();
				
				dto.setQaseq(rs.getString("qaseq"));
				dto.setQacategory(rs.getString("qacategory"));
				dto.setQasubject(rs.getString("qasubject"));
				dto.setQacontent(rs.getString("qacontent"));
				dto.setQaanswer(rs.getString("qaanswer"));
				dto.setQadate(rs.getString("qadate"));
				
				subDto.add(dto);
			}
			return subDto;
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.getUserQa()");
			e.printStackTrace();
		}		
		return null;
	}


	public ArrayList<ManagementReviewDTO> getUserReview(String memberseq) {
		try {
			String sql="select\r\n"
					+ "t1.reviewseq, t3.productseq, t3.productname, t1.reviewcontent, t1.reviewpoint, t1.reviewdate "
					+ "from "
					+ "tblReview t1 "
					+ "inner join tblEachOrder t2 on t1.eachorderseq = t2.eachorderseq "
					+ "inner join tblproduct t3 on t2.productseq = t3.productseq "
					+ "inner join tblorder t4 on t4.orderseq = t2.orderseq "
					+ "where t4.memberseq = ?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, memberseq);
			
			rs=pstat.executeQuery();
			
			ArrayList<ManagementReviewDTO> subDto = new ArrayList<ManagementReviewDTO>();
			while(rs.next()) {
				ManagementReviewDTO dto = new ManagementReviewDTO();
				dto.setReviewseq(rs.getString("reviewseq"));
				dto.setProductseq(rs.getString("productseq"));
				dto.setProductname(rs.getString("productname"));
				dto.setReviewcontent(rs.getString("reviewcontent"));
				dto.setReviewpoint(rs.getString("reviewpoint"));
				dto.setReviewdate(rs.getString("reviewdate"));
				
				subDto.add(dto);
			}
			return subDto;
		} catch (Exception e) {
			System.out.println("MemberManagementDAO.getUserReview()");
			e.printStackTrace();
		}
		
		
		return null;
	}


	
	
	
}



































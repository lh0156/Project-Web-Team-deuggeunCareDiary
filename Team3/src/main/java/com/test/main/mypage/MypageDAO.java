package com.test.main.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class MypageDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MypageDAO() {
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
		} catch (Exception e) {
			System.out.println("MypageDAO.MypageDAO()");
			e.printStackTrace();
		}
		
	}
	
	//myreviewmanage에서 세션에 담긴 아이디를 넘겨줄테니 그 아이디의 리뷰정보를 돌려주세요~
	public ArrayList<MypageDTO> reviewGet(String id) {
		
		try {
			String sql = "select pd.productname as \"productname\", o.orderdate as \"orderdate\", rv.reviewcontent as \"reviewcontent\", rv.reviewdate as \"reviewdate\" from tblmember m inner join tblorder o on m.memberseq = o.memberseq inner join tblEachorder eo on eo.orderseq = o.orderseq inner join tblreview rv on eo.eachorderseq = rv.eachorderseq inner join tblproduct pd on eo.productseq = pd.productseq where m.id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			
			ArrayList<MypageDTO> list = new ArrayList<MypageDTO>();
			while (rs.next()) {
				MypageDTO dto = new MypageDTO();
				
				dto.setProductname(rs.getString("productname"));
				dto.setOrderdate(rs.getString("orderdate"));
				dto.setReviewcontent(rs.getString("reviewcontent"));
				dto.setReviewdate(rs.getString("reviewdate"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("MypageDAO.reviewGet()");
			e.printStackTrace();
		}
		
		return null;
	}
	
	//myqamanage서블릿에서 아이디를 줄테니 그 아이디에 해당하는 문의내역을 주세요~
	public ArrayList<MypageDTO> qaGet(String id) {
		
		try {
			
			String sql = "select qa.qacategory as \"qacategory\", qa.qaanswer as \"qaanswer\", qa.qacontent as \"qacontent\", qa.qadate as \"qadate\" from tblmember mb inner join tblqa qa on mb.memberseq = qa.memberseq where id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<MypageDTO> list = new ArrayList<MypageDTO>();
			
			while (rs.next()) {
				MypageDTO dto = new MypageDTO();
				
				dto.setQACategory(rs.getString("qacategory"));
				dto.setQAAnswer(rs.getString("qaanswer"));
				dto.setQAContent(rs.getString("qacontent"));
				dto.setQADate(rs.getString("qadate"));
				
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("MypageDAO.qaGet()");
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<MypageDTO> myOrderGet(String id) {
		
		try {
			
			
			String sql = "select eo.eachorderseq as \"eachorderseq\", od.orderdate as \"orderdate\", eo.process as \"process\", od.orderdate+2 as \"postdate\", pd.productname as \"productname\", eo.stock as \"stock\", od.courier as \"courier\", od.invoicenum as \"invoicenum\", (pd.price*eo.stock)*(1-(eo.discountrate/100)) as \"totalprice\", pu.imgurl as \"imgurl\" from tblmember mb inner join tblorder od on mb.memberseq = od.memberseq inner join tbleachorder eo on eo.orderseq = od.orderseq inner join tblproduct pd on pd.productseq = eo.productseq inner join tblproducturl pu on pu.productseq = pd.productseq where mb.id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<MypageDTO> list = new ArrayList<MypageDTO>();
						
			while (rs.next()) {
				MypageDTO dto = new MypageDTO();
				
				dto.setOrderdate(rs.getString("orderdate"));
				dto.setProcess(rs.getString("process"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setProductname(rs.getString("productname"));
				dto.setStock(rs.getString("stock"));
				dto.setTotalprice(rs.getString("totalprice"));
				dto.setImgurl(rs.getString("imgurl"));
				dto.setCourier(rs.getString("courier"));
				dto.setInvoicenum(rs.getString("invoicenum"));
				dto.setEachorderseq(rs.getString("eachorderseq"));
				
				list.add(dto);
				
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("MypageDAO.myOrderGet()");
			e.printStackTrace();
		}
		
		return null;
	}
	//orderfix서블릿에서 개별주문번호를 줄테니 해당시퀀스의 레코드의 process를 구매확정으로 업데이트해주시고 결과를 1,0으로 반환해주세요.
	public int orderFix(String eachorderseq) {
		
		try {
			
			String sql = "update tbleachorder set process = '구매확정' where eachorderseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, eachorderseq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MypageDAO.orderFix()");
			e.printStackTrace();
		}		
		
		return 0;
	}

	

	public MypageDTO orderRe(String eachorderseq) {
		
		
		
		try {
			
			String sql = "select od.orderaddress as \"orderaddress\", sysdate+2 as \"redate\", (pd.price*eo.stock)*(1-(eo.discountrate/100)) as \"totalprice\", od.paymentmethod as \"pay\", od.usemileage as \"usemileage\" from tbleachorder eo inner join tblorder od on od.orderseq = eo.orderseq inner join tblproduct pd on pd.productseq = eo.productseq where eachorderseq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, eachorderseq);
			
			rs = pstat.executeQuery();
			
			
			if (rs.next()) {
				MypageDTO dto = new MypageDTO();
				
				
				dto.setTotalprice(rs.getString("totalprice"));
				dto.setPay(rs.getString("pay"));
				dto.setUsemileage(rs.getString("usemileage"));
				dto.setRedate(rs.getString("redate"));
				dto.setOrderaddress(rs.getString("orderaddress"));
				return dto;
			}
			
			
		} catch (Exception e) {
			System.out.println("MypageDAO.orderRe()");
			e.printStackTrace();
		}
		return null;
	}
}

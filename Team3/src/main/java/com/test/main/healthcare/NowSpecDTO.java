package com.test.main.healthcare;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class NowSpecDTO {
	
	private String memberSeq;	 
	private String txtgender;
	private String txtage;
	private String txtweight;
	private String txtfat;
	private String txtmuscle;
	
	
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getTxtgender() {
		return txtgender;
	}
	public void setTxtgender(String txtgender) {
		this.txtgender = txtgender;
	}
	public String getTxtage() {
		return txtage;
	}
	public void setTxtage(String txtage) {
		this.txtage = txtage;
	}
	public String getTxtweight() {
		return txtweight;
	}
	public void setTxtweight(String txtweight) {
		this.txtweight = txtweight;
	}
	public String getTxtfat() {
		return txtfat;
	}
	public void setTxtfat(String txtfat) {
		this.txtfat = txtfat;
	}
	public String getTxtmuscle() {
		return txtmuscle;
	}
	public void setTxtmuscle(String txtmuscle) {
		this.txtmuscle = txtmuscle;
	}
	

	
}








	 
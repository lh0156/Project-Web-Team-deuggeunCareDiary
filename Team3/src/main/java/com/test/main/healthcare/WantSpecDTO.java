package com.test.main.healthcare;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class WantSpecDTO {
	
	private String wantSpecSeq;
	private String wantWeight;
	private String wantFat; 		 
	private String wantMuscle;
	private String wantDate; 		 
	private String wantGoal;		 
	private String memberSeq;
	
	
	
	public String getWantWeight() {
		return wantWeight;
	}
	public void setWantWeight(String wantWeight) {
		this.wantWeight = wantWeight;
	}
	public String getWantFat() {
		return wantFat;
	}
	public void setWantFat(String wantFat) {
		this.wantFat = wantFat;
	}
	public String getWantMuscle() {
		return wantMuscle;
	}
	public void setWantMuscle(String wantMuscle) {
		this.wantMuscle = wantMuscle;
	}
	public String getWantGoal() {
		return wantGoal;
	}
	public void setWantGoal(String wantGoal) {
		this.wantGoal = wantGoal;
	}
	public String getWantSpecSeq() {
		return wantSpecSeq;
	}
	public void setWantSpecSeq(String wantSpecSeq) {
		this.wantSpecSeq = wantSpecSeq;
	}
	
	public String getWantDate() {
		return wantDate;
	}
	public void setWantDate(String wantDate) {
		this.wantDate = wantDate;
	}
	
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	



	
}




 
		  
		  
		  
		  
		  
		    
		  
	 



	 
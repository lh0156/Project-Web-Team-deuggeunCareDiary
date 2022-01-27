package com.test.main.product;

public class ProductDTO {
	
	private String productseq; //제품번호
	private String productname; //제품 이름
	private String capacity; // 제품 용량
	private String category; // 제품 카테고리
	private int	   price;  // 제품 가격
	private int    inventory; //제품 수량
	private String productdescription; // 제품 설명
	
	
	private int reviewcount;
	
	private String salesstatus; // 제품 판매 상태
	private String producturl; // 제품 경로
	
	
	private String reviewcontent;
	private int reviewpoint; // 리뷰점수 평균값 연산을 위함
	
	
	public String getProductseq() {
		return productseq;
	}
	public void setProductseq(String productseq) {
		this.productseq = productseq;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	public String getSalesstatus() {
		return salesstatus;
	}
	public void setSalesstatus(String salesstatus) {
		this.salesstatus = salesstatus;
	}
	public String getProducturl() {
		return producturl;
	}
	public void setProducturl(String producturl) {
		this.producturl = producturl;
	}
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	public int getReviewpoint() {
		return reviewpoint;
	}
	public void setReviewpoint(int reviewpoint) {
		this.reviewpoint = reviewpoint;
	}
	public int getReviewcount() {
		return reviewcount;
	}
	public void setReviewcount(int reviewcount) {
		this.reviewcount = reviewcount;
	}
	
	
	
	
	
}

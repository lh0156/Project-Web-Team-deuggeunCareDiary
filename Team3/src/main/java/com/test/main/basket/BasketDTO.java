package com.test.main.basket;

public class BasketDTO {
	private String id;
	private int count; //묶음 갯수
	private String productName;
	private int price;
	private String url;
	private String name;
	
	private String basketseq;
	private int number;
	


	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getBasketseq() {
		return basketseq;
	}
	public void setBasketseq(String basketseq) {
		this.basketseq = basketseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}

package com.test.main.admin.membermanagement;

public class ManagementOrderDTO {
	String orderseq;
	String courier;
	String invoicenum;
	String paymentmethod;
	String orderdate; 
	String orderpostalcode;
	String orderaddress;
	String price;
	
	
	
	
	public String getOrderpostalcode() {
		return orderpostalcode;
	}
	public void setOrderpostalcode(String orderpostalcode) {
		this.orderpostalcode = orderpostalcode;
	}
	public String getOrderseq() {
		return orderseq;
	}
	public void setOrderseq(String orderseq) {
		this.orderseq = orderseq;
	}
	public String getCourier() {
		return courier;
	}
	public void setCourier(String courier) {
		this.courier = courier;
	}
	public String getInvoicenum() {
		return invoicenum;
	}
	public void setInvoicenum(String invoicenum) {
		this.invoicenum = invoicenum;
	}
	public String getPaymentmethod() {
		return paymentmethod;
	}
	public void setPaymentmethod(String paymentmethod) {
		this.paymentmethod = paymentmethod;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public String getOrderaddress() {
		return orderaddress;
	}
	public void setOrderaddress(String orderaddress) {
		this.orderaddress = orderaddress;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}

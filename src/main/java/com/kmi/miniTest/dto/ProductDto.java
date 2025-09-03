package com.kmi.miniTest.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



public class ProductDto {
	
	private int productid;
	private String productname;
	private int productprice;
	private int productstock;
	private String productimg;
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDto(int productid, String productname, int productprice, int productstock, String productimg) {
		super();
		this.productid = productid;
		this.productname = productname;
		this.productprice = productprice;
		this.productstock = productstock;
		this.productimg = productimg;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	public int getProductstock() {
		return productstock;
	}
	public void setProductstock(int productstock) {
		this.productstock = productstock;
	}
	public String getProductimg() {
		return productimg;
	}
	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	
	
	

}

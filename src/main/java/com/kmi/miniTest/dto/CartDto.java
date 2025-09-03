package com.kmi.miniTest.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



public class CartDto {
	
	private int cartid;
	private String memberid;
	private int productid;
	private int quantity;
	
	private MemberDto memberDto;
	private ProductDto productDto;
	
	
	public CartDto(int cartid, String memberid, int productid, int quantity, MemberDto memberDto,
			ProductDto productDto) {
		super();
		this.cartid = cartid;
		this.memberid = memberid;
		this.productid = productid;
		this.quantity = quantity;
		this.memberDto = memberDto;
		this.productDto = productDto;
	}
	public CartDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public MemberDto getMemberDto() {
		return memberDto;
	}
	public void setMemberDto(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	public ProductDto getProductDto() {
		return productDto;
	}
	public void setProductDto(ProductDto productDto) {
		this.productDto = productDto;
	}
	
	

}

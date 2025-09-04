package com.kmi.miniTest.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class CartDto {
	
	private int cartid;
	private String memberid;
	private int productid;
	private int quantity;
	
	private MemberDto memberDto;
	private ProductDto productDto;
	

}

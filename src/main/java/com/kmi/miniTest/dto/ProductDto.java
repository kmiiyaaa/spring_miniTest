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

public class ProductDto {
	
	private int productid;
	private String productname;
	private int productprice;
	private int productstock;
	private String productimg;
	
	

}

package com.kmi.miniTest.dto;

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
	

}

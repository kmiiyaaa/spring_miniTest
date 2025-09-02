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


public class OrderDto {
	
	private int orderid;
	private int memberid;
	private int productid;
	private int orderquantity;
	private Timestamp orderdate;

}

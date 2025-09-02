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

public class BoardDto {
	
	private int bnum;
	private String btitle;
	private String bcontent;
	private int bwriter;
	private int bhit;
	private Timestamp bdate;

}

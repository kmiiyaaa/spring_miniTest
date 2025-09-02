package com.kmi.miniTest.dto;

import java.sql.Timestamp;


import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class MemberDto {
	
	private int memberid;
	private String userid;
	private String memberpw;
	private String memebername;
	private Timestamp memberdate;

}

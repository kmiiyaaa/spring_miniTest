package com.kmi.miniTest.dto;

import java.sql.Timestamp;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



public class BoardDto {
	
	private int rnum; 
	private int bnum;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private int bhit;
	private Timestamp bdate;
	
	private MemberDto memberDto;  // 1:1

	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int rnum, int bnum, String btitle, String bcontent, String bwriter, int bhit, Timestamp bdate,
			MemberDto memberDto) {
		super();
		this.rnum = rnum;
		this.bnum = bnum;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.bhit = bhit;
		this.bdate = bdate;
		this.memberDto = memberDto;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}

	public Timestamp getBdate() {
		return bdate;
	}

	public void setBdate(Timestamp bdate) {
		this.bdate = bdate;
	}

	public MemberDto getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	
	

}

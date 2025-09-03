package com.kmi.miniTest.dto;

import java.sql.Timestamp;


import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;



public class MemberDto {
	
	private int userid;
	private String memberid;
	private String memberpw;
	private String membername;
	private Timestamp memberdate;
	public MemberDto(int userid, String memberid, String memberpw, String membername, Timestamp memberdate) {
		super();
		this.userid = userid;
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.membername = membername;
		this.memberdate = memberdate;
	}
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public Timestamp getMemberdate() {
		return memberdate;
	}
	public void setMemberdate(Timestamp memberdate) {
		this.memberdate = memberdate;
	}
	
	

}

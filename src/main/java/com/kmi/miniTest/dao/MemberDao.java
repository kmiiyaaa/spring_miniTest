package com.kmi.miniTest.dao;

public interface MemberDao {
	
	//회원가입 메서드
	public int memberJoinDao(String userid, String memberpw, String membername);
	
	//아이디 존재여부 확인 메서드
	public int memberidCheckDao(String userid);
	
	

}

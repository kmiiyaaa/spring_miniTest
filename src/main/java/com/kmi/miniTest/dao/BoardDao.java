package com.kmi.miniTest.dao;

import java.util.List;

import com.kmi.miniTest.dto.BoardDto;

public interface BoardDao {
	
	//글쓰기 메서드
	public void boardWriteDao(String btitle, String bcontent, String bwriter);
	
	//게시판 글 목록보기
	public List<BoardDto> boardListDao();

}

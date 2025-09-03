package com.kmi.miniTest.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kmi.miniTest.dto.BoardDto;

public interface BoardDao {
	
	//글쓰기 메서드
	public void boardWriteDao(String btitle, String bcontent, String bwriter);
	
	//게시판 글 목록보기
	public List<BoardDto> boardListDao(int starRow, int endRow);
	
	//게시판 모든 글 갯수 가져오기
	public int allBoardCountDao();
	
	//게시판 글 삭제
	public int boardDeleteDao(int bnum);
	
	// 글번호에 해당하는 레코드 가져오기
	public BoardDto contentViewDao(@Param("bnum") String bnum);
	
	//조회수 증가
	public void updateHitDao(String bnum);
	

	// 글번호 해당글 수정하기
	public int boardModifyDao(String bnum, String btitle, String bcontent);
	
	
	


}

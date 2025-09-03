package com.kmi.miniTest.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmi.miniTest.dao.BoardDao;
import com.kmi.miniTest.dto.BoardDto;
import com.kmi.miniTest.dto.MemberDto;

@Controller
public class BoardController {
	
	@Autowired
	SqlSession sqlSession;
	
	//글쓰기 폼 가져오기
	@RequestMapping(value="/bwrite")
	public String bwrite(HttpSession session) {
		
		String sid = (String) session.getAttribute("sid"); // 세션에서 로그인 ID 가져오기
		if(sid != null) {
	        return "writeForm"; // 글쓰기 폼
	    } else {
	        return "redirect:/login?msg=1"; // 로그인 페이지로 리다이렉트
	    }
	}
	
	//글쓰기
	@RequestMapping(value="/bwriteOk")
	public String bwriteOk(HttpServletRequest request, Model model, HttpSession session) {

	    String btitle = request.getParameter("btitle");
	    String bcontent = request.getParameter("bcontent");

	    // 로그인 세션에서 가져오기
	    String sid = (String) session.getAttribute("sid");
//	    if (loginMember == null) {
//	        return "login"; // 로그인 안 되어있으면
//	    }

	    //String bwriter = String.valueOf(loginMember.getUserid()); // int → String 변환
	    BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
	    boardDao.boardWriteDao(btitle, bcontent, sid); // DTO 없이 3개 파라미터 전달

	    return "redirect:boardList";
	}
	

	@RequestMapping(value="/boardList")
	public String boardList(Model model, HttpServletRequest request) {
		
		int pageSize = 10;
		int pageNum = 1;
		int blockSize = 5;
		
		if(request.getParameter("pageNum") != null){
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		
		int startRow = (pageNum - 1) * pageSize + 1;
		int endRow = pageNum * pageSize;

		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> boardDtos = boardDao.boardListDao(startRow, endRow);
		int totalCount = boardDao.allBoardCountDao();
		
		int startPage = (((pageNum - 1)/blockSize) * blockSize) + 1;
		int endPage = startPage + blockSize - 1;
		int totalPage = (int) Math.ceil((double) totalCount / pageSize);  
		
		if(endPage > totalPage) {
			endPage = totalPage;
		}	
		
		model.addAttribute("boardList", boardDtos);
		model.addAttribute("pageNum", pageNum); //유저가 클릭한 페이지 번호->현재 페이지 번호
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("boardCount", totalCount); //모든 글 갯수 전달하기
		
		return "boardList";
	}
	
	@RequestMapping(value="/boardDelete")
	public String boardDelete(HttpServletRequest request, Model model) {
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		int result = boardDao.boardDeleteDao(bnum);
		
		
		if(result==0) {  //삭제실패
		model.addAttribute("msg", "글 삭제 실패! 다시 확인해주세요");
		 model.addAttribute("url", "boardList");
		 
		 return "alert/alert";
		 }
		
		return "redirect:boardList";
		
		
		
	}
	
	@RequestMapping(value="/contentView")
	public String contentView(HttpServletRequest request, Model model) {
		
		String bnum = request.getParameter("bnum");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.updateHitDao(bnum);
		
		BoardDto boardDto = boardDao.contentViewDao(bnum);
		model.addAttribute("boardDto", boardDto);
		
		return "boardContent";
		
		
	}
	

}

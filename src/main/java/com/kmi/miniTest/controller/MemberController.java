package com.kmi.miniTest.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmi.miniTest.dao.MemberDao;

@Controller
public class MemberController {
	
	@Autowired
	SqlSession sqlSession;
	
	//메인 화면 보기
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}
	
	//회원가입 폼 열기
	@RequestMapping(value="/join")
	public String join() {
		return "joinForm";
	}
	
	
	//회원가입 메서드
	@RequestMapping(value="/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		String mname = request.getParameter("membername");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		int checkFlag = memberDao.memberidCheckDao(mid);
			int result = memberDao.memberJoinDao(mid, mpw, mname);
			model.addAttribute("mid", mid);
		if(checkFlag == 0) {  //가입하려는 아이디가 없음 -> 가입가능
			return "index";
		}
		
		
		
	
		
		return "redirect:index";
	}

}

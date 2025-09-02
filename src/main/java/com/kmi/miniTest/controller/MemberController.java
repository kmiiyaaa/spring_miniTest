package com.kmi.miniTest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		model.addAttribute("mid", mid);
		
		if(checkFlag == 0) {  //가입하려는 아이디가 없음 -> 가입가능
			int result = memberDao.memberJoinDao(mid, mpw, mname);
			return "login";
		}else { // 이미 아이디 있음 - 가입실패
			model.addAttribute("msg","이미 가입된 아이디 입니다.");
			model.addAttribute("url", "join");
			
			return "alert/alert";
		}
				
	}
	
	//로그인폼 이동
	@RequestMapping(value="/login")
	public String login() {
		return "login";
	}
	
	//로그인 메서드
	@RequestMapping(value="/loginOk")
	public String loginOk(HttpServletRequest request, Model model,HttpSession session) {
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		int checkFlag = memberDao.memberLoginDao(mid, mpw);
		
		if(checkFlag ==1 ) {  // 로그인 성공시
			session.setAttribute("sid" , mid);  // 세션아이디값 설정
			return "index";
			
		} else {
			model.addAttribute("msg", "로그인 실패. 아이디 또는 비밀번호가 잘못 되었습니다.");
			model.addAttribute("url", "login");
			
			return "alert/alert";
		}
				
		
	}
		

}

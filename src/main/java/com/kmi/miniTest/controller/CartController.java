package com.kmi.miniTest.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmi.miniTest.dao.ProductDao;
import com.kmi.miniTest.dto.CartDto;

@Controller
public class CartController {
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/cart")
	public String cart(HttpSession session) {
		
		String sid = (String) session.getAttribute("sid"); // 세션에서 로그인 ID 가져오기
		
		if(sid != null) {
	      return "cart"; // 글쓰기 폼
	   } else {
	       return "redirect:/login?msg=2"; // 로그인 페이지로 리다이렉트
	   }
	}
	
	@RequestMapping(value="addCart")
	public String addCart(HttpSession session, Model model) {
		
		String sid = (String) session.getAttribute("sid"); // 세션에서 로그인 ID 가져오기
		if (sid == null) {
			return "redirect:/login?msg=3"; // 로그인 페이지로 이동
	        
	    }
		
		// CartDto 생성
		
	    CartDto cartDto = new CartDto();
	    cartDto.setMemberid(sid);        // 세션에서 가져온 회원 ID
	    cartDto.setProductid(productid); // JSP에서 넘어온 productId
	    cartDto.setQuantity(1);          // 기본 수량 1
	    
	    return "redirect:/cart";
	
	}

}

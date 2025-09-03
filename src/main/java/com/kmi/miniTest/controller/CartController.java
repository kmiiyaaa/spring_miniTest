package com.kmi.miniTest.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmi.miniTest.dao.CartDao;
import com.kmi.miniTest.dao.ProductDao;
import com.kmi.miniTest.dto.CartDto;

@Controller
public class CartController {
	
	@Autowired
	SqlSession sqlSession;
	
	//장바구니 목록
	@RequestMapping(value="/cart")
	public String cart(HttpSession session, Model model) {
		
		String sid = (String) session.getAttribute("sid"); // 세션에서 로그인 ID 가져오기
		
		if(sid == null) {
			 return "redirect:/login?msg=2"; // 로그인 페이지로 리다이렉트
	   }
	      
	   CartDao cartDao = sqlSession.getMapper(CartDao.class);
	   
	   List<CartDto> cartList = cartDao.getCartListDao(sid);
	   model.addAttribute("cartList", cartList);
	   
	   return "cart";
		
	}
	
	
	// 장바구니 담기
	@RequestMapping(value="addCart")
	public String addCart(HttpSession session, Model model, HttpServletRequest request) {
		
		String sid = (String) session.getAttribute("sid"); // 세션에서 로그인 ID 가져오기
		
		if (sid == null) {
			return "redirect:/login?msg=3"; // 로그인 페이지로 이동
	        
	    }
		
		String productIdStr = request.getParameter("productid");
		String quantityStr = request.getParameter("quantity");

		if(productIdStr == null || productIdStr.isEmpty()) {
		    return "redirect:/productList?msg=error";
		}

		int productid = Integer.parseInt(productIdStr);
		int quantity = 1; // 기본값
		if(quantityStr != null && !quantityStr.isEmpty()) {
		    quantity = Integer.parseInt(quantityStr);
		}
		
		CartDao cartDao = sqlSession.getMapper(CartDao.class);
		
	    CartDto cartDto = new CartDto();
	    cartDto.setMemberid(sid);
	    cartDto.setProductid(productid);
	    cartDto.setQuantity(quantity);
	    
	    cartDao.addCartDao(cartDto);
	    
	    return "redirect:cart";
	
	}
	
	//장바구니 삭제
	@RequestMapping(value="/deleteCart")
	public String deleteCart(HttpServletRequest request, Model model) {
		
		int cartid = Integer.parseInt(request.getParameter("cartid"));
		
		CartDao cartDao = sqlSession.getMapper(CartDao.class);
		int result = cartDao.deleteCartDao(cartid);
		
		if(result==0) {
			model.addAttribute("msg", "장바구니 삭제 실패");
			model.addAttribute("url", "cart");
		
			return "alert/alert";
		}
		
		return "redirect:cart";
	}
	
	

}

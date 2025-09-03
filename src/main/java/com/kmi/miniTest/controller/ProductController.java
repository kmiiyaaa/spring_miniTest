package com.kmi.miniTest.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmi.miniTest.dao.ProductDao;
import com.kmi.miniTest.dto.CartDto;
import com.kmi.miniTest.dto.ProductDto;

@Controller
public class ProductController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/plist")
	public String plist(Model model) {
		
		ProductDao productDao = sqlSession.getMapper(ProductDao.class);
		List<ProductDto> productDtos = productDao.allProductDao();
		
		model.addAttribute("plist", productDtos);
		
		return "productList";
	}
	

}

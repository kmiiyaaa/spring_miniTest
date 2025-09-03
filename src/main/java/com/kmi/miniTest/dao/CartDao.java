package com.kmi.miniTest.dao;

import java.util.List;

import com.kmi.miniTest.dto.CartDto;

public interface CartDao {
	
	 // 장바구니에 상품 추가
    public void addCartDao(CartDto cartItem);

    // 장바구니 목록 조회
    List<CartDto> getCartListDao(String memberid);

}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>상품 목록</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<!-- 헤더 -->
    <jsp:include page="common/header.jsp" />
    
    <div class="container">
        <h1>Product List</h1>
        <div class="product-list">
            <c:forEach  items="${plist}" var="product">
                <div class="product-item">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/resources/img/${product.productimg}" 
         alt="${product.productname}">
                    </div>
                    <div class="product-info">
                        <h3 class="product-name">${product.productname}</h3>
                        <p class="product-price">${product.productprice}원</p>
                        <form action="${pageContext.request.contextPath}/addCart" method="post">
						    <input type="hidden" name="productId" value="${product.productid}">
						    <input type="number" name="quantity" value="1" min="1" class="quantity-input">
						    <button type="submit" class="add-cart-btn">장바구니</button>
						</form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    
    <!-- 푸터 -->
    <jsp:include page="common/footer.jsp" />
</body>
</html>
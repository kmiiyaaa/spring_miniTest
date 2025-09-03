<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <!-- 헤더 -->
    <jsp:include page="common/header.jsp" />

   <div class="container ${empty cartList ? 'c-empty-hidden' : ''}">
    <h1>장바구니</h1>

    <c:if test="${empty cartList}">
        <p class="empty-cart">
            장바구니가 비어 있습니다 🛒
        </p>
    </c:if>
    
    
    <div class="cart-list">
    <c:forEach var="c" items="${cartList}">
        <div class="cart-item">
            <img src="${c.productDto.productimg}" alt="${c.productDto.productname}" class="cart-img" />
            <div class="cart-info">
                <h3 class="cart-name">${c.productDto.productname}</h3>
                <p class="cart-price">₩${c.productDto.productprice}</p>
                <p class="cart-quantity">수량: ${c.quantity}</p>
                <form action="deleteCart" method="get">
                    <input type="hidden" name="cartid" value="${c.cartid}" />
                    <button type="submit" class="cart-delete-btn">삭제</button>
                </form>
            </div>
        </div>
    </c:forEach>

<div class="cart-summary-box">
        <div class="summary-row">
            <span>총 상품금액</span>
            <span>${totalPrice}원</span>
        </div>
        <div class="summary-row">
            <span>총 수량</span>
            <span>${totalQuantity}</span>
        </div>
        <button class="order-btn">주문하기</button>
    </div>
</div>

    <!-- 푸터 -->
    <jsp:include page="common/footer.jsp" />
</body>
	
	
</body>
</html>
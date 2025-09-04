<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <!-- 헤더 -->
    <jsp:include page="common/header.jsp" />

   <div class="container ${empty cartList ? 'c-empty-hidden' : ''}">
    <h1>장바구니</h1>

   <c:if test="${empty cartList}">
    <p class="empty-cart">장바구니가 비어 있습니다 🛒</p>
	</c:if>


    
     <c:if test="${not empty cartList}">
    <div class="cart-container">
        <!-- 장바구니 항목 리스트 -->
        <div class="cart-list">
            <c:forEach var="c" items="${cartList}">
                <div class="cart-item">
                		<input type="checkbox" />
                    <span class="cart-name">${c.productDto.productname}</span>
                    <span class="cart-price">${c.productDto.productprice}원</span>
                    <span class="cart-quantity">수량: ${c.quantity}</span>
                </div>
            </c:forEach>
        </div>

        <!-- 총합 및 주문 버튼 -->
        <div class="cart-summary-wrapper">
            <div class="cart-summary-box">
                <table class="summary-table">
                    <tr>
                        <td>총 수량</td>
                        <td>${totalQuantity}</td>
                    </tr>
                    <tr>
                        <td>총 금액</td>
                        <td>${totalPrice}원</td>
                    </tr>
                </table>
            </div>
            <div class="order-button-wrapper">
                <button class="order-btn">주문하기</button>
            </div>
        </div>
    </div>
</c:if>

    <jsp:include page="common/footer.jsp" />
</body>
</html>
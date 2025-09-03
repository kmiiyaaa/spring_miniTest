<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<!--  헤더 -->
<jsp:include page="common/header.jsp" />

    <div class="cart-container">
        <h1>장바구니</h1>
        <div class="cart-content">
            <p class="empty-message">장바구니가 비어 있습니다.</p>
        </div>
        <div class="cart-footer">
            <button class="checkout-btn">결제</button>
        </div>
    </div>
    
 <!-- 푸터 -->
<jsp:include page="common/footer.jsp" />
	
	
</body>
</html>
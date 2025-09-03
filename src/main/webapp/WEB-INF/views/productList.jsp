<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>상품 목록</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<jsp:include page="common/header.jsp" />

<div class="container">
    <h1>Product List</h1>
    <div class="product-list">
        <c:forEach items="${plist}" var="product">
            <div class="product-item">
                <div class="product-image">
                    <img src="${pageContext.request.contextPath}/resources/img/${product.productimg}" 
                         alt="${product.productname}">
                </div>
                <div class="product-info">
                    <h3 class="product-name">${product.productname}</h3>
                    <p class="product-price">${product.productprice}원</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="common/footer.jsp" />
</body>
</html>
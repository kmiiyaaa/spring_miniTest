<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>MI'S CLOSET - 메인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <!-- 헤더 -->
    <jsp:include page="common/header.jsp" />
    
    <!-- 메인 배너 -->
	<section class="hero-banner">
    <div class="hero-content">
        <h1>MI'S CLOSET</h1>
        <p>2025 FALL COLLECTION</p>
        <a href="productList" class="hero-btn">SHOP NOW</a>
    </div>
	</section>

    <!-- 컨테이너 -->
    <div class="container">

        <!-- 신상품 / 추천 영역 -->
        <section class="featured-products">
            <h2>New Arrivals</h2>
            <div class="product-grid">
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/resources/img/new1.jpg">
                    <p class="name">오버핏 가을 야상점퍼 </p>
                    <p class="price">₩45,000</p>
                </div>
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/resources/img/new2.jpg">
                    <p class="name">간절기 가을 체크셔츠</p>
                    <p class="price">₩18,000</p>
                </div>
                 <div class="product-card">
                    <img src="${pageContext.request.contextPath}/resources/img/new3.jpg">
                    <p class="name">스웨이드 데일리백</p>
                    <p class="price">₩20,000</p>
                </div>
            </div>
        </section>

        <!-- 카테고리 영역 -->
        <section class="categories">
            <h2>Categories</h2>
            <div class="category-list">
                <div class="category-item">여성의류</div>
                <div class="category-item">남성의류</div>
                <div class="category-item">신발/가방</div>
                <div class="category-item">액세서리</div>
            </div>
        </section>
    </div>

    <!-- 푸터 -->
    <jsp:include page="common/footer.jsp" />

</body>
</html>
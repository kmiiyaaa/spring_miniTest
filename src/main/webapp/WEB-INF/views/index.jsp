<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>My Shop - 메인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<!--  헤더 -->
<jsp:include page="common/header.jsp" />


<!-- 메인 배너 -->
<div class="container" style="text-align:center; background: linear-gradient(135deg, #ffb6c1, #ff85a2); color:#fff; padding:60px 20px; font-size:2rem; font-weight:bold; margin-top:20px;">
    Welcome to My Shop
</div>

<!-- 컨테이너 -->
<div class="container">

    <!-- 인사말 영역 -->
    <section class="welcome" style="text-align:center; margin-bottom:30px;">
        <h2>환영합니다!</h2>
        <p>나만의 쇼핑몰에서 특별한 상품을 만나보세요.</p>
    </section>

    <!-- 추천 상품 영역 -->
    <section class="featured-products" style="margin-bottom:40px;">
        <h3>추천 상품</h3>
        <div class="product-grid" style="display:grid; grid-template-columns:repeat(auto-fill,minmax(200px,1fr)); gap:20px;">
            <div class="container" style="text-align:center;">
                <img src="${pageContext.request.contextPath}/resources/images/product1.jpg" alt="상품1" style="width:100%; border-radius:8px; margin-bottom:10px;">
                <p>상품 이름 1</p>
                <p>₩20,000</p>
            </div>
            <div class="container" style="text-align:center;">
                <img src="${pageContext.request.contextPath}/resources/images/product2.jpg" alt="상품2" style="width:100%; border-radius:8px; margin-bottom:10px;">
                <p>상품 이름 2</p>
                <p>₩25,000</p>
            </div>
        </div>
    </section>

    <!-- 카테고리 영역 -->
    <section class="categories" style="margin-bottom:40px;">
        <h3>카테고리</h3>
        <div style="display:flex; gap:20px; flex-wrap:wrap;">
            <div class="container" style="flex:1; min-width:150px; text-align:center; cursor:pointer;">여성의류</div>
            <div class="container" style="flex:1; min-width:150px; text-align:center; cursor:pointer;">남성의류</div>
            <div class="container" style="flex:1; min-width:150px; text-align:center; cursor:pointer;">신발/가방</div>
            <div class="container" style="flex:1; min-width:150px; text-align:center; cursor:pointer;">액세서리</div>
        </div>
    </section>

</div>


<!-- 푸터 -->
<jsp:include page="common/footer.jsp" />

</body>
</html>
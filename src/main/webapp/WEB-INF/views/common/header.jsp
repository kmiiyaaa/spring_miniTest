<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="top-bar">
    2025 FALL COLLECTION - AFTER IMAGE RELEASE
</div>

<header>
    <!-- 왼쪽 메뉴 -->
    <nav class="nav-left">
        <ul>
            <li><a href="shop">SHOP</a></li> 
            <li><a href="boardList">Q/A</a></li>
            <li><a href="location.do">오시는 길</a></li>
        </ul>
    </nav>

    <!-- 가운데 로고 -->
    <div class="logo">
        MI'S CLOSET
    </div>

    <!-- 오른쪽 메뉴 -->
    <nav class="nav-right">
        <ul>
            <c:choose>
                <c:when test="${not empty sessionScope.sid}">
                    <li><a href="logout.do">LOGOUT</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="login.do">LOGIN</a></li>
                </c:otherwise>
            </c:choose>
            <li><a href="cart.do">CART</a></li>
        </ul>
    </nav>
</header>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="top-bar">
    2025 1ST FALL COLLECTION - 09/03/5PM RELEASE
</div>

<header>
    <!-- 왼쪽 메뉴 -->
    <nav class="nav-left">
        <ul>
            <li><a href="plist">SHOP</a></li> 
            <li><a href="boardList">Q/A</a></li>
            <li><a href="location">오시는 길</a></li>
        </ul>
    </nav>

   <!-- 가운데 로고 -->
	<a href="index" class="logo">MI'S CLOSET</a>

    <!-- 오른쪽 메뉴 -->
    <nav class="nav-right">
        <ul>
            <c:choose>
                <c:when test="${not empty sessionScope.sid}">
                    <li><a href="logout">LOGOUT</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="login">LOGIN</a></li>
                </c:otherwise>
            </c:choose>
            <li><a href="cart">CART</a></li>
        </ul>
    </nav>
</header>
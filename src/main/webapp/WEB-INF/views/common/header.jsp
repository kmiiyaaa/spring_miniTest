<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="top-bar">
  		2025 FALL 1ST COLLECTION - 09/03/5PM RELEASE
</div>
<header>
    <div class="logo">쇼핑몰이름</div>
    <nav>
       <ul>
           <li><a href="insert">홈</a></li>
           <li><a href="#"></a>상품리스트</li>
           <li><a href="#">문의게시판</a></li>
           <li><a href="#">오시는 길</a></li>
           <!-- 로그인 여부에 따른 표시 -->
            <!-- 로그인 여부 확인 -->
            <c:choose>
                <c:when test="${not empty sessionScope.sid}">
                    <!-- 로그인 상태 -->
                    <li><a href="logout.do">로그아웃</a></li>
                </c:when>
                <c:otherwise>
                    <!-- 로그아웃 상태 -->
                    <li><a href="login.do">로그인</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
   </nav>
</header>
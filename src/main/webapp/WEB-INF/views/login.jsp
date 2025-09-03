<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="resources/css/login.css"> <!-- login.css 연결 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <!-- 헤더 -->
    <jsp:include page="common/header.jsp" />

    <!-- 로그인 섹션 -->
    <section class="login-section">
        <div class="login-box">
            <h2>LOGIN</h2>
            <form action="loginOk" method="post">
                <div class="form-group">
                    <label for="userid">아이디</label>
                    <input type="text" id="userid" name="memberid" required>
                </div>

                <div class="form-group">
                    <label for="userpw">비밀번호</label>
                    <input type="password" id="userpw" name="memberpw" required>
                </div>
                
                 <c:if test="${param.msg == 1}">
                        <p style="color:red; font-size: 13px;"  >로그인 한 유저만 글쓰기 가능</p>
                 </c:if>
                 <c:if test="${param.msg == 2}">
                        <p style="color:red; font-size: 13px;"  >장바구니를 보시려면 로그인 해주세요</p>
                 </c:if>
                  <c:if test="${param.msg == 3}">
                        <p style="color:red; font-size: 13px;"  >상품을 담으시려면 로그인 해주세요</p>
                 </c:if>

                <div class="button-group">
                    <button type="submit" class="btn-login">로그인</button>
                    <a href="join" class="btn-join">회원가입</a>
                </div>
            </form>
        </div>
    </section>

    <!-- 푸터 -->
    <jsp:include page="common/footer.jsp" />
</body>
</html>
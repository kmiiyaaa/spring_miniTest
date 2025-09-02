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
                    <input type="text" id="userid" name="userid" required>
                </div>

                <div class="form-group">
                    <label for="userpw">비밀번호</label>
                    <input type="password" id="userpw" name="userpw" required>
                </div>

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
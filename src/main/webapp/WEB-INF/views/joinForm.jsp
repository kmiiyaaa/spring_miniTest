<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<jsp:include page="common/header.jsp" />

<div class="container">
    <h2>회원가입</h2>
    <form action="joinOk" method="post">
        아이디 : <input type="text" name="userid" placeholder="아이디" required>
        비밀번호 : <input type="password" name="memberpw" placeholder="비밀번호" required>
        이름 : <input type="text" name="membername" placeholder="이름" required>
        <button type="submit">가입하기</button>
    </form>
</div>

<jsp:include page="common/footer.jsp" />

</body>
</html>
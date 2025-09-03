<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 작성</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<jsp:include page="common/header.jsp" />

<div class="write-container">
    <h2>문의글 작성</h2>
    <form action="bwriteOk" method="post" class="write-form">
        
        <!-- 제목 + 작성자 -->
        <div class="form-top">
            <input type="text" name="btitle" placeholder="제목을 입력하세요" required>
            <input type="text" name="bwriter" value="${sessionScope.sid}" readonly>
        </div>

        <!-- 내용 -->
        <div class="form-content">
            <textarea name="bcontent" placeholder="문의글 내용을 입력하세요" required></textarea>
        </div>

        <!-- 버튼 -->
        <div class="form-bottom">
            <button type="submit" class="btn-submit">완료</button>
        </div>
    </form>
</div>

<jsp:include page="common/footer.jsp" />
</body>
</html>
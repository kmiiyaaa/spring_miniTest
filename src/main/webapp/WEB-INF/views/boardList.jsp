<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
<link rel="stylesheet" href="qna.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<!--  헤더 -->
<jsp:include page="common/header.jsp" />


  <!-- Q&A 게시판 타이틀 -->
    <div class="qna-title">
        <h2>&lt; Q&amp;A 게시판 &gt;</h2>
    </div>

    <!-- Q&A 게시판 리스트 -->
    <div class="qna-list">
        <c:forEach var="board" items="${boardList}">
            <div class="qna-item">
                <!-- 글번호 -->
                <div class="qna-number">${board.bnum}</div>

                <!-- 글제목 -->
                <div class="qna-title-text">
                    ${board.btitle}
                </div>

                <!-- 작성자 + 작성일 -->
                <div class="qna-meta">
                    <span class="writer">${board.bwriter}</span>
                    <span class="date">
                        <fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd HH:mm"/>
                    </span>
                </div>
            </div>
        </c:forEach>
    </div>



<!-- 푸터 -->
<jsp:include page="common/footer.jsp" />
	

</body>
</html>
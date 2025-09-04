<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qna.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

<!--  헤더 -->
<jsp:include page="common/header.jsp" />


  <!-- Q&A 게시판 타이틀 -->
    <div class="qna-title">
        <h2> Q&amp;A 게시판 </h2>
    </div>

    <!-- Q&A 게시판 리스트 -->
    <div class="qna-list">
        <c:forEach var="board" items="${boardList}">
            <div class="qna-item">
                <!-- 글번호 -->
                <div class="qna-number">${board.bnum}</div>

                <!-- 글제목 -->
                <div class="qna-title-text">
                    <a href="contentView?bnum=${board.bnum}">${board.btitle }</a>
                </div>

                <!-- 작성자 + 작성일 -->
                <div class="qna-meta">
                    <span class="writer">${board.memberDto.memberid}</span> /
                    <span class="hit">${board.bhit}</span> /
                    <span class="date">
                    	<fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd HH:mm"/>
                    </span>
                </div>
            </div>
        </c:forEach>
    </div>
    
    <!-- 검색 및 글쓰기 영역 -->
<div class="qna-controls">
    <div class="qna-write">
        <a href="bwrite">Write</a>
    </div>
</div>

<!-- 페이징 영역 -->
<div class="qna-pagination">
    <c:if test="${pageNum > 1}">
    	<a href="boardList?pageNum=1">&laquo;</a>
      <a href="boardList?pageNum=${pageNum - 1}">&laquo; 이전</a>
    </c:if>
    
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:choose>
            <c:when test="${i == pageNum}">
                <span class="current">${i}</span>
            </c:when>
            <c:otherwise>
                <a href="boardList?pageNum=${i}">${i}</a>
            </c:otherwise>            
        </c:choose>
    </c:forEach>
    
    <c:if test="${pageNum < totalPage}">
        <a href="boardList?pageNum=${pageNum + 1}">다음 &raquo;</a>
        <a href="boardList?pageNum=${totalPage }">&raquo;</a>
    </c:if>
</div>


<!-- 푸터 -->
<jsp:include page="common/footer.jsp" />
	

</body>
</html>
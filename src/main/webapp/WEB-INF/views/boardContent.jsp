<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>글 상세보기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boardDetail.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <!-- 헤더 -->
    <jsp:include page="common/header.jsp" />
    
    <div class="container">
        <h2>글 내용 보기</h2>
        <hr>
        <form action="boardModify" method="post" class="detail-form">
            <div class="form-group">
                <label>제목</label>
                <input type="text" name="btitle" value="${boardDto.btitle}">
            </div>

            <div class="form-group">
                <label>내용</label>
                <textarea rows="10" name="bcontent">${boardDto.bcontent}</textarea>
            </div>

            <div class="form-group">
                <label>글쓴이</label>
                <input type="text" name="membername" value="${boardDto.memberDto.memberid}" readonly>
            </div>

            <div class="form-info">
                <span><strong>조회수 :</strong> ${boardDto.bhit}</span>
                <span><strong>등록일 :</strong> 
                    <fmt:formatDate value="${boardDto.bdate}" pattern="yyyy-MM-dd" />
                </span>
            </div>

            <input type="hidden" name="bnum" value="${boardDto.bnum}">

            <div class="btn-group">
    <c:if test="${not empty sessionScope.sid 
        and (sessionScope.sid eq boardDto.memberDto.memberid or sessionScope.sid eq 'admin')}">
        <input type="submit" value="수정" class="btn btn-primary" >
        <input type="button" value="삭제" class="btn btn-secondary"
               onclick="location.href='boardDelete?bnum=${boardDto.bnum}'">
    </c:if>
    <input type="button" value="글목록" class="btn btn-secondary"
           onclick="location.href='boardList'">
</div>
        </form>
    </div>
    
    
     
  
    
    <!-- 푸터 -->
    <jsp:include page="common/footer.jsp" />
</body>
</html>
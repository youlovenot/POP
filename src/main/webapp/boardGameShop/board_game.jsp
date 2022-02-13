<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/goods.css" rel="stylesheet" type="text/css">
  
</head>
<body>
  <div id="container">
    <a name="top"></a>
    <%@ include file="/header.jsp" %>
    <main>
      <ul class="section_name">
        <li class="title">BOARD GAME SHOP</li>
      </ul>

      <div id="panorama_items">
      
		<c:set var="i" value="0"/>
		<c:forEach items="${boardList }" var="boardgame">
		<div class="item_box">
          <ul>
            <a href="/boardgames_view.com?seq=${boardgame.seq }">
              <li><img src="${imgpath }${boardgame.pimage}"></li>
              <li>${boardgame.name } </li>
              <li>${boardgame.price }원</li>
            </a>
          </ul>
        </div>
        <c:set var="i" value="${i + 1}"/>
        <c:if test="${i/4 eq 1 }">
        </div>
      		<div class="clear"></div>
      	<div id="panorama_items">
        </c:if>
		</c:forEach>
        
      </div>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
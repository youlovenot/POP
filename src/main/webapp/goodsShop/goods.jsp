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
    <%@ include file="/header.jsp" %>
    <main>
      <ul class="section_name">
        <li class="title">GOODS SHOP</li>
      </ul>
      <div id="panorama_items">

		<c:set var="i" value="0"/>
		<c:forEach items="${goodsList }" var="goods">
		<div class="item_box">
          <ul>
            <a href="/goods_view.com?seq=${goods.seq }">
              <li><img src="${imgpath }${goods.pimage}"></li>
              <li>${goods.name } </li>
              <li>${goods.price }원</li>
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
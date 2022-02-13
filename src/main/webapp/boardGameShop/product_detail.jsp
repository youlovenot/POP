<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/main.css" rel="stylesheet" type="text/css">
  
</head>
<body>
  <div id="container">
    <%@ include file="/header.jsp" %>
    <main>
      <div id="content">
        	<section id="right">
                <section id="summary">
                    <h3><span>BOARD GAME</span></h3>
                    <section id="summary1">
                        <div class="image">
                            <img src="${imgpath }${boardgame.pimage}">
                        </div>
                    </section>
                    <section id="summary2">
                        <h3>${boardgame.name }</h3>
                        <div class="item">
                            <ul>
                                <li>
                                    <div class="col1">판매가</div>
                                    <div class="col2">${boardgame.price }원</div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="col1">배송방법</div>
                                    <div class="col2">택배</div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="col1">배송비</div>
                                    <div class="col2">2,500 (10,000원이상 무료배송)</div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="col1">수량</div>
                                    <div class="col2"><input type="text"></div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                        <ul class="buttons">
                            <li><a href="/order/cart.jsp"><img src="/img/cart.png"></a></li>
                            <li><a href="/order/order.jsp"><img src="/img/order.png"></a></li>
                        </ul>
                    </section>
                    <div class="clear"></div>
                </section>
                <section id="explanation">
                    <h3>상품 설명</h3>
                    <div class="detail">
                		<c:if test="${not empty boardgame.detail1 }">
                        	<img src="${imgpath }${boardgame.detail1}">
                        </c:if>
                		<c:if test="${not empty boardgame.detail2 }">
	                        <img src="${imgpath }${boardgame.detail2}">
                        </c:if>
                		<c:if test="${not empty boardgame.detail3 }">
	                        <img src="${imgpath }${boardgame.detail3}">
                        </c:if>
                		<c:if test="${not empty boardgame.detail4 }">
	                        <img src="${imgpath }${boardgame.detail4}">
                        </c:if>
                		<c:if test="${not empty boardgame.detail5 }">
	                        <img src="${imgpath }${boardgame.detail5}">
                        </c:if>
                    </div>
                </section>
                <section id="required">
                    <h3>유의 사항</h3>
                    <dl>
                        <dt> ○ 주문 전 참고 사항</dt>
                        <dd>- 본 제품은 어린이 제품이 아닙니다. 만 14세 이상 사용가능합니다.</dd>
                        <dd>- 제조국 : 중국</dd>
                        <dd>- 수입여부 : Y</dd>
                    </dl>
                    <dl>
                        <dt> ○ 배송 </dt>
                        <dd>- 배송 지역 : 전국</dd>
                        <dd>- 배송 비용 : 2,500원 (10,000원 이상 무료배송)</dd>
                        <dd>- 배송 기간 : 2~3일</dd>
                    </dl>
                </section>
            </section>
            <div class="clear"></div> 
        </div> 
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
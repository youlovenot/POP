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
  <style>
  #panorama_items .item_box img {
    width: 100%;
    height:260px;
  }
  </style>
</head>
<body>
  <div id="container">
    <%@ include file="/header.jsp" %>
    <main>
      <ul class="section_name">
        <li class="title">GAME</li>
      </ul>

      <div id="panorama_items">
        <div class="item_box">
          <ul>
            <a href="/games/game_detail.jsp">
              <li><img src="/img/flashgame/루미큐브.jpg"></li>
              <li>루미큐브 </li>
              <li>장르 : 보드/경쟁</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/games/game_detail.jsp">
              <li><img src="/img/flashgame/스네이크 메인.png"></li>
              <li>스네이크게임</li>
              <li>장르 : 아케이드</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/games/game_detail.jsp">
              <li><img src="/img/flashgame/리듬 메인.png"></li>
                <li>리듬게임</li>
                <li>장르 : 아케이드</li>
            </a>
          </ul>
        </div>
      </div>
      <div class="clear"></div>

    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
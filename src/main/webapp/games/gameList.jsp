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
.conta {
  position: relative;
  width: 100%;
}

.imgimg {
  display: block;
  width: 100%;
  height: auto;
}

.textbox {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: rgb(181, 183, 184);
}

.conta:hover .textbox {
  opacity: 0.8;
}

.hidden_text {
  color: black;
  font-size: 25px;
  font-family:verdana, sans-serif;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
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
            <a href="/games/game_detail2.jsp">
              <li><img src="/img/flashgame/스네이크 메인.png"></li>
              <li>스네이크게임</li>
              <li>장르 : 아케이드</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/games/game_detail3.jsp">
              <li><img src="/img/flashgame/리듬 메인.png"></li>
                <li>리듬게임</li>
                <li>장르 : 아케이드</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="#">
              <div class="conta">
              <li><img src="/img/flashgame/테트리스.png" class="imgimg"></li>
              <div class="textbox">
                <div class="hidden_text">출시예정</div>
              </div>
            </div>
              <li>테트리스</li>
              <li>장르 : 퍼즐</li>
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
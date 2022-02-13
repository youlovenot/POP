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
       <div id="content">
        	<section id="right">
                <section id="summary">
                    <h3><span>Game</span></h3>
                    <section id="summary1">
                        <div class="image">
                            <img src="/img/flashgame/리듬 메인.png">
                        </div>
                    </section>
                    <section id="summary2">
                        <h3>리듬게임</h3>
                        <div class="item">
                            <ul>
                                <li>
                                    <div class="col1">게임인원</div>
                                    <div class="col2">1명</div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="col1">게임연령</div>
                                    <div class="col2">8세이상</div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="col1">게임시간</div>
                                    <div class="col2">약 10분 내외</div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                        <ul class="buttons">
                            <li><a href="#"><img src="/img/flashgame/start.png"></a></li>
                        </ul>
                    </section>
                    <div class="clear"></div>
                </section>
                <section id="explanation">
                    <h3>게임 설명</h3>
                    <div class="detail">
                        <img src="/img/flashgame/리듬1.png">
                        <img src="/img/flashgame/리듬2.png">
                        <img src="/img/flashgame/리듬3.png">
                    </div>
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
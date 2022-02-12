<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="icon" type="image⁄x-icon" href="/img/favicon.ico"/>
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/main.css" rel="stylesheet" type="text/css">
    <style>
  #panorama_items .item_box img {width: 100%; height:260px;}
  
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
  <script> 
    $(document).ready(function(){
      var height = $(".header_bottom").height();
      var num = $(".ul li").length; 
      var max = height * num;
      var move = 0;
      function noticeRolling(){
        move += height;
        $(".ul").animate({"top"-move},1000,function(){
          if(move >= max){
            $(this).css("top",0);
            move = 0;
          };
    
        });
      };
      noticeRollingOff = setInterval(noticeRolling,2000);
      $(".ul").append($(".ul li").first().clone());
    
    });
    </script>
</head>
<body>
  <!-- POPUP --> 
<div id="divpop" style="position:absolute;left:370px;top:50px;z-index:200;visibility:hidden;"> 
  <table> 
  <tr> 
      <td>  
      <img src="/img/notice1.png">
      </td> 
  </tr> 
  	<tr> 
      <form name="notice_form"> 
      <td align=right bgcolor=white style="font-size: 14px;"> 
          <input type="checkbox" name="chkbox" value="checkbox">오늘 하루 이 창을 열지 않음 
          <a href="javascript:closeWin();"><B>[닫기]</B></a> 
      </td> 
      </tr> 
      </form> 
  </table> 
  </div> 
  <script language="Javascript"> 
  cookiedata = document.cookie;    
  if ( cookiedata.indexOf("maindiv=done") < 0 ){      
      document.all['divpop'].style.visibility = "visible"; 
      } 
      else { 
          document.all['divpop'].style.visibility = "hidden"; 
  } 
  </script>
  <div id="container">
    <%@ include file="/header.jsp" %>
    <main>
      <div class="banner">
        <ul class="slider_container">
          <li class="slider"><img src="/img/banner_4.png"></li>
          <li class="slider"><img src="/img/banner_1.png"></li>
          <li class="slider"><img src="/img/banner_2.png"></li>
          <li class="slider"><img src="/img/banner_3.png"></li>
        </ul>
      </div>
      <a class="prev" onclick="plusSlides(-1, 0)">&lang;</a>
      <a class="next" onclick="plusSlides(1, 0)">&rang;</a>
		<ul class="section_name">
        <li class="title">GAME</li>
        <li><a id="more_items" href="/games/gameList.jsp">
          <div class="plus">더보기 +</div>
        </a></li>
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
              <li>리듬게임 </li>
              <li>장르 : 아케이드</li>
            </a>
          </ul>
        </div>
		<div class="item_box">
          <ul>
            <a href="/games/game_detail.jsp">
              <div class="conta">
              <li><img src="/img/flashgame/테트리스.png" class="imgimg"></li>
              <div class="textbox">
                <div class="hidden_text">출시예정</div>
              </div>
            </div>
              <li>테트리스 </li>
              <li>장르 : 퍼즐</li>
            </a>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
      <ul class="section_name">
        <li class="title">GOODS SHOP</li>
        <li><a id="more_items" href="/goods.com">
          <div class="plus">더보기 +</div>
        </a></li>
      </ul>

      <div id="panorama_items">
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/goods/goods1.png"></li>
              <li>팝콘 키홀더 </li>
              <li>8,900원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/goods/goods12.png"></li>
              <li>팝콘모양 오프너</li>
              <li>8,000원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/goods/goods13.png"></li>
              <li>팝콘 에어팟 케이스</li>
              <li>18,000원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/goods/goods10.png"></li>
              <li>팝콘 포켓 패브릭 포스터</li>
              <li>24,000원</li>
            </a>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
      <ul class="section_name">
        <li class="title">BOARD GAME SHOP</li>
        <li><a id="more_items" href="/shop/board_game.jsp">
          <div class="plus">더보기 +</div>
        </a></li>
      </ul>
      <div id="panorama_items">
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/boardgame/boardgame1.png"></li>
              <li>13일의 금요일 </li>
              <li>15,000원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/boardgame/boardgame2.png"></li>
              <li>할리갈리 카카오프렌즈</li>
              <li>24,000원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/boardgame/boardgame3.png"></li>
              <li>스플렌더</li>
              <li>43,000원</li>
            </a>
          </ul>
        </div>
        <div class="item_box">
          <ul>
            <a href="/shop/product_detail.jsp">
              <li><img src="/img/boardgame/boardgame4.png"></li>
              <li>루미큐브 (타일주머니 증정)</li>
              <li>55,000원</li>
            </a>
          </ul>
        </div>
      </div>
      <div class="footer_banner"><img src="/img/footer_banner1.png"></div>
      <a href=""></a>
    </main>
         
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
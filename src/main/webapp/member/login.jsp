<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/member/css/login.css" rel="stylesheet" type="text/css">
  <style>
  #content #alert{text-align:center; color:#666666;}
  </style>
  <script> 
    $(document).ready(function(){
      var height = $(".header_bottom").height();
      var num = $(".ul li").length; 
      var max = height * num;
      var move = 0;
      function noticeRolling(){
        move += height;
        $(".ul").animate({"top":-move},1000,function(){
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
  
  <div id="container">
    <a name="top"></a>
    <%@ include file="/header.jsp" %>
    <main>
            <ul class="section_name">
        <li class="title">로그인</li>
      </ul>
<!-- wrapper -->
<div id="wrapper">
    <!-- content-->
    <div id="content">
	    <form action="/login.com" method="post">
	    <p id="alert"> ${alert } </p>
	        <!-- ID -->
	        <div>
	            <h3 class="join_title">
	                <label for="id">아이디</label>
	            </h3>
	            <span class="box int_id">
	                <input type="text" name="id" id="id" class="int" maxlength="20">
	            </span>
	            <span class="error_next_box"></span>
	        </div>
	        <!-- PW1 -->
	        <div>
	            <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
	            <span class="box int_pass">
	                <input type="password" name="password" id="pswd1" class="int" maxlength="20">
	                <img src="../img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
	            </span>
	            <span class="error_next_box"></span>
	        </div>
        <!-- JOIN BTN-->
	        <div class="btn_area">
	            <input type="submit" id="btnJoin" value="로그인"/>
	        </div>
        </form>
        <div id="naver_id_login"></div>
        <ul class="find_wrap" id="find_wrap">
            <li><a target="_blank" href="find_id.jsp"
                   class="find_text">ID/PW 찾기 &nbsp;|</a></li>
            <li><a href="/join.com" class="find_text">&nbsp;회원가입</a>
            </li>

        </ul>
    </div> 
    <!-- content-->
</div> 
<script type="text/javascript">
	var naver_id_login = new naver_id_login("8NqOu4vn9dJVjoHUpcZi", "https://youlovenot.github.io/POPGames/pop%20games%20store/login.html");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3,50);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
</script>
    </main>
  </div>
</body>
</html>
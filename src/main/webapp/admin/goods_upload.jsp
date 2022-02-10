<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
   <link href="/css/header.css" rel="stylesheet" type="text/css">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/admin.css" rel="stylesheet" type="text/css">
<style>
      .inputArea { margin:20px 0; }
      label { display:inline-block; width:70px; padding:5px; }
      table .inputArea input{margin-bottom: 7px;}
      input { width:200px; }
    
      section#container { 
        padding:0 270px; border-top:2px solid #eee; border-bottom:2px solid #eee; }
      section#container::after { content:""; display:block; clear:both; }
      aside { float:left; width:200px; }
      div#container_box { float:right; width:calc(100% - 200px - 20px); }
      .inputArea button{padding: 5px;margin-top: 25px; margin-bottom: 30px;}
</style>
  
</head>
<body>
  <div class="container">
    <header>
      <div id="header">
        <div id="header_top">
          <div id="main_logo"><a href="/"><img src="/img/main_logo2.png"></a></div>
        <ul id="top_menu">
          <li><a href="/logout.com">로그아웃</a></li>
          <li><a href="/admin/member.com">회원관리</a></li>
          <li><a href="/admin/goods.com">굿즈</a></li>
          <li><a href="/admin/board_admin.jsp">보드게임</a></li>
          <li><a href="/admin/game_admin.jsp">게임</a></li>
        </ul>
        </div>
      </div>
    </header>
    <main class="main">
     <section id="container">
        <ul class="section">
          <li class="title_a">상품등록</li>
        </ul>
        <div id="container_box">        
          <form role="form" method="post" action="/insertGoods.com" autocomplete="off" enctype="multipart/form-data">
          <table> 
          <tr class="inputArea">
            <td><label for="gdsName">상품번호</label></td>
            <td><input type="text" id="gdsSeq" name="seq" /></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsName">상품명</label></td>
            <td><input type="text" id="gdsName" name="name" /></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsPrice">상품가격</label></td>
            <td><input type="text" id="gdsPrice" name="price" /></td>
          </tr>
          
          <tr class="inputArea">
            <td><label for="gdsStock">상품재고</label></td>
            <td><input type="text" id="gdsStock" name="stock" /></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsDes">상품설명</label></td>
            <td><input type="file" name="d1upload"></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsDes"></label></td>
            <td><input type="file" name="d2upload"></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsDes"></label></td>
            <td><input type="file" name="d3upload"></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsDes"></label></td>
            <td><input type="file" name="d4upload"></td>
          </tr>
          <tr class="inputArea">
            <td><label for="gdsDes"></label></td>
            <td><input type="file" name="d5upload"></td>
          </tr>
          
          <tr class="inputArea">
            <td><label for="gdsImg">이미지</label></td>
            <td><input type="file" id="gdsImg" name="imgupload" /></td>
            </tr>
          <tr class="inputArea">
            <td></td>
            <td><button type="submit" id="register_Btn" class="btn btn-primary">등록</button></td>			
          </tr>
           </table>
          </form> 
          </div>
      </section>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
</body>
</html>
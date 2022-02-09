<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/admin.css" rel="stylesheet" type="text/css">
   <link href="/css/header.css" rel="stylesheet" type="text/css">
  
</head>
<body>
  <div id="container">
     <header>
      <div id="header">
        <div id="header_top">
          <div id="main_logo"><a href="/index.jsp"><img src="/img/main_logo2.png"></a></div>
        <ul id="top_menu">
        <li><a href="/logout.do">로그아웃</a></li>
          <li><a href="/admin/mem_admin.jsp">회원관리</a></li>
          <li><a href="/admin/goods_admin.jsp">굿즈</a></li>
          <li><a href="/admin/board_admin.jsp">보드게임</a></li>
          <li><a href="/admin/game_admin.jsp">게임</a></li>
        </ul>
        </div>
      </div>
    </header>
    <main>
         <ul class="section">
            <li class="title_a">굿즈샵 관리</li>
          </ul>
          <FORM method="post" name="msgsearch" action="/admin/admin.jsp">
            <TABLE class="search">
             <TR>
              <TD class="search_select"> 
               <SELECT name=stype >
                <OPTION value=1 >상품명
                <OPTION value=2 >상품번호
               </SELECT>
              </TD>
              <TD class="search_select">
               <INPUT type=text size="17" name="sval" >
              </TD>
              <TD class="search_select"><a href="#" onClick="check();"><img src="/img/serach.gif"></A></TD>
             </TR>
            </TABLE>
            </FORM>
          <table class="table">
            <tr class="tr">
                <th>상품번호</th>
                <th>상품이미지</th>
                <th>상품명</th>
                <th>가격</th>
                <th>재고</th>
                <th>상품설명</th>
            </tr>
            <tr class="tr">
                <td>12342</td>
                <td>이쁜그림</td>
                <td>인형</td>
                <td>100억</td>
                <td>1</td>
                <td>많은그림</td>
            </tr>
          <tr><td colspan="6" style="padding-top: 10px; padding-right: 100px; text-align: right">
          <button onclick="location='/admin/goods_upload.jsp'" style="width: 80px; height: 30px">추가</button>
          </td></tr>
          </table>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
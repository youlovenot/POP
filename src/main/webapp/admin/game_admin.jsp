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
          <div id="main_logo"><a href="/POPGames.com"><img src="/img/main_logo2.png"></a></div>
        <ul id="top_menu">
        <li><a href="/logout.com">로그아웃</a></li>
          <li><a href="/admin/member.com">회원관리</a></li>
          <li><a href="/admin/goods.com">굿즈</a></li>
          <li><a href="/admin/boardgames.com">보드게임</a></li>
          <li><a href="/admin/game_admin.jsp">게임</a></li>
        </ul>
        </div>
      </div>
    </header>
    <main>
         <ul class="section">
            <li class="title_a">굿즈샵 관리</li>
          </ul>
          <FORM method="post" action="/admin/goods.com">
            <TABLE class="search">
             <TR>
              <TD class="search_select"> 
               <SELECT name="searchCondition" >
				<c:forEach items="${goodsConditionMap }" var="option">
					<option value="${option.value }">${option.key }
				</c:forEach>
               </SELECT>
              </TD>
              <TD class="search_select">
               <INPUT type=text size="17" name="searchKeyword" >
              </TD>
              <TD class="search_select"><input type="image" src="/img/serach.gif"></TD>
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
            
			<c:forEach items="${goodsList }" var="goods">
            <tr class="tr">
                <td>${goods.seq }</td>
                <td><img src="${imgpath }${goods.pimage}" width="100px" height="100px" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;" style="cursor:pointer;"></td>
                <td><a href="/goods_view.com?seq=${goods.seq }">${goods.name }</a></td>
                <td>${goods.price }원</td>
                <td>${goods.stock }</td>
                <td>
                	<c:if test="${not empty goods.detail1 }">
                	<img src="${imgpath}${goods.detail1 }" width="100px" height="100px" class="click_img" style="cursor:pointer" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+'menubar=no status=no toolbar=no location=no'); return false;"> 
                	</c:if>
                	<c:if test="${not empty goods.detail2 }">
                	<img src="${imgpath}${goods.detail2 }" width="100px" height="100px" class="click_img" style="cursor:pointer" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;"> 
                	</c:if>
                	<c:if test="${not empty goods.detail3 }">
                	<img src="${imgpath}${goods.detail3 }" width="100px" height="100px" class="click_img" style="cursor:pointer" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;">
                	</c:if>
                	<c:if test="${not empty goods.detail4 }">
                	<img src="${imgpath}${goods.detail4 }" width="100px" height="100px" class="click_img" style="cursor:pointer" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;"> 
                	</c:if>
                	<c:if test="${not empty goods.detail5 }">
                	<img src="${imgpath}${goods.detail5 }" width="100px" height="100px" class="click_img" style="cursor:pointer" onclick="window.open(this.src,'info','width='+this.naturalWidth+' height='+this.naturalHeight+' menubar=no status=no toolbar=no location=no'); return false;">
                	</c:if></td>
            </tr>
            </c:forEach>
            
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
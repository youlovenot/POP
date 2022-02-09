<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
    <main>
         <ul class="section">
            <li class="title_a">회원관리</li>
          </ul>
          
          <!-- 멤버 검색 -->
          <FORM method="post" action="/admin/member.com">
            <TABLE class="search">
             <TR>
              <TD class="search_select"> 
               <SELECT name="searchMCondition" >
				<c:forEach items="${memberConditionMap }" var="option">
					<option value="${option.value }">${option.key }
				</c:forEach>
               </SELECT>
              </TD>
              <TD class="search_select">
               <INPUT type=text size="17" name="searchMKeyword" >
              </TD>
              <TD class="search_select"><input type="image" src="/img/serach.gif"></TD>
             </TR>
            </TABLE>
            </FORM>
            
          <table class="table">
            <tr class="tr">
                <th>회원ID</th>
                <th>이름</th>
                <th>Email</th>
                <th>전화번호</th>
                <th>주소</th>
                <th>수정 및 삭제</th>
            </tr>
            
			<c:forEach items="${memberList }" var="member">
            <tr class="tr">
                <td>${member.id }</td>
                <td>${member.name }</td>
                <td>${member.email }</td>
                <td>${member.phone }</td>
                <td>${member.adress1 } ${member.adress2 }</td>
                <td>
                    <button>수정</button>
                    <button>삭제</button>
                </td>
            </tr>
            </c:forEach>
          </table>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
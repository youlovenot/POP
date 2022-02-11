<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/notice/css/noticeList.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%@ include file="/header.jsp" %>
    <ul class="section">
            <li class="title_a">공지사항</li>
          </ul>
          <!-- 멤버 검색 -->
          <FORM method="post" action="/admin/member.com">
            <TABLE class="search">
             <TR>
              <TD class="search_select"> 
               <SELECT name="searchCondition" >
				<c:forEach items="${noticeConditionMap }" var="option">
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
            
           <div class="board_zone_cont">
         <div class="board_zone_list" >
            <table class="board_list_table" style="width:100%">
                <colgroup>
                    <col style="width:6%">
                    <col style="width:37%;">
                    <col style="width:12%">
                    <col style="width:7%">
                    <col style="width:15%">
                </colgroup>
                <thead>
                 <tr>
                    <th style="width: 6%;">번호</th>
                    <th>제목</th>
                    <th style="width: 15%;">날짜</th>
                </tr>
                </thead>
                <tbody>
			<c:forEach items="${noticeList }" var="notice">
            <tr>
                <td>${notice.seq }</td>
                <td>${notice.title }</td>
                <td>${notice.regDate }</td>
            </tr>
            </c:forEach>
          </table>
          <c:if test="${memberId eq 'admin' }">
          <button onclick="location.href='/admin/insertNotice.com'">글 등록</button>
          </c:if>
    <%@ include file="/footer.jsp" %>
</body>
</html>
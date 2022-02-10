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
    <br>
    <br>
    <br>
    <br>
    <h1>공지사항</h1>
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
            
          <table class="table">
            <tr class="tr">
                <th>글번호</th>
                <th>제목</th>
                <th>게시일</th>
            </tr>
            
			<c:forEach items="${noticeList }" var="notice">
            <tr class="tr">
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
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
                <th>내용</th>
                <th>게시일</th>
            </tr>
            
			<c:forEach items="${noticeList }" var="member">
            <tr class="tr">
                <td>${notice.seq }</td>
                <td>${notice.name }</td>
                <td>${notice.content }</td>
                <td>${notice.regDate }</td>
            </tr>
            </c:forEach>
          </table>
    <%@ include file="/footer.jsp" %>
</body>
</html>
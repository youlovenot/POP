<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <style type="text/css">
  a {
  color: black;
  }
  a:link {
  text-decoration: none;
  }
  .board_list_table{
      margin:50px 0 100px 200px;
      text-align: center;
      border-collapse: collapse;
  }
  .board_list_table tr th{
    padding: 13px;
    border-bottom: 1px solid #dbdbdb;
    border-top: 1px solid #dbdbdb;
    background-color: #f3f3f3;
  }
  .board_list_table tr .dat{
    padding: 12px;
    border-bottom: 1px solid #dbdbdb;
  }
h1
{
	text-align: center;
}

.text
{
	width : 800px;
	height : 50px;
}

form #notice
{
	float:right;
}

.section{
    margin: 80px 0 80px 0;
    text-align: center;
  }
.section li {
     display: inline-block;
    margin: 5px;
}
.section .title_a {
    font-size: 40px;
    font-family:Arial, Helvetica, sans-serif;
}

.search{
    margin-left: 70%;
    margin-bottom: 20px;
}
#inserNoti{
	padding: 12px 20px;
	text-align: right;
}
</style>
</head>
<body>
    <%@ include file="/header.jsp" %>
    <ul class="section">
            <li class="title_a">공지사항</li>
          </ul>
          <!-- 멤버 검색 -->
          <FORM method="post" action="/noticeList.com">
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
                <td class="dat">${notice.seq }</td>
                <td class="dat"><a href="/notice_view.com?seq=${notice.seq }">${notice.title }</a></td>
                <td class="dat"><fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd"/></td>
            </tr>
            </c:forEach>
            <tr><td id="inserNoti" colspan="3">
          <c:if test="${memberId eq 'admin' }">
          <button onclick="location.href='/admin/insertNotice.com'"> 글 등록 </button>
          </c:if>
          </td></tr>
          </table>
    <%@ include file="/footer.jsp" %>
</body>
</html>
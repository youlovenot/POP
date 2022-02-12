<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLine", "\r\n"); %>

<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/notice.css" rel="stylesheet" type="text/css">
  
</head>
<body>
  <div id="container">
    <%@ include file="/header.jsp" %>
    <main>
       <ul class="section_name">
        <li class="title">${notice.title }</li>
      </ul>
      <div class="notice">
      <c:if test="${not empty notice.image }">
        <img src="${imgpath }${notice.image}">
        </c:if>
      </div>
      <ul id="notice_ex">
        <li>${fn:replace(notice.content, newLine, "<br>")}</li>
      </ul>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
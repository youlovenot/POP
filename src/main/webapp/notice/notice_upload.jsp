<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <form action="/admin/insertNotice.com" enctype="multipart/form-data" method="POST">
       <ul class="section_name">
        <li class="title"><input type="text" placeholder="공지제목" name="title"></li>
      </ul>
      <div class="notice">
        <input type="file" name="uploadFile">이미지파일업로드
      </div>
      <ul id="notice_ex">
        <li><textarea rows="50" cols="100" placeholder="공지내용" name="content"></textarea></li>
      </ul>
            <ul><li><input type="submit" value="등록"></li></ul>	
      </form>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
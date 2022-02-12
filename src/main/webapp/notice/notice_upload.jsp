<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="/js/jquery-3.2.1.min.js"></script>
  <script src="/js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <style>
  .section_name {
	    text-align: center;
    	justify-content: center;
    	padding-bottom: 150px;
    	padding-left: 200px;
  }
  #title {
  	height: 50px;
  	width: 500px;
  	font-size: 30px;
  	padding-left: 10px;
  }
  .title {
  	padding-top: 20px;
  }
  .notice{
    display: flex;
}
#notice_ex{
}
.title textarea{
    font-size: 20px;
  	padding-left: 5px;
}
  </style>
</head>
<body>
  <div id="container">
    <%@ include file="/header.jsp" %>
    <main>
    <form action="/admin/insertNotice.com" enctype="multipart/form-data" method="POST">
       <ul class="section_name">
	       <li class="title">공지제목<br>
	       <input type="text" placeholder="공지제목" name="title" id="title"></li>
	       <div class="clear"/>
	       <li class="title"> 이미지 파일 업로드<br>
	       <input type="file" name="uploadFile"></li>
	       <div class="clear"/>
	       <li class="title">공지내용 <br>
	       <textarea rows="10" cols="60" placeholder="공지내용" name="content"></textarea></li>
	       <div class="clear"/>
	       <li><input type="submit" value="등록"></li>
      </ul>
      </form>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
  </div>
</body>
</html>
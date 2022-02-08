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
    <br>
    <br>
    <table>
    <tr>
    <th class = "num">번호</th>
    <th class = "text">내용</th>
    <th class = "writer">게시자</th>
    <th class = "date">등록일</th>
    <th class = "count">조회수</th>
    </tr>
    <tr>
    <td class = "num">2</td>
    <td class = "text">필독!! 설 연휴 배송 공지사항입니다.</td>
    <td class = "writer">관리자</td>
    <td class = "date">2022.02.07</td>	
    <td class = "count">0</td>
    </tr>
    <tr>
    <td class = "num">1</td>
    <td class = "text">배송지연 공지사항입니다.</td>
    <td class = "writer">관리자</td>
    <td class = "date">2022.01.30</td>
    <td class = "count">5</td>
    </tr>
    </table>
    <br><br>
    <form id = "notice">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select>
    <option>내용</option>
    <option>번호</option>
    </select>
    <input type="text">
    <button>검색</button>
    </form>
    <br><br>
    <%@ include file="/footer.jsp" %>
</body>
</html>
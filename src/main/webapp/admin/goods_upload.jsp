<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
   <link href="/css/header.css" rel="stylesheet" type="text/css">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/admin.css" rel="stylesheet" type="text/css">
<style>
.section{margin: 80px 0 30px 0;text-align: center;}
.inputArea { margin:10px 0; }
.inputArea ul li{display:inline-block;padding:1px;}
.inputArea ul li input{margin-bottom:2px; text-align:left;}
select { width:100px; }
label { display:inline-block; width:70px; padding:5px; }
label[for='gdsDes'] { display:block; }
input { width:200px; }
textarea#gdsDes { width:400px; height:180px; }
.select_img img { margin:20px 0; }
section#container { 
  margin-top: 10px;
  padding:0 250px; border-top:2px solid #eee; border-bottom:2px solid #eee; }
section#container::after { content:""; display:block; clear:both; }
aside { float:left; width:200px; }
div#container_box { float:right; width:calc(100% - 200px - 20px); }
.inputArea button{padding: 5px;}
</style>
  
</head>
<body>
  <div id="container">
    <header>
      <div id="header">
        <div id="header_top">
          <div id="main_logo"><a href="/index.jsp"><img src="/img/main_logo2.png"></a></div>
        <ul id="top_menu">
          <li><a href="/logout.do">로그아웃</a></li>
          <li><a href="/admin/admin.jsp">회원관리</a></li>
          <li><a href="/admin/item_upload.jsp">상품등록</a></li>
          <li><a href="/admin/admin.jsp">상품조회</a></li>
          <li><a href="/admin/item_upload.jsp">게임등록</a></li>
          <li><a href="/admin/admin.jsp">게임조회</a></li>
        </ul>
        </div>
      </div>
    </header>
    <main class="main">
     <section id="container">
        <ul class="section">
          <li class="title_a">상품등록</li>
        </ul>
        <div id="container_box">        
          <form role="form" method="post" action="/insertGoods.do" autocomplete="off" enctype="multipart/form-data">
          
          <div class="inputArea">
            <label for="gdsName">상품명</label>
            <input type="text" id="gdsName" name="name" />
          </div>
          
          <div class="inputArea">
            <label for="gdsPrice">상품가격</label>
            <input type="text" id="gdsPrice" name="price" />
          </div>
          
          <div class="inputArea">
            <label for="gdsStock">상품재고</label>
            <input type="text" id="gdsStock" name="stock" />
          </div>
          
          <div class="inputArea">
            <ul>
            <li><label for="gdsDes">상품설명</label><li>
            <li><input type="file" name="detail1"></li><br>
            <li><label for="gdsDes"></label></li>
            <li><input type="file" name="detail2"></li><br>
            <li><label for="gdsDes"></label></li>
            <li><input type="file" name="detail3"></li><br>
            <li><label for="gdsDes"></label></li>
            <li><input type="file" name="detail4"></li><br>
            <li><label for="gdsDes"></label></li>
            <li><input type="file" name="detail5"></li>
            </ul>
          </div>
          
          <div class="inputArea">
            <label for="gdsImg">이미지</label>
            <input type="file" id="gdsImg" name="pimage" />
            <div class="select_img"><img src="" /></div>
            
            <script>
              $("#gdsImg").change(function(){
                if(this.files && this.files[0]) {
                  var reader = new FileReader;
                  reader.onload = function(data) {
                    $(".select_img img").attr("src", data.target.result).width(500);								
                  }
                  reader.readAsDataURL(this.files[0]);
                }
              });
            </script> 
          </div>
          <div class="inputArea">
            <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>			
          </div> 
          </form> 
        </div>
      </section>
    </main>
    <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
</body>
</html>
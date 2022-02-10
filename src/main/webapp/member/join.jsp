<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>pop games</title>
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/index.js"></script>
  <link rel="shortcut icon" type="image⁄x-icon" href="/img/favicon.ico">
  <link href="/css/common.css" rel="stylesheet" type="text/css">
  <link href="/css/join.css" rel="stylesheet" type="text/css">
  <script> 
    $(document).ready(function(){
      var height = $(".header_bottom").height();
      var num = $(".ul li").length; 
      var max = height * num;
      var move = 0;
      function noticeRolling(){
        move += height;
        $(".ul").animate({"top":-move},1000,function(){
          if(move >= max){
            $(this).css("top",0);
            move = 0;
          };
    
        });
      };
      noticeRollingOff = setInterval(noticeRolling,2000);
      $(".ul").append($(".ul li").first().clone());
    
    });
    </script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
</head>
<body>
  
  <div id="container">
    <a name="top"></a>
    <%@ include file="/header.jsp" %>
     <main class="main">
      <ul class="section_name">
    <c:if test="${empty member }">
        <li class="title">회원가입</li>
    </c:if>
    <c:if test="${not empty member }">
        <li class="title">회원수정</li>
    </c:if>
      </ul>
<!-- wrapper -->
<div id="wrapper">
    <!-- content-->
    <div id="content">
    <c:if test="${empty member }">
    <form action="/join.com" method="post">
    </c:if>
    <c:if test="${not empty member }">
    <form action="/admin/updateMemberP.com" method="post">
    </c:if>
        <!-- ID -->
        <div>
            <h3 class="join_title">
                <label for="id">아이디</label>
            </h3>
            <span class="box int_id">
            	<c:if test="${not empty member }">
                <input type="text" name="id" id="id" class="int" maxlength="20" value="${member.id }" disabled>
                </c:if>
            	<c:if test="${empty member }">
                <input type="text" name="id" id="id" class="int" maxlength="20">
                </c:if>
            </span>
        </div>
        <!-- PW1 -->
        <div>
            <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
            <span class="box int_pass">
                <input type="password" name="password" id="pswd1" class="int" maxlength="20" value="${member.password }">
                <img src="../img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
            </span>
        </div>
        <!-- PW2 -->
        <div>
            <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
            <span class="box int_pass_check">
                <input type="password" name="password2" id="pswd2" class="int" maxlength="20" value="${member.password }">
                <img src="../img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
            </span>
        </div>
        <!-- NAME -->
        <div>
            <h3 class="join_title"><label for="name">이름</label></h3>
            <span class="box int_name">
                <input type="text" name="name" id="name" class="int" maxlength="20" value="${member.name }">
            </span>
        </div>
        <!-- MOBILE -->
        <div>
            <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
            <span class="box int_mobile">
                <input type="tel" name="phone" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" value="${member.phone }">
            </span>
        </div>
        <!-- EMAIL -->
        <div>
            <h3 class="join_title"><label for="email">이메일</label></h3>
            <span class="box int_email">
                <input type="text" name="email" id="email" class="int" maxlength="100" value="${member.email }">
            </span>
        </div>
        <!--Address-->
        <div>
            <h3 class="join_title"><label for="address">주소</label></h3>
            <span class="s_box int_address">
                <input type="text" class="int" name="zipcode" id="sample6_postcode" placeholder="우편번호" readonly value="${member.zipcode }">
            </span> 
            <span class="int_address">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            </span> 
            <span class="box int_address">
                <input type="text" class="int" name="adress1" id="sample6_address" placeholder="주소" readonly value="${member.adress1 }">
            </span>  
            <span class="s_box int_address">
                <input type="text" class="int" name="adress2" id="sample6_detailAddress" placeholder="상세주소" value="${member.adress2 }">   
            </span> 
            <span class="s_box int_address">
                <input type="text" class="int" name="adress3" id="sample6_extraAddress" placeholder="참고항목" readonly value="${member.adress3 }">
            </span> 
        </div>
        <!-- JOIN BTN-->
        <div class="btn_area">
            <c:if test="${not empty member }">
            	<input type="submit" id="btnJoin" value="정보수정">
            </c:if>
            <c:if test="${empty member }">
            	<input type="submit" id="btnJoin" value="가입하기">
            </c:if>
        </div>
        </form>
    </div> 
    <!-- content-->
</div> 
<!-- wrapper -->
    </main>
  </div>
</body>
</html>
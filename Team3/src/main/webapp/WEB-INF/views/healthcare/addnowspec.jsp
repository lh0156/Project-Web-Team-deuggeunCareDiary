<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
 <link rel="stylesheet" href="/team3/asset/css/healthcare.css/healthcare_now.css" />
    <style>
      #content {
        width: 100%;
        height: 1200px;
        /* border: 1px solid black; */
        /* box-sizing: border-box; */
      }
      #container {
        width: 1000px;
        height: 500px;
        margin: 0 auto;
        /* border: 1px solid black; */
        /* box-sizing: border-box; */
      }
    </style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	<!-- location -->
  <div id="inc-location">
      <div>헬스케어</div>
      <div>
        메인
        <i class="fas fa-angle-right"></i
        ><a href="healthcare_main.html"> 헬스케어</a>
        <i class="fas fa-angle-right"></i
        ><a href="healthcare_now.html"> 정보입력</a>
      </div>
    </div>
    <!-- content  -->
    <div id="content">
      <!-- 헬스케어 이미지 -->
      <div class="healthcare_main_img">
        <div id="cover">
          <img src="/team3/asset/images/healthcaremain.jpg" style="opacity: 0.9" />
        </div>
      </div>
      <div id="container">
        <!-- 헬스 케어 현재스펙 입력창 제목 1/2 -->
        <form method="GET" action="/team3/healthcare/addnowspecok.do">
          <div class="formtotal">
            <div class="font">
              <i class="fas fa-lightbulb"
                ><span id="subfont1"
                  >&nbsp;&nbsp;회원님의 성별과 나이를 확인해주세요.</span
                ></i
              >
            </div>
            <div style="clear: both"></div>

            <!-- 헬스케어 현재스펙 정보 입력창 -->
            <div id="gender">
              <label>성별</label>
              <input type="text" name="txtgender" required value="${dto.gender}" readonly />
            </div>

            <div id="age">
              <label>나이</label>
              <input type="text" name="txtage" required value="${age}" readonly />
            </div>

            <!-- 헬스케어 현재스펙 입력창 제목 2/2 -->
            <div class="font">
              <i class="fas fa-lightbulb"
                ><span id="subfont2"
                  >&nbsp;&nbsp;회원님의 오늘의 인바디를 입력해주세요.</span
                ></i
              >
            </div>
            <div style="clear: both"></div>

            <div id="weight">
              <label>체중</label>
              <input type="number" name="txtweight" min="0"/>
            </div>

            <div id="fat">
              <label>체지방량</label>
              <input type="number" name="txtfat" min="0"/>
            </div>

            <div id="muscle">
              <label>근육량</label>
              <input type="number" name="txtmuscle" min="0"/>
            </div>
			
			<!-- input type="hidden" (시퀀스 넘기기용) -->
			<input type="hidden" name="memberseq" value="${memberseq}">
            <!-- 헬스케어 넘어가기 버튼 -->
            <div>
              <input type="submit" value="입력하기" id="btn2">
                <!-- onClick="location.href='/team3/wantspec/add.do?memberseq=${dto.memberSeq}';" -->
              <input
                type="button"
                value="기록보기"
                name="bt1"
                id="btn1"
                onClick="location.href='/team3/specrecord/edit.do'"
              />
            </div>
          </div>
        </form>
      </div>
    </div>

    <!-- 헬스케어 넘어가기 버튼 자바스크립트 -->
    <script>
      var txtgender = document.healthcare_now_form.txtgender;
      var txtage = document.healthcare_now_form.txtage;
      var txtweight = document.healthcare_now_form.txtweight;
      var txtfat = document.healthcare_now_form.txtfat;
      var txtmuscle = document.healthcare_now_form.txtmuscle;

      var bt2 = document.healthcare_now_form.bt2;

      bt2.onclick = m2;

      function m2() {
        for (var i = 0; i < txtweight.value.length; i++) {
          var c = txtweight.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체중은 숫자만 입력해주세요.");
            txtweight.focus();
            return;
          }
        }

      

        for (var i = 0; i < txtfat.value.length; i++) {
          var c = txtfat.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체지방량은 숫자만 입력해주세요.");
            txtfat.focus();
            return;
          }
        }

        

        for (var i = 0; i < txtmuscle.value.length; i++) {
          var c = txtmuscle.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("근육량은 숫자만 입력해주세요.");
            txtmuscle.focus();
            return;
          }
        }

      

        document.healthcare_now_form.submit();
      }
    </script>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
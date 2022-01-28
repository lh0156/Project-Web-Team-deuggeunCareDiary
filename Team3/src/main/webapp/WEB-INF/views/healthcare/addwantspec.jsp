<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
  <link rel="stylesheet" href="/team3/asset/css/healthcare.css/healthcare_want.css" />
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
        <i class="fas fa-angle-right"></i
        ><a href="healthcare_want.html"> 목표입력</a>
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
        <!-- 헬스케어 목표스펙 입력창 제목 1/2 -->
        <form method="GET" name="healthcare_want_form" action="/team3/healthcare/specresult.do">
          <div class="formtotal">
            <div class="font">
              <i class="fas fa-lightbulb"
                ><span id="subfont1"
                  >&nbsp;&nbsp;회원님의 목표 인바디를 입력해주세요.</span
                ></i
              >
            </div>
            <div style="clear: both"></div>

            <!-- 헬스케어 목표스펙 정보 입력창 -->
            <div id="weight">
              <label>목표 체중</label>
              <input type="number" value="몸무게" name="wantweight" />
            </div>

            <div id="fat">
              <label>목표 체지방량</label>
              <input type="number" value="체지방량" name="wantfat" />
            </div>

            <div id="muscle">
              <label>목표 근육량</label>
              <input type="number" value="근육량" name="wantmuscle" />
            </div>

            <!-- 헬스케어 목표스펙 입력창 제목 2/2 -->
            <div class="font">
              <i class="fas fa-lightbulb"
                ><span id="subfont2"
                  >&nbsp;&nbsp;회원님의 운동 목적과 목표 기간을
                  입력해주세요.</span
                ></i
              >
            </div>
            <div style="clear: both"></div>

            <!-- 헬스케어 목표스펙 정보 입력창 -->
            <div id="time">
              <label>목표 기간</label>
              <input type="date" name="wantdate" />
            </div>

            <div id="goal">
              <label>운동 목적</label>
              <select size="1" name="wantgoal" id="dropgoal">
                <option value="벌크업">벌크업</option>
                <option value="린매스업">린매스업</option>
                <option value="컷팅">컷팅</option>
              </select>
            </div>

			<!-- 히든 (멤버 시퀀스 넘기기용) -->
			<input type="hidden" name="memberseq" value="${memberseq }"> 
            <!-- 헬스케어 넘어가기 버튼 --> 
            <div>
              <input
                type="submit"
                value="입력확인"
                name="bt2"
                id="btn2"
              />
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
      var wantweight = document.healthcare_want_form.wantweight;
      var wantfat = document.healthcare_want_form.wantfat;
      var wantmuscle = document.healthcare_want_form.wantmuscle;
      var wantdate = document.healthcare_want_form.wantdate;
      var wantgoal = document.healthcare_want_form.wantgoal;

      var bt2 = document.healthcare_want_form.bt2;

      bt2.onclick = m2;

      function m2() {
        for (var i = 0; i < wantweight.value.length; i++) {
          var c = wantweight.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체중은 숫자만 입력해주세요.");
            wantweight.focus();
            return;
          }
        }

        if (wantweight.value.trim() == "") {
          alert("체중을 입력해주세요.");
          wantweight.focus();
          return;
        }

        for (var i = 0; i < wantfat.value.length; i++) {
          var c = wantfat.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체지방량은 숫자만 입력해주세요.");
            wantfat.focus();
            return;
          }
        }

        if (wantfat.value.trim() == "") {
          alert("체지방량을 입력해주세요.");
          wantfat.focus();
          return;
        }

        for (var i = 0; i < wantmuscle.value.length; i++) {
          var c = wantmuscle.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("근육량은 숫자만 입력해주세요.");
            wantmuscle.focus();
            return;
          }
        }

        if (wantmuscle.value.trim() == "") {
          alert("근육량을 입력해주세요.");
          wantmuscle.focus();
          return;
        }

        

        if (wantdate.value.trim() == "") {
          alert("목표 기간을 선택해주세요.");
          wantdate.focus();
          return;
        }

        document.healthcare_want_form.submit();
      }
    </script>
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
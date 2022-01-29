<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
  <link rel="stylesheet" href="/team3/asset/css/healthcare.css/healthcare_result.css" />

    <style>
      #content {
        width: 100%;
        height: 1350px;
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
        <i class="fas fa-angle-right"></i
        ><a href="healthcare_result.html"> 결과확인</a>
      </div>
    </div>
    
    <!-- content  -->
    <div id="content">
      <!-- 헬스케어 이미지 -->
      <div class="healthcare_main_img">
        <div id="cover">
          <img src="/team3/asset/images/result3.png" style="opacity: 0.9" />
        </div>
      </div>
      <div id="container">
        <!-- 헬스케어 결과확인 제목 -->
        <form method="GET" name="healthcare_now_form" action="/team3/specrecord/edit.do.jsp">
          <div class="formtotal">
            <div class="font">
              <i class="fas fa-search"
                ><span id="subfont1">&nbsp;&nbsp;회원님의&nbsp;</span></i
              >
            </div>
            <div style="clear: both"></div>

            <!-- 헬스케어 결과확인 정보  -->
            <div id="kal">
              <label>하루 권장 소비 칼로리</label>
              <input type="text"  name="txtkal" required value="${a}&nbsp;Kcal" readonly  />
            </div>
            <div style="clear: both"></div>

            <div id="tansu">
              <label>권장 탄수화물 섭취량</label>
              <input type="text" name="txttansu" required value="${b}&nbsp;g" readonly />
            </div>

            <div id="pro">
              <label>권장 단백질 섭취량</label>
              <input type="text"  name="txtpro" required value="${c}&nbsp;g" readonly  />
            </div>

            <div id="fat_r">
              <label>권장 지방 섭취량</label>
              <input type="text"  name="fat_r" required value="${d}&nbsp;g" readonly />
            </div>

            <div id="kg">
              <label>목표 감량 체중</label>
              <input type="text" name="txtkg"required value="${e}&nbsp;Kg" readonly />
            </div>
            <div style="clear: both"></div>

            <!-- 헬스케어 넘어가기 버튼 -->
            <div id="btn3">
              <input
                type="button"
                value="이전단계"
                name="bt2"
                id="btn2"
                 onClick="location.href='/team3/healthcare/addnowspecok.do'"
              />
              <input
                type="button"
                value="기록보기"
                name="bt1"
                id="btn1"  onClick="location.href='/team3/specrecord/edit.do'"
                />
            </div>
          </div>
        </form>
      </div>
    </div>

    <!-- 헬스케어 넘어가기 버튼 자바스크립트 -->
    <script>

    </script>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
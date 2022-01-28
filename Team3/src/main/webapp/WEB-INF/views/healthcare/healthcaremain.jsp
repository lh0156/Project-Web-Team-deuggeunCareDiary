<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
    <link rel="stylesheet" href="/team3/asset/css/healthcare.css/healthcare_main.css" />
  <style>
      #content {
        width: 100%;
        height: 1500px;
        /* border: 1px solid black; */
        /* box-sizing: border-box; */
      }
      #container {
        width: 1000px;
        height: 200px;
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
      </div>
    </div>
    <!-- content  -->
    <div id="content">
      <div id="container">
        <!-- 헬스케어 카테고리 소개 (헬스케어 메인) -->
        <div class="title">
          <span id="title_one">득근득근 케어일기</span>&nbsp;는
          <div class="title" id="title_two">균형있는 체형을 디자인합니다.</div>
        </div>
        <div class="line">
          <div id="main_img1">
            <img src="/team3/asset/images/Avocado_Salad.jpg" style="opacity: 0.9" />
          </div>
          <div class="content">
            <div class="subtitle">회원 맞춤 정보 제공</div>
            <div class="subtxt">
              회원님에게 꼭 맞는 제품뿐만 아니라 맞춤 건강 정보까지 제공합니다.
            </div>
          </div>
        </div>

        <div class="line">
          <div id="main_img2">
            <img src="/team3/asset/images/graph.jpg" style="opacity: 0.9" />
          </div>
          <div class="content">
            <div class="subtitle" id="sub1">
              눈으로 쉽게 확인할 수 있는 나의 그래프
            </div>
            <div class="subtxt" id="sub2">
              세상에서 단 하나뿐인 개인 맞춤 인바디 그래프를 확인할 수 있습니다.
            </div>
          </div>
        </div>

        <div class="line">
          <div id="main_img3">
            <img src="/team3/asset/images/running.png" style="opacity: 0.9" />
          </div>
          <div class="content">
            <div class="subtitle">나만의 Health's history</div>
            <div class="subtxt">
              나의 헬스 정보는 기록되어 언제든 확인할 수 있으며 도움이 되는
              영상을 제안합니다.
            </div>
          </div>
        </div>
        
       <%--  <c:if test="${not empty id}"> --%>
        <a href="/team3/healthcare/addnowspec.do?memberseq=MB3">
          <div id="btngo">
            인바디
            기록하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
              class="fas fa-sign-in-alt"
              id="some"
            ></i></div
        ></a><%-- </c:if> --%>
      </div>
    </div>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
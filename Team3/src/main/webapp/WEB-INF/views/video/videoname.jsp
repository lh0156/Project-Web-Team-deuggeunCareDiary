<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
    <link rel="stylesheet" href="/team3/asset/css/video.css/video.css" />
    <style>
      #content {
        width: 100%;
        height: 1900px;
      }
      #container {
        width: 1000px;
        height: 200px;
        margin: 0 auto;
      }
    </style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	   <!-- location -->
    <div id="inc-location">
      <div>득근영상</div>
      <div>
        메인
        <i class="fas fa-angle-right"></i>
        득근영상
      </div>
    </div>
    <!-- content  -->
    <div id="content">
      <div id="container">
        <!-- 영상 카테고리 : 영양학 -->
        <div id="content1" class="all_content">
          <div id="category1" class="video_category">
            득근득근과 함께하는 영양학
          </div>

          <!-- 영양학 영상 갯수 & 정렬 -->
          <div id="info1" class="video_info">
            <b>5개</b>의 영상이 있습니다.
            <ui class="list">
              <li class="order">
                <a href='/team3/video/name.do' target="_self">이름순</a>
              </li>
              <li><a href='/team3/video/reg.do' target="_self">등록순</a></li>
            </ui>
          </div>

          <!-- 영양학 영상 & 유튭 링크  -->
          <div id="video1" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=yhfw8tIoZ4s&t=220s"
              target="_blank"
            >
              <img src="/team3/asset/images/title1.webp" width="230"
            /></a>
          </div>
          <div id="video2" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=wOFtFfYBVSI"
              target="_blank"
            >
              <img src="/team3/asset/images/title5.jpg" width="230"
            /></a>
          </div>
          <div id="video3" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=FZsbF9PpluM"
              target="_blank"
            >
              <img src="/team3/asset/images/title3.jpg" width="230"
            /></a>
          </div>
          <div id="video4" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=9-9-cnqHG8Q"
              target="_blank"
            >
              <img src="/team3/asset/images/title2.jpg" width="230"
            /></a>
          </div>

          <!-- 영양학 영상 제목 & 유튭 링크 -->
          <div id="title1" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=yhfw8tIoZ4s&t=220s"
              target="_blank"
              id="atitle1"
            >
              국내 최정상 스포츠영양사가 알려주는 "탄수화물"이란</a
            >
          </div>
          <div id="title2" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=wOFtFfYBVSI"
              target="_blank"
              id="atitle2"
            >
              기초부터 알아보는 우수한 영양상담 지방 ( feat.포화&불포화)</a
            >
          </div>
          <div id="title3" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=FZsbF9PpluM"
              target="_blank"
              id="atitle3"
            >
              운동 후 최적의 영양섭취 가이드(feat.기회의창)</a
            >
          </div>
          <div id="title4" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=9-9-cnqHG8Q"
              target="_blank"
              id="atitle4"
            >
              트레이너 출신 스포츠영양사가 알려주는 단백질 천하통일 총정리 1</a
            >
          </div>

          <!-- 영양학 두번째 줄 영상 & 제목 & 링크 -->
          <div id="video5" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=XQ5V1NEO-R0"
              target="_blank"
            >
              <img src="/team3/asset/images/title4.jpg" width="230"
            /></a>
          </div>
          <div style="clear: both"></div>
          <div id="title5" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=XQ5V1NEO-R0"
              target="_blank"
              id="atitle5"
            >
              [우수한 영양상담] 나트륨</a
            >
          </div>
        </div>

        <!-- 영상 카테고리 : 보충제 -->
        <div id="content2" class="all_content">
          <div id="category2" class="video_category">도움이 되는 보충제</div>

          <!-- 보충제 영상 갯수 & 정렬 -->
          <div id="info2" class="video_info">
            <b>5개</b>의 영상이 있습니다.
            <ui class="list">
              <li class="order">
                 <a href='/team3/video/name.do' target="_self">이름순</a>
              </li>
              <li><a href='/team3/video/reg.do' target="_self">등록순</a></li>
            </ui>
          </div>

          <!-- 보충제 영상 & 유튭 링크 -->
          <div id="video6" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=Dj3kYRr5zDo"
              target="_blank"
            >
              <img src="/team3/asset/images/title10.jpg" width="230"
            /></a>
          </div>
          <div id="video7" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=-yLtnBU42Vw"
              target="_blank"
            >
              <img src="/team3/asset/images/title6.jpg" width="230"
            /></a>
          </div>
          <div id="video8" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=VnsTna_ZGBI"
              target="_blank"
            >
              <img src="/team3/asset/images/title9.jpg" width="230" height="129.38"
            /></a>
          </div>
          <div id="video9" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=TKwIH9IvM6c"
              target="_blank"
            >
              <img src="/team3/asset/images/title7.jpg" width="230"
            /></a>
          </div>
          
          <!-- 보충제 영상 제목 & 유튭 링크 -->
          <div id="title6" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=Dj3kYRr5zDo"
              target="_blank"
              id="atitle6"
            >
              김계란이 추천하는 운동 전,후 영양제</a
            >
          </div>
          <div id="title7" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=-yLtnBU42Vw"
              target="_blank"
              id="atitle7"
            >
              단백질 보충제 선택의 모든것!</a
            >
          </div>
          <div id="title8" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=VnsTna_ZGBI"
              target="_blank"
              id="atitle8"
            >
              보충제 시장 1등급 고인물 스포츠영양사의 국산vs외국 단백질 보충제
              전격비교</a
            >
          </div>
          <div id="title9" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=TKwIH9IvM6c"
              target="_blank"
              id="atitle9"
            >
              약사가 선택한 단백질보충제, 동물성이냐 식물성이냐 그것이
              알고싶다!</a
            >
          </div>

          <!-- 보충제 두번째 줄 영상 & 제목 & 링크 -->
          <div id="video10" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=8j58DptAB3w"
              target="_blank"
            >
              <img src="/team3/asset/images/title8.jpg" width="230"
            /></a>
          </div>
          <div style="clear: both"></div>
          <div id="title11" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=8j58DptAB3w"
              target="_blank"
              id="atitle10"
            >
              종결) 영양제, 보조제는 딱 이것들만 드세요 !!!!!</a
            >
          </div>
        </div>

        <!-- 영상 카테고리 : 식단관리 -->
        <div id="content3" class="all_content">
          <div id="category3" class="video_category">효과적인 식단 관리</div>

          <!-- 식단관리 영상 갯수 & 정렬 -->
          <div id="info3" class="video_info">
            <b>5개</b>의 영상이 있습니다.
            <ui class="list">
              <li class="order">
               <a href='/team3/video/name.do' target="_self">이름순</a>
              </li>
              <li><a href='/team3/video/reg.do' target="_self">등록순</a></li>
            </ui>
          </div>

          <!-- 식단관리 영상 & 유튭 링크 -->
          <div id="video11" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=Mt8ll1FACAA"
              target="_blank"
            >
              <img src="/team3/asset/images/title13.jpg" width="230"
            /></a>
          </div>
          <div id="video12" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=AgX7yqQcb_k"
              target="_blank"
            >
              <img src="/team3/asset/images/title15.jpg" width="230"
            /></a>
          </div>
          <div id="video13" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=lTBPAjs2BtA"
              target="_blank"
            >
              <img src="/team3/asset/images/title11.jpg" width="230"
            /></a>
          </div>
          <div id="video14" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=nuEvLCD5j6c"
              target="_blank"
            >
              <img src="/team3/asset/images/title14.jpg" width="230"
            /></a>
          </div>

          <!-- 식단관리 영상 제목 & 유튭 링크 -->
          <div id="title11" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=Mt8ll1FACAA"
              target="_blank"
              id="atitle11"
            >
              무조건 감량 가능한 참가자들의 다이어트 식단공개</a
            >
          </div>
          <div id="title12" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=AgX7yqQcb_k"
              target="_blank"
              id="atitle12"
            >
              살 빼기 힘든 식단 vs 효과적인 다이어트식단 🔥63kg에서 44kg! 식단
              공개</a
            >
          </div>
          <div id="title13" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=lTBPAjs2BtA"
              target="_blank"
              id="atitle13"
            >
              식단 이대로 해보세요. 식단 짜는 방법 !</a
            >
          </div>
          <div id="title14" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=nuEvLCD5j6c"
              target="_blank"
              id="atitle14"
            >
              체지방 3% 만드는 대회식단 완벽 대 공개!</a
            >
          </div>

          <!-- 식단관리 두번째 줄 영상 & 제목 & 링크 -->
          <div id="video15" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=y4vZ44rGxUw"
              target="_blank"
              id="atitle15"
            >
              <img src="/team3/asset/images/title12.jpg" width="230"
            /></a>
          </div>
          <div style="clear: both"></div>
          <div id="title16" class="video_title">
            <a
              href="https://www.youtube.com/watch?v=y4vZ44rGxUw"
              target="_blank"
              id="atitle16"
            >
              최초 식단 공개! 다이어트 30년 노하우 공개! l 최고의 다이어트
              Ep.1</a
            >
          </div>
        </div>
      </div>
    </div>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
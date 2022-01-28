<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
	<style>
	    #content{
            width: 100%;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #container{
            width: 1000px;
            margin: 0 auto;
            margin-top: 30px;
            margin-bottom: 200px;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
          #myqamanage {
            margin-top: 50px;
        }
        #intro {
            
            display: flex;
            text-align: center;
            vertical-align: middle;
        }
        #intro > div:nth-child(1) {
            width:15%;
        }
        #intro > div:nth-child(2) {
            width:15%;
            
        }
        #intro > div:nth-child(3) {
            display: flex;
            width: 70%;
            justify-content: flex-end;
        }
        #intro p {
            height: 50px;
        }
        #intro > div:nth-child(1) p {
            font-size: 20px;
            color: grey;
            height: 30px;
            line-height: 30px;
        }
        #intro > div:nth-child(2) p {
            border: 1px solid tomato;
            color: tomato;
            border-radius: 10px;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            width: 120px;
            cursor: pointer;
            
        }
        #intro > div:nth-child(3) p {
            border: 1px solid #ccc;
            border-radius: 10px;
            line-height: 15px;
            width: 10%;
            height: 30px;
            font-size: 10px;
        }
        #category {
            margin-top: 100px;
            display: flex;
        }
        #category > div {
            box-sizing: border-box;
            border-bottom: 1px solid tomato;
            width: 20%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            cursor: pointer;
        }
        #category > div:nth-child(4) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        #myqainfo > p:nth-child(1) {
            font-size: 20px;
            text-align: center;
            margin-top: 100px;
        }
        #myqainfo > p:nth-child(2), #myqainfo > p:nth-child(3){
            font-size: 13px;
            text-align: center;
            margin-top: 30px;
            color: grey;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #manyqa {
            margin-top: 50px;
            margin-bottom: 50px;
        }
        #manyqa2 {
            margin-top: 50px;
            margin-bottom: 50px;
            display: flex;
            justify-content: space-between;
        }
        #manyqa2 > div {
            border-radius: 5px;
            width:100px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            color: white;
            background-color: tomato;
            cursor: pointer;

        }
        .box1 {
            
            display: flex;
            border-top: 1px solid #ccc;
            height: 60px;
            padding: 15px 0px;
        }
        .box1 > div:nth-child(1) {
            width:20%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(2) {
            width:10%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(3) {
            width:45%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(4) {
            width:10%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(5) {
            width:15%;
            text-align: center;
            line-height: 50px;
        }
        #boxbutton {
            border: 2px solid tomato;
            width: 70px;
            height: 30px;
            margin-left: 40px;
            margin-top: 10px;
            line-height: 30px;
            color: tomato;
            border-radius: 5px;
            cursor: pointer;
        }
        #paging {
            display: flex;
            justify-content: center;
            margin: 50px 0px;
            
        }
        #paging > div {
            width: 100px;
            height: 30px;;
            border: 2px solid black;
            text-align: center;
            line-height: 30px;
            border-radius: 50px;
            margin: 50px;
            font-size: 15px;
            cursor: pointer;
            color: grey;
        }
        #paging div.ui-selected {
            background-color: #ccc;
        }
        
        #zero {
            text-align: center;
            color: grey;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>My 리뷰</div>
        <div>
            메인
            <i class="fas fa-angle-right"></i>
            마이페이지
            <i class="fas fa-angle-right"></i>
            My 리뷰
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
			<div id="myqamanage">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do'">회원정보 수정</p></div>
                    <div><p>포인트<br>${mileage}</p></div>
                </div>
            
                <div id="category">
                    <div onclick="location.href='/team3/mypage/myordersearch.do'">주문목록 & 배송조회</div>
                    <div onclick="location.href='/team3/mypage/myreturnsearch.do'">취소 & 반품 & 환불내역</div>
                    <div onclick="location.href='/team3/mypage/myqamanage.do'">My 문의</div>
                    <div onclick="location.href='/team3/mypage/myreviewmanage.do'">My 리뷰</div>
                    <div onclick="location.href='/team3/mypage/signout.do'">회원탈퇴</div>
                </div>

                <div id="myqainfo">
                    <p>My 리뷰</p>
                    <p>전반적인 서비스 품질에 대한 솔직한 리뷰를 남겨주세요.&nbsp;<i class="far fa-grin"></i></p>
                </div>                
                
                <div class="line"></div>

                <div id="manyqa">
                    <p>My 리뷰 내역</p>
                </div>

                <div class="line"></div>
                
                <div class="box1">
                    <div>상품명</div>
                    <div>구매 일자</div>
                    <div>리뷰 내용</div>
                    <div>리뷰 등록일</div>
                    <div></div>
                </div>
                
                
                <c:forEach items="${list}" var="dto">
                <div class="box1">
                    <div>${dto.productname}</div>
                    <div>${dto.orderdate}</div>
                    <div>${dto.reviewcontent}</div>
                    <div>${dto.reviewdate}</div>
                    <!-- <div><div id="boxbutton">수정하기</div></div> -->
                </div>
                </c:forEach>
                
                <div id="paging">
                    <div><i class="fas fa-chevron-left"></i>&nbsp;&nbsp;이전</div>
                    <div>다음&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                </div>
                
                <!-- <div id="zero">리뷰내역이 없습니다.</div> -->
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script>
    	$('#paging').selectable();
    </script>
</body>
</html>
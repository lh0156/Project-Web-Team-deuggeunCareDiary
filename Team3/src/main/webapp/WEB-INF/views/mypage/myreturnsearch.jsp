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
         #myreturnsearch {
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
        #category > div:nth-child(2) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        .line {
            margin-top: 150px;
            border-bottom: 1px solid #ccc;
        }
        
        #returninfo {
            height: 50px;
            margin-top: 50px;
        }

        #returninfo > p {
            font-size: 11px;
            color: grey;
            line-height: 30px;
        }
        #box {
            border-radius: 5px;
            height: 200px;
            border: 2px solid #ccc;
            margin-top: 50px;
            box-shadow: 2px 2px 2px grey;
        }
        #boxtop {
            padding: 10px;
            height:35px;
            background-color: #ccc;
            box-sizing: border-box;
            display: flex;

        }
        #boxbottom {
            height: 165px;
            box-sizing: border-box;
            display: flex;
        }
        #boxbottom > div:nth-child(1) {
            width:60%;
            padding: 55px;
            box-sizing: border-box;
        }
        #boxbottom > div:nth-child(1) > p:nth-child(1){
            margin-bottom: 10px;
            font-size: 15px;

        }
        #boxbottom > div:nth-child(1) > p:nth-child(2){
            margin-bottom: 10px;
            font-size: 11px;
            color: grey;
        }
        #boxbottom > div:nth-child(2) {
            border-left: 1px solid #ccc;
            width:20%;
            text-align: center;
            line-height: 30px;
            padding-top: 45px;
            box-sizing: border-box;
        }
        #boxbottom > div:nth-child(3) {
            width:30%;
            display: flex;
        }
        #boxbottom > div:nth-child(3) > div:nth-child(1) {
            border-left: 1px solid #ccc;
            text-align: center;
            line-height: 150px;
            width:50%;
        }
        #boxbottom > div:nth-child(3) > div:nth-child(2) {
            border-left: 1px solid #ccc;
            width:50%;
            box-sizing: border-box;
            padding-left: 35px;
        }
        #boxbottom > div:nth-child(3) > div:nth-child(2) > a {
            border: 2px solid tomato;
            border-radius: 10px;
            color: tomato;
            font-size: 14px;
            padding: 5px;
            width:50%;
            cursor: pointer;
            line-height: 150px;
        }
        #paging {
            display: flex;
            justify-content: center;
            
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
        #modal{
            display:none;
            position:fixed; 
            width:100%; height:100%;
            top:0; left:0; 
            background:rgba(0,0,0,0.3);
        }
        .modal-con{
            display:none;
            position:fixed;
            top:50%; left:50%;
            transform: translate(-50%,-50%);
            max-width: 60%;
            background:#fff;
        }
        .modal-con .title{
            font-size:20px; 
            padding: 20px 60px 20px 10px; 
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border: 1px solid rgb(179, 179, 179);
            background : rgb(212, 212, 212);
        }
        .modal-con .con{
            font-size:15px;
            line-height:30px;
            padding: 20px 60px 20px 10px; 
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border: 1px solid rgb(179, 179, 179);
        }
        .modal-con .close{
            display:block;
            position:absolute;
            width:30px; height:30px;
            border-radius:50%; 
            border: 3px solid #000;
            text-align:center; line-height: 30px;
            text-decoration:none;
            color:#000; font-size:20px; font-weight: bold;
            right:10px; top:10px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>취소 & 반품 & 환불내역</div>
        <div>
            메인
            <i class="fas fa-angle-right"></i>
            마이페이지
            <i class="fas fa-angle-right"></i>
            취소 & 반품 & 환불내역
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="myreturnsearch">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do';">회원정보 수정</p></div>
                    <div><p>포인트<br>${mileage}</p></div>
                </div>
            
                <div id="category">
                    <div onclick="location.href='/team3/mypage/myordersearch.do';">주문목록 & 배송조회</div>
                    <div onclick="location.href='/team3/mypage/myreturnsearch.do';">취소 & 반품 & 환불내역</div>
                    <div onclick="location.href='/team3/mypage/myqamanage.do';">My 문의</div>
                    <div onclick="location.href='/team3/mypage/myreviewmanage.do';">My 리뷰</div>
                    <div onclick="location.href='/team3/mypage/signout.do';">회원탈퇴</div>
                </div>
                
                <div class="line"></div>

                <div id="returninfo">
                    <p>- 취소/반품/환불 신청한 내역을 확인할 수 있습니다.</p>
                    <p>- 하단 상품목록에 없는 상품은 1:1문의 또는 고객센터로 문의해주세요.</p>
                </div>
                
                <!--  -->
                <div class="modal-con modal1">
                    <a href="javascript:;" class="close"><i class="fas fa-times"></i></a>
                    <p class="title">(국산부자재)나노텍 KF94 방역마스크 (대형100매)</p>
                    <div class="con">
                    취소접수일자 2021/02/07 | 취소완료일 2021/02/07<br><br>
                        <small>상품금액: 38,000원</small><br>
                        <small>환불수단: OO카드 / 38,000원</small><br>
                        <small>환불완료: 38,000원</small>
                    </div>
                </div>
                <div id="box">
                    <div id="boxtop"><p>취소 접수일: 2021/02/07 |</p><p>&nbsp;주문일: 2021/02/06</p></div>
                    <div id="boxbottom">
                        <div>
                            <p>(국산부자재)나노텍 KF94 방역마스크</p>
                            <p>(국산부자재)나노텍 KF94 방역마스크 (대형100매)</p>
                        </div>
                        <div>
                            <p>1개</p>
                            <p>38,000원</p>
                        </div>
                        <div>
                            <div>취소완료</div>
                            <div><a id="returnbotton" href="javascript:openModal('modal1');" class="button modal-open">취소상세</a></div>
                        </div>
                    </div>
                </div>
                
                <!--  -->
                <div class="line"></div>

                <div id="paging">
                    <div><i class="fas fa-chevron-left"></i>&nbsp;&nbsp;이전</div>
                    <div>다음&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                </div>
                
                <!-- <div id="zero">취소 & 반품 & 환불 내역이 없습니다.</div> -->
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script>
	    $('#paging').selectable();
	    
	    function openModal(modalname){
	        document.get
	        $("#modal").fadeIn(300);
	        $("."+modalname).fadeIn(300);
	        }
	
	        $("#modal, .close").on('click',function(){
	        $("#modal").fadeOut(300);
	        $(".modal-con").fadeOut(300);
	    });
    </script>
</body>
</html>
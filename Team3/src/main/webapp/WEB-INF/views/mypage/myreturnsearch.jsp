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
        <div>?????? & ?????? & ????????????</div>
        <div>
            ??????
            <i class="fas fa-angle-right"></i>
            ???????????????
            <i class="fas fa-angle-right"></i>
            ?????? & ?????? & ????????????
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="myreturnsearch">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do';">???????????? ??????</p></div>
                    <div><p>?????????<br>${mileage}</p></div>
                </div>
            
                <div id="category">
                    <div onclick="location.href='/team3/mypage/myordersearch.do';">???????????? & ????????????</div>
                    <div onclick="location.href='/team3/mypage/myreturnsearch.do';">?????? & ?????? & ????????????</div>
                    <div onclick="location.href='/team3/mypage/myqamanage.do';">My ??????</div>
                    <div onclick="location.href='/team3/mypage/myreviewmanage.do';">My ??????</div>
                    <div onclick="location.href='/team3/mypage/signout.do';">????????????</div>
                </div>
                
                <div class="line"></div>

                <div id="returninfo">
                    <p>- ??????/??????/?????? ????????? ????????? ????????? ??? ????????????.</p>
                    <p>- ?????? ??????????????? ?????? ????????? 1:1?????? ?????? ??????????????? ??????????????????.</p>
                </div>
                
                <!--  -->
                <div class="modal-con modal1">
                    <a href="javascript:;" class="close"><i class="fas fa-times"></i></a>
                    <p class="title">(???????????????)????????? KF94 ??????????????? (??????100???)</p>
                    <div class="con">
                    ?????????????????? 2021/02/07 | ??????????????? 2021/02/07<br><br>
                        <small>????????????: 38,000???</small><br>
                        <small>????????????: OO?????? / 38,000???</small><br>
                        <small>????????????: 38,000???</small>
                    </div>
                </div>
                <div id="box">
                    <div id="boxtop"><p>?????? ?????????: 2021/02/07 |</p><p>&nbsp;?????????: 2021/02/06</p></div>
                    <div id="boxbottom">
                        <div>
                            <p>(???????????????)????????? KF94 ???????????????</p>
                            <p>(???????????????)????????? KF94 ??????????????? (??????100???)</p>
                        </div>
                        <div>
                            <p>1???</p>
                            <p>38,000???</p>
                        </div>
                        <div>
                            <div>????????????</div>
                            <div><a id="returnbotton" href="javascript:openModal('modal1');" class="button modal-open">????????????</a></div>
                        </div>
                    </div>
                </div>
                
                <!--  -->
                <div class="line"></div>

                <div id="paging">
                    <div><i class="fas fa-chevron-left"></i>&nbsp;&nbsp;??????</div>
                    <div>??????&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                </div>
                
                <!-- <div id="zero">?????? & ?????? & ?????? ????????? ????????????.</div> -->
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
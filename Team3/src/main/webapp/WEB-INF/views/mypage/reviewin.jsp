<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
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
         #reviewin {
            margin-top: 50px;
            margin-bottom: 100px;
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
        .line {
            margin-top: 50px;
            border-bottom: 1px solid tomato;
        }
        .titlebox {
            margin-top: 20px;
            display: flex;
        }
        .titlebox > div:nth-child(1) {
            font-size: 40px;
        }
        .titlebox > div:nth-child(2) {
            text-align: center;
            margin-left: 30px;
            line-height: 40px;
        }
        .box2 {
            width:300px;
            display: flex;
        }
        .box2 > div:nth-child(1) {
            text-align: center;
            width: 70px;
            margin-left: 30px;
            line-height: 60px;
            cursor: pointer;
        }
        .box2 > div:nth-child(2), .box2 > div:nth-child(3){
            cursor: pointer;
            font-size: 35px;
            line-height: 55px;
            margin-left: 50px;
            
        }
        #box4 {
            width:600px;
            display: flex;
        }
        #box4 > div:nth-child(1) {
            margin-left: 30px;
            background-image: url(/team3/asset/images/logo.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            width: 120px;
            height: 120px;
            text-align: center;
        }
        #box5 > div:nth-child(1) {
            margin-top: 30px;
            margin-left: 50px;
        }
        #box5 > div:nth-child(2) {
            margin-left: 20px;
        }
        input {
            width:200px;
            margin: 30px 0px;
            margin-left: 200px;
            height: 50px;
            font-size: 15px;
            background-color: white;
            color: tomato;
            border: 1px solid tomato;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
            cursor: pointer;
        }
        #btn1 {
            display: flex;
        }
        #txt1 {
        	width: 990px;
        	height: 300px;
        	font-size: 11px;
        	font-family: 'InfinitySans-RegularA1';
        }
        
        .star-input>.input,
        .star-input>.input>label:hover,
        .star-input>.input>input:focus+label,
        .star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('/team3/asset/images/grade_img.png')no-repeat;}
        .star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
        .star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
        .star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
        star-input>.input.focus{outline:1px dotted #ddd;}
        .star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
        .star-input>.input>label:hover,
        .star-input>.input>input:focus+label,
        .star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
        .star-input>.input>label:hover~label{background-image: none;}
        .star-input>.input>label[for="p1"]{width:30px;z-index:5;}
        .star-input>.input>label[for="p2"]{width:60px;z-index:4;}
        .star-input>.input>label[for="p3"]{width:90px;z-index:3;}
        .star-input>.input>label[for="p4"]{width:120px;z-index:2;}
        .star-input>.input>label[for="p5"]{width:150px;z-index:1;}
        .star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>리뷰관리</div>
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
        	<div id="reviewin">
				
                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do';">회원정보 수정</p></div>
                    <div><p>포인트<br>${mileage}</p></div>
                </div>
                
                <div class="line"></div>

                <div class="titlebox">
                    <div><i class="far fa-id-card"></i></div>
                    <div>판매자 서비스 리뷰</div>
                </div>
                <hr>
                <div class="box2" id="open-event" href="http://jqueryui.com/demos/tooltip/#event-open" title="저희 쇼핑몰의 배송, 포장, 응대 등 전체적인 서비스는 어떠셨나요?">
                    <div>만족도</i></div>
                    <div id="up"><i class="far fa-thumbs-up"></i></div>
                    <div id="down"><i class="far fa-thumbs-down"></i></div>
                </div>
                <hr>
                <div class="line"></div>

                <div class="titlebox">
                    <div><i class="far fa-smile"></i></div>
                    <div>상품 품질 리뷰</div>
                </div>
                <hr>

                <div id="box4">
                    <div></div>
                    <div id="box5">
                        <div>속이꽉찬 닭가슴살 300g, 2개</div>
                        <div>
                            <span class="star-input">
                                <span class="input">
                                    <input type="radio" name="star-input" value="1" id="p1">
                                    <label for="p1">1</label>
                                    <input type="radio" name="star-input" value="2" id="p2">
                                    <label for="p2">2</label>
                                    <input type="radio" name="star-input" value="3" id="p3">
                                    <label for="p3">3</label>
                                    <input type="radio" name="star-input" value="4" id="p4">
                                    <label for="p4">4</label>
                                    <input type="radio" name="star-input" value="5" id="p5">
                                    <label for="p5">5</label>
                                </span>
                                <output for="star-input"><b id="score">0</b>점</output>						
                            </span>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="line"></div>

                <!-- <i class="far fa-edit"></i> -->
                <div class="titlebox">
                    <div><i class="far fa-edit"></i></div>
                    <div>상세리뷰</div>
                </div>
                <form action="">
                    <hr>
                    <textarea id="txt1" name="txt1" placeholder="상품 품질에 대한 고객님의 솔직한 리뷰를 남겨주세요.(필수) 100자이내(타사이트 홍보 및 타이용고객비방은 정지사유가 될 수 있으니 유의하시기 바랍니다.)" required style="resize:none;"></textarea>
                    <hr>
                    <div id="btn1">
                        <input type="button" value="뒤로가기" onclick="location.href='/team3/mypage/myordersearch.do';">
                        <input type="submit" value="등록하기">
                    </div>
                    <input type="hidden" name="txt2" value="">
                </form>

            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/star.js"></script>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script>
    
	    $('#p1, #p2, #p3, #p4, #p5').click(function() {
	        console.log('d');
	        $('input[name=txt2]').attr('value', $('#score').text());
	    });
	    
	    $( function() {
	        $( "#open-event" ).tooltip({
	            show: null,
	            position: {
	                my: "left top",
	                at: "left bottom"
	            },
	            open: function( event, ui ) {
	                ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
	            }
	        });
	    });
	    
	    $('#up').click(function() {
	        $('#up').html('<i class="fas fa-thumbs-up" id="fas1" data-good="1"></i>');
	        $('#down').html('<i class="far fa-thumbs-down">');
	        // $('input[name=txt1]').attr('value', $('#fas1').data('good'));
	        });
	    $('#down').click(function() {
	        $('#down').html('<i class="fas fa-thumbs-down" id="fas2" data-good="2"></i>');
	        $('#up').html('<i class="far fa-thumbs-up"></i>');
	        // $('input[name=txt1]').attr('value', $('#fas2').data('good'));
	    });
	    
    </script>
</body>
</html>
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
       #ReturnReqInfo {
            margin-top: 50px;
        }
        #box1 {
            border: 2px solid #ccc;
            display: flex;
            justify-content: space-between;
            padding: 0px 300px;
            height: 50px;
            line-height: 50px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            color: cornflowerblue;
            text-align: center;
        }
        #box1 > div:nth-child(1) {
        	margin-left: 120px;
            color: cornflowerblue;
            text-align: center;
            font-size: 20px;
        }
        #box2 {
            border: 2px solid #ccc;
            height: 850px;
            margin-bottom: 150px;
            background-color: rgb(226, 226, 226);
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            padding: 50px 100px;
            border-top: 0px;
        }
        #box2 > div:nth-child(1) {
            font-size: 20px;
            margin-bottom: 30px;
        }
        #box3 {
            border: 2px solid #ccc;
            background-color: white;
            border-radius: 5px;
            padding: 0px 50px;
            font-size: 20px;
            height: 600px;
        }
        #btn1 {
            display: flex;
        }
        #btn1 > input {
            width:150px;
            margin-top: 50px;
            margin-left: 100px;
            height: 40px;
            font-size: 20px;
            background-color: white;
            color: tomato;
            border: 1px solid tomato;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
            cursor: pointer;
        }
        #btn1 > input:nth-child(1) {
            margin-left: 190px;
        }
        .rrititle {
            color: rgb(77, 77, 77);
            margin-top: 60px;
        }
        #readdress, #redate {
            border-bottom: 1px solid #ccc;
            height: 40px;
            line-height: 50px;
            margin-top: 5px;
            color: rgb(77, 77, 77);
            font-size: 15px;
        }
        .box4 {
            border-bottom: 1px solid #ccc;
            height: 40px;
            display: flex;
            justify-content: space-between;
            margin-top: 5px;
        }
        .box5 {
            font-size: 15px;
            color: rgb(77, 77, 77);
            height: 40px;
            line-height: 50px;
            margin-top: 0px;
        }
        #ti1 {
            color: tomato;
            font-size: 10px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>고객센터</div>
        <div>
            반품 및 환불 신청
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
			<div id="ReturnReqInfo">
			
                <div id="box1">
                    <div>취소 & 반품 & 환불</div>
                </div>
                <div>
                    <div id="box2">
                        <div>취소 & 반품 & 환불 정보를 확인해주세요</div>
                        <form action="">
                            <div id="box3">
                                <div class="rrititle">상품회수지<small id="ti1">&nbsp;&nbsp;* 상품회수지 및 환불정보가 결제당시와 다를경우 회원정보수정 및 고객센터에 문의바랍니다.</small></div>
                                <div id="readdress">${redto.orderaddress}</div>
                                <div class="rrititle">회수 예정일</div>
                                <div id="redate">${redto.redate}</div>
                                
                                <div class="rrititle">환불정보</div>
                                <div class="box4">
                                    <div class="box5">상품금액</div>
                                    <div class="box5" id="reprice1">${redto.totalprice}원</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">반품 배송비</div>
                                    <div class="box5" id="reprice2">0원</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">환불 예상금액</div>
                                    <div class="box5" id="retotal">${redto.totalprice}원</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">환불 수단</div>
                                    <div class="box5" id="repay">${redto.pay} / ${redto.totalprice}원 / ${redto.usemileage}포인트</div>
                                </div>
                            </div>
                            <div id="btn1">
                                <input type="button" value="이전 단계" onclick="location.href='#!';">
                                <input type="submit" value="신청 하기" id="next">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script>
    var now = new Date();
	    $('#readdress').text('경기도 평택시');
	    $('#redate').text(now.getFullYear() + '/' + (now.getMonth()+1) + '/' + (now.getDate()+3) + '일');
	    $('#reprice1').text('32,870원');
	    $('#reprice2').text('0원');
	    $('#retotal').text('32,870원');
	    $('#repay').text('국민카드 / 일시불 32,870원');
    </script>
</body>
</html>
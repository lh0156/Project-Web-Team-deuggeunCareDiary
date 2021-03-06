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
        <div>????????????</div>
        <div>
            ?????? ??? ?????? ??????
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
			<div id="ReturnReqInfo">
			
                <div id="box1">
                    <div>?????? & ?????? & ??????</div>
                </div>
                <div>
                    <div id="box2">
                        <div>?????? & ?????? & ?????? ????????? ??????????????????</div>
                        <form action="">
                            <div id="box3">
                                <div class="rrititle">???????????????<small id="ti1">&nbsp;&nbsp;* ??????????????? ??? ??????????????? ??????????????? ???????????? ?????????????????? ??? ??????????????? ??????????????????.</small></div>
                                <div id="readdress">${redto.orderaddress}</div>
                                <div class="rrititle">?????? ?????????</div>
                                <div id="redate">${redto.redate}</div>
                                
                                <div class="rrititle">????????????</div>
                                <div class="box4">
                                    <div class="box5">????????????</div>
                                    <div class="box5" id="reprice1">${redto.totalprice}???</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">?????? ?????????</div>
                                    <div class="box5" id="reprice2">0???</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">?????? ????????????</div>
                                    <div class="box5" id="retotal">${redto.totalprice}???</div>
                                </div>
                                <div class="box4">
                                    <div class="box5">?????? ??????</div>
                                    <div class="box5" id="repay">${redto.pay} / ${redto.totalprice}??? / ${redto.usemileage}?????????</div>
                                </div>
                            </div>
                            <div id="btn1">
                                <input type="button" value="?????? ??????" onclick="location.href='#!';">
                                <input type="submit" value="?????? ??????" id="next">
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
	    $('#readdress').text('????????? ?????????');
	    $('#redate').text(now.getFullYear() + '/' + (now.getMonth()+1) + '/' + (now.getDate()+3) + '???');
	    $('#reprice1').text('32,870???');
	    $('#reprice2').text('0???');
	    $('#retotal').text('32,870???');
	    $('#repay').text('???????????? / ????????? 32,870???');
    </script>
</body>
</html>
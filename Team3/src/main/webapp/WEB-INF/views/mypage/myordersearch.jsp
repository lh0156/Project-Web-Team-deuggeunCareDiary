<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/team3/asset/css/bootstrap.css">
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
		 #myordersearch {
            margin-top: 50px;
        }
        #intro {
            display: flex;
            text-align: center;
            vertical-align: middle;
        }
        #intro div:nth-child(1) {
            width:15%;
        }
        #intro div:nth-child(2) {
            width:15%;
            
        }
        #intro div:nth-child(3) {
            display: flex;
            width: 70%;
            justify-content: flex-end;
        }
        #intro p {
            height: 50px;
        }
        #intro div:nth-child(1) p {
            font-size: 20px;
            color: grey;
            height: 30px;
            line-height: 30px;
        }
        #intro div:nth-child(2) p {
            border: 1px solid tomato;
            color: tomato;
            border-radius: 10px;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            width: 120px;
            cursor: pointer;
        }
        #intro div:nth-child(3) p {
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
        #category div {
            box-sizing: border-box;
            border-bottom: 1px solid tomato;
            width: 20%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            cursor: pointer;
        }
        #category div:nth-child(1) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        #dateterm {
            margin-top: 50px;
            display: flex;
            justify-content: space-between;
        }
        #date {
            border-collapse: collapse;
        }
        #date div {
            display: table-cell;
            box-sizing: border-box;
            width: 50px;
            border: 1px solid #ccc;
            text-align: center;
            padding: 10px;
            font-size: 10px;
            cursor: pointer;
        }
        #dateselect {
            width: 500px;
            display: flex;
        }
        #date div.ui-selected {
            background-color: #ccc;
        }
        select {
            width:15%;
        }
        #dateselect p {
            line-height: 30px;
            text-align: center;
            width: 40%;
            font-size: 1.5em;
        }
        #search {
            width:7%;
            text-align: center;
            line-height: 30px;
            background-color: tomato;
            color: white;
            font-size: 13px;
            border-radius: 5px;
            cursor: pointer;
        }
        .line {
            margin-top: 70px;
            border-bottom: 1px solid #ccc;
        }
        .box1 {
            border-radius: 5px;
            border: 2px solid #ccc;
            padding: 30px;
            margin-top: 50px;
            box-shadow: 2px 2px 2px grey;
        }
        .box1 > p {
            margin-bottom: 30px;
        }
        .box2 {
            border-radius: 5px;
            border: 1px solid #ccc;
            height: 80%;
            display: flex;

        }
        .boxleft {
            border: 1px solid #ccc;
            height: 200px;
            width: 70%;

        }
        .boxright {
            border: 1px solid #ccc;
            height: 200px;
            width:30%;
        }
        .boxleft > div:nth-child(1){
            height: 10%;
            padding: 15px;
            font-size: 13px;
        }
        #imgshow {
            height: 90%;
            display: flex;
        }
        #imgshow > #is {
        	width: 150px;
        	height: 150px;
        	border: 1px solid #ccc;
        	margin: 10px;
        	border-radius: 5px;
        }
        #imgshow > div:nth-child(2) {
            width: 70%;
            height: 80%;
            line-height: 30px;
            padding-left: 30px;
            font-size: 13px;
        }
        #imgshow > div:nth-child(2) > p:nth-child(1) {
            margin-top: 30px;
        }
        .boxright > div:nth-child(4) {
            margin-top: 10px;
            line-height: 30px;
            height: 30px;
            text-align: center;
            width: 50%;
            border: 2px solid #ccc;
            border-radius: 5px;
            margin-left: 75px;
            cursor: pointer;
            font-size: 13px;
        }
        .boxright > .bb1 {
            margin-top: 10px;
            line-height: 10px;
            height: 30px;
            background-color: white;
            color: black;
            text-align: center;
            width: 50%;
            border: 2px solid #ccc;
            border-radius: 5px;
            margin-left: 75px;
            cursor: pointer;
            font-size: 13px;
        }
        .boxright > div:nth-child(2) {
            margin-top: 0px;
            line-height: 30px;
            height: 30px;
            text-align: center;
            width: 50%;
            border: 2px solid #ccc;
            border-radius: 5px;
            margin-left: 75px;
            cursor: pointer;
            font-size: 13px;
        }
        .boxright > div:nth-child(1) {
            height: 60px;
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
        .boxright div.ui-selected {
            background-color: #ccc;
        }
        #zero {
            text-align: center;
            color: grey;
        }
        #deliverykey {
            margin: 20px;
            line-height: 20px;
            height: 30px;
            text-align: center;
            width: 51%;
            border: 2px solid #ccc;
            border-radius: 5px;
            margin-left: 75px;
            cursor: pointer;
            font-size: 13px;
            font-family: 'InfinitySans-RegularA1';
            background-color: white;
        }
        #inc-location {
        	height: 150px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>주문/배송 관리</div>
        <div>
            메인
            <i class="fas fa-angle-right"></i>
            마이페이지
            <i class="fas fa-angle-right"></i>
            주문목록 & 배송조회
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	 <div id="myordersearch">

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

                <div id="dateterm">
                    <div id="date">
                        <div data-num="1">1개월</div>
                        <div data-num="3">3개월</div>
                        <div data-num="6">6개월</div>
                        <div data-num="12">1년</div>
                    </div>
                    <div id="dateselect">
                        <select class="year" id="yearone">
                        </select>
                        <select class="month" id="monthone">
                        </select>
                        <p>~</p>
                        <select class="year" id="yeartwo">
                        </select>
                        <select class="month" id="monthtwo">
                        </select>
                    </div>
                        <div id="search">조회</div>
                </div>
                
                <div class="line"></div>
                
                <!-- 
                <c:forEach items="${list}" var="dto">
                <div class="box1">
                    <div>${dto.QACategory}</div>
                    <div>${dto.QAAnswer}</div>
                    <div>${dto.QAContent}</div>
                    <div>${dto.QADate}</div>
                </div>
                </c:forEach>
                
				private String process;
				private String postdate;
				private String stock;
				private String totalprice;
				private String imgurl;
				private String courier;
				private String invoicenum;
				private String productname;
				private String orderdate;
				private String reviewcontent;
				private String reviewdate;
                -->
                <c:forEach items="${list}" var="dto">
                <div class="box1"><p>${dto.orderdate}</p>
                    <div class="box2">
                        <div class="boxleft">
                            <div>${dto.process} ∙ ${dto.postdate}도착 예정</div>
                            <div id="imgshow">
                                <img src="${dto.imgurl}" id="is">
                                <div>
                                    <p>${dto.productname}, ${dto.stock}개</p>
                                    <p>${dto.totalprice}원, ${dto.stock}개</p>
                                </div>
                            </div>
                        </div>
                        <div class="boxright">
                            <div>
                                <!-- 택배조회 -->
                                <div id="api-delivery">
                                    <form action="http://info.sweettracker.co.kr/tracking/5" method="post">
                                            <!-- API KEY -->
                                            <input type="hidden" value="ae1dBvm3fw3jCZ9dujoq9g" class="form-control" id="t_key" name="t_key" placeholder="ae1dBvm3fw3jCZ9dujoq9g">

                                            <!-- 택배사코드 -->
                                            <input type="hidden" class="form-control" name="t_code" id="t_code" placeholder="택배사 코드" value="${dto.courier}">

                                            <!-- 운송장번호 -->
                                            <input type="hidden" class="form-control" name="t_invoice" id="t_invoice" placeholder="운송장 번호" value="${dto.invoicenum}">
                                        <button type="submit" id="deliverykey" formtarget="_blank">배송조회</button>
                                    </form>
                                </div>
                            </div>
                            <c:if test="${dto.process == '결제완료'}">
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}&stat=주문취소';">주문취소</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>
                            <c:if test="${dto.process == '상품준비중'}">
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}&stat=주문취소';">주문취소</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>
                            <c:if test="${dto.process == '출고준비중'}">
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}&stat=주문취소';">주문취소</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>
                            <c:if test="${dto.process == '배송중'}">
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}&stat=반품';">반품 및 환불</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>
                            <c:if test="${dto.process == '배송완료'}">
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}&stat=반품';">반품 및 환불</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>
                            <c:if test="${dto.process == '구매확정'}">
                            <!-- 장바구니페이지로 경로지정필요 뭐필요한지-->
                            <div onclick="location.href='/team3/mypage/returnreqinfo.do?eachorderseq=${dto.eachorderseq}';">재구매</div>
                            <button type="button" class="bb1" onclick="location.href='/team3/mypage/orderfix.do?eachorderseq=${dto.eachorderseq}';">
                                구매확정
                            </button>
                            <div onclick="location.href='/team3/mypage/reviewin.do?eachorderseq=${dto.eachorderseq}';">리뷰작성</div>
                            </c:if>

                        </div>
                    </div>
                </div>
                </c:forEach>
               	
               
                
                
                <div class="line"></div>
                
                <div id="paging">
                    <div><i class="fas fa-chevron-left"></i>&nbsp;&nbsp;이전</div>
                    <div>다음&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                </div>
                <!-- <div id="zero">구매내역이 없습니다.</div> -->
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script src="/team3/asset/js/bootstrap.js"></script>
    <script>
    
	    var now = new Date();
	    var year = now.getFullYear();
	    var month = now.getMonth();
	    var yeartemp = '';
	    var monthtemp = '';
	    
	    for (let i=0; i<21; i++) {
	        yeartemp += '<option value=' + i + '>' + (year - i) + '</option>';
	        $('.year').html(yeartemp);
	    }
	    
	    for (let i=1; i<13; i++) {
	        monthtemp += '<option value=' + i + '>' + i + '</option>';
	        $('.month').html(monthtemp);
	    }
	    
	    $("#monthone option:eq(" + month +")").prop("selected", true);
	    $("#monthtwo option:eq(" + month +")").prop("selected", true);
	
	    $('.boxright').selectable();
	    $('#paging').selectable();
	    
	    $('#date').selectable({
	        selected: function(event, ui) {
	            
	            if(ui.selected.dataset['num'] == '12') {
	                $("#yearone option:eq("+ (Number($("#yeartwo option:selected").val())+1) +")").prop("selected", true);
	            }
	            if(ui.selected.dataset['num'] == '6') {
	                if($("#monthtwo option:selected").val() > 5) {
	                    $("#yearone option:eq("+ Number($("#yeartwo option:selected").val()) +")").prop("selected", true);
	                    var minus = Number($("#monthtwo option:selected").val()) - 6;
	                    $("#monthone option:eq("+ minus +")").prop("selected", true);
	                } else {
	                    $("#yearone option:eq("+ (Number($("#yeartwo option:selected").val())+1) +")").prop("selected", true);
	                    var plus = Number($("#monthtwo option:selected").val()) + 6;
	                    $("#monthone option:eq("+ plus +")").prop("selected", true);
	                }
	            }
	            if(ui.selected.dataset['num'] == '3') {
	                if($("#monthtwo option:selected").val() > 2) {
	                    $("#yearone option:eq("+ Number($("#yeartwo option:selected").val()) +")").prop("selected", true);
	                    var minus = Number($("#monthtwo option:selected").val()) - 3;
	                    $("#monthone option:eq("+ minus +")").prop("selected", true);
	                } else {
	                    $("#yearone option:eq("+ (Number($("#yeartwo option:selected").val())+1) +")").prop("selected", true);
	                    var plus = Number($("#monthtwo option:selected").val()) + 9;
	                    $("#monthone option:eq("+ plus +")").prop("selected", true);
	                }
	            }
	            if(ui.selected.dataset['num'] == '1') {
	                var a = Number($("#yeartwo option:selected").val());
	                var b = Number($("#monthtwo option:selected").val())-1;
	                $("#yearone option:eq("+ a +")").prop("selected", true);
	                $("#monthone option:eq("+ b +")").prop("selected", true);
	                
	            }
	        }
	    });
    </script>
</body>
</html>
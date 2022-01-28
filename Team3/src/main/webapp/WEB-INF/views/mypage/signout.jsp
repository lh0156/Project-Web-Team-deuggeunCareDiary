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
         #signout {
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
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #outinfo {
            margin-top: 100px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            border: 2px solid #ccc;
            height: 300px;
            padding: 30px;
        }
        #outinfo > p {
            font-weight: bold;
            margin-bottom: 20px;
        }
        #outinfo > small {
            font-size: 12px;
            line-height: 25px;
            color: grey;
        }
        #infocheck {
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border: 2px solid #ccc;
            border-top: 0px;
            height: 50px;
            display: flex;
            padding: 15px;
            background-color: rgb(243, 242, 242);
        }
        #infocheck > input[type=checkbox] {
            width: 15px;
            height: 15px;
            border: 2px solid #ccc;
            margin-right: 10px;
            cursor: pointer;
            margin-left: 15px;
            background-color: white;
        }
        #infocheck > p {
            font-size: 12px;
            line-height: 23px;
            color: cornflowerblue;
        }
        #checkbox {
            margin: 50px 0px;
            background-color: #fad390;
            font-size: 13px;
            border-radius: 5px;
        }
        #box1 {
            padding: 5px;
            padding-left: 28px;
            height: 40px;
            line-height: 40px;
        }
        #box2 {
            height: 60px;
            display: flex;
            padding: 15px;
            justify-content: space-between;
        }
        #box2 > p {
            line-height: 30px;
            margin-left: 15px;
        }
        #box2 > div:nth-child(2) {
            background-color: whitesmoke;
            border-radius: 5px;
            width: 100px;
            height: 30px;
        }
        #box2 > div:nth-child(4) {
            background-color: whitesmoke;
            border-radius: 5px;
            width: 250px;
            height: 30px;
        }
        #box2 > input:nth-child(6) {
            background-color: whitesmoke;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 150px;
            height: 30px;
        }
        #box2 > div:nth-child(7) {
            width: 80px;
            height: 30px;
            text-align: center;
            line-height: 30px;
            color: white;
            background-color: cornflowerblue;
            border-radius: 5px;
        }
        #bye {
            text-align: center;
            margin-bottom: 100px;
        }
        .modal-body {
            line-height: 30px;
        }
        #exampleModalLabel {
            color: red;
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
        <div>회원탈퇴</div>
        <div>
            메인
            <i class="fas fa-angle-right"></i>
            마이페이지
            <i class="fas fa-angle-right"></i>
            회원탈퇴
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="signout">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do'">회원정보 수정</p></div>
                    <div><p>포인트<br>${mileage}</p></div>
                </div>
                
                <div id="outinfo"><p>1. 회원탈퇴 전, 유의사항을 확인해 주시기 바랍니다.</p>
                    <small>- 회원탈퇴 시 회원전용 웹 서비스 이용이 불가합니다.<br>
                    - 거래정보가 있는 경우, 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 계약 또는 청약철회에 관한 기록, 대금결제 및 재화 등의 공급에 관한 기록은 5년동안 보존됩니다.<br>
                    - 유효기간이 경과되지 않은 미사용 쿠폰관련 정보는 유효기간 만료일까지 보관되며, 탈퇴 후에도 유효기간 내 사용하실 수 있습니다.<br>
                    - 유효기간 내 사용하지 못한 미사용 쿠폰은 구매금액의 70%를 쿠팡캐시로 적립해 드리나, 탈퇴시 적립 받을 수 없습니다.<br>
                    - 보유하셨던 포인트는 탈퇴와 함께 삭제되며 환불되지 않습니다.<br>
                    - 회원탈퇴 후 쇼핑몰 서비스에 입력하신 상품문의 및 후기, 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.<br>
                    - 상품문의 및 후기, 댓글 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.<br>
                    - 이미 결제가 완료된 건은 탈퇴로 취소되지 않습니다.</small>

                </div>
                
                <form name="form1" action="/team/FindPwOk.html">
                    <div id="infocheck"><input type="checkbox" required id="ck1"><p>상기 회원탈퇴 시 처리사항 안내를 화인하였음에 동의합니다.</p></div>
                    
                    <div id="checkbox">
                        <div id="box1">보안을 위해 회원님의 이름과 계정 이메일 및 비밀번호를 확인 합니다.</div>
                        <div id="box2">
                            <p>이름:</p>
                            <div id="name"></div>
                            <p>이메일:</p>
                            <div id="email"></div>
                            <p>비밀번호:</p>
                            <input type="password" required>
                            <div>본인확인</div>
                        </div>
                    </div>

                    <div id="bye">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            확인
                        </button>
                    </div>
                    
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">알림</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    정말 회원탈퇴를 진행하시겠습니까?<br>
                                    완료버튼 클릭 시 정상 탈퇴 처리가 됩니다.
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                <button type="submit" class="btn btn-primary" id="ckck" data-dismiss="modal">완료</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/bootstrap.js"></script>
    <script>
	    $('#ckck').click(function() {
	        if (!($('#ck1').is(':checked'))) {
	            alert('회원탈퇴 약관 동의를 하셔야만 처리가 완료됩니다.')
	        }
	    });
    </script>
</body>
</html>
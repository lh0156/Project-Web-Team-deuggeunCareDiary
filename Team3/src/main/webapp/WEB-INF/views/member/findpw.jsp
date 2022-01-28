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
        #FindPw {
            margin-top: 50px;
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
        #intro {
            margin-top: 50px;
            font-size: 12px;
            line-height: 30px;
        }
        #intro > div {
            color: grey;
            display: flex;
        }
        #findpwbox {
            display: flex;
            border-top: 2px solid rgb(110, 110, 110);
            margin-top: 30px;
        }
        #findpwleft > div{
            border: 1px solid #ccc;
            background-color: rgb(221, 240, 253);
            height: 70px;
            width:150px;
            text-align: center;
            line-height: 70px;
        }
        #findpwright > div{
            border: 1px solid #ccc;
            height: 70px;
            width:846px;
            line-height: 70px;
        }
        #findpwright input[type=text] {
            border: 1px solid #ccc;
            margin-left: 50px;
            height: 30px;
            border-radius: 5px;
        }
        #findpwright input[type=button] {
            width: 15%;
            height: 30px;
            font-size: 12px;
            margin-left: 10px;
            color: black;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #findinfo {
            border-radius: 5px;
            text-align: center;
            height: 200px;
            margin-bottom: 100px;
        }
        #findinfo > input[type=submit] {
            margin-top: 30px;
            width: 20%;
            background-color: #4a69bd;
            font-size: 15px;
            padding: 10px;
            color: white;
            text-shadow: -1px -1px 2px rgb(100, 100, 100);
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #findinfo{
            margin: 10px auto;
            color: rgb(129, 129, 129);
            font-size: 13px;
            line-height: 20px;
        }
        #t2 {
        	font-size: 13px;
        	text-align: center;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>계정정보 찾기</div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="FindPw">
        		<div id="category">
                    <div onclick="location.href='/team3/member/findid.do'">아이디 찾기</div>
                    <div>비밀번호 찾기</div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>

                <div id="intro">
                    <div>* 비밀번호의 경우 <p>&nbsp;암호화&nbsp;</p> 저장되어 분실 시 찾아드릴 수 없는 정보입니다.</div>
                    <div>* <p>&nbsp;본인 확인</p>을 통해 비밀번호를 재설정 하실 수 있습니다.</div>
                </div>
                
                <form method="POST" action="/team3/member/findpwok.do">
                    <div id="findpwbox">
                    
                        <div id="findpwleft">
                            <div>이름</div>
                            <div>아이디</div>
                            <div>휴대폰</div>
                        </div>
                        
                        <div id="findpwright">
                            <div><input type="text" required name="name"></div>
                            <div><input type="text" required name="id"></div>
                            <div>
                            	<input type="text" placeholder="회원정보에 등록된 휴대전화번호" required name="tel">
                            	<input type="button" value="인증번호 받기">
                            	<input type="text" placeholder="인증번호입력" id="t1" required>
                            	<span id="t2"></span>
                            </div>
                        </div>
                    </div>

                    <div id="findinfo">
                        <input type="submit" disabled id="s1">
                    </div>
                </form>
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script>
	    $('#t1').keyup(function() {
	        if($('#t1').val().length == 4 && $('#t1').val()=='1234') {
	            $('#t2').text('인증완료!!');
	            $('#t2').css('color', 'cornflowerblue');
	            $('#s1').prop('disabled', false);
	        } else {
	        	$('#t2').text('');
	        	$('#s1').prop('disabled', true);
	        }
	    });
    </script>
</body>
</html>
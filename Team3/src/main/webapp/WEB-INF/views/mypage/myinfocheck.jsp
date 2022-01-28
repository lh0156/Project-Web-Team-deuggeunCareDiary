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
        #MyInfoCheck {
            margin-top: 50px;
            margin-bottom: 150px;
        }
        #category {
            margin-top: 100px;
            display: flex;
        }
        #category > div {
            box-sizing: border-box;
            border-bottom: 1px solid tomato;
            width: 34%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            cursor: pointer;
        }
        #category > div:nth-child(3) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #infochecktitle > p:nth-child(1) {
            font-size: 20px;
            margin-top: 100px;
        }
        #infochecktitle > p:nth-child(2), #infochecktitle > p:nth-child(3){
            font-size: 13px;
            margin-top: 30px;
            color: grey;
        }
        #infochecktitle small {
            color: cornflowerblue;
        }
        #myid {
            margin-top: 50px;
            border: 1px solid #ccc;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            display: flex;
            height: 50px;
        }
        #mypw {
            border: 1px solid #ccc;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            display: flex;
            height: 50px;
        }
        #myid > div:nth-child(1) {
            width: 20%;
            text-align: center;
            line-height: 50px;
            background-color: #fad390;
        }
        #mypw > div:nth-child(1) {
            background-color: #fad390;
            width: 20%;
            text-align: center;
            line-height: 50px;
        }
        #myid > div:nth-child(2) {
            width: 20%;
            margin-left: 50px;
            margin-top: 10px;
            height: 30px;
            line-height: 30px;
            padding-left: 3px;
        }
        #mypwinput {
            width: 20%;
            margin-left: 50px;
            margin-top: 10px;
            height: 22px;
            border: 2px solid #ccc;
            border-radius: 5px;
        }
        #btn1 {
            display: flex;
        }
        #btn1 > input {
            width:80px;
            margin: 30px 0px;
            margin-left: 20px;
            height: 30px;
            font-size: 15px;
            background-color: white;
            color: tomato;
            border: 1px solid tomato;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
            cursor: pointer;
        }
        #btn1 > input:nth-child(1) {
            margin-left: 405px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
    <!-- content  -->
    <div id="content">
        <div id="container">
    		<div id="MyInfoCheck">
                <div id="infochecktitle">
                    <p>회원정보확인</p>
                    <p><small>OOO</small>님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.</p>
                </div>
                
                <div class="line"></div>

                <div id="myid">
                    <div>아이디</div>
                    <div id="myidinput">hong</div>
                </div>
                
                <form action="">
                    <div id="mypw">
                        <div>비밀번호</div>
                        <input type="text" id="mypwinput">
                    </div>
                    <div id="btn1">
                        <input type="button" value="취소" onclick="location.href='/team3/mypage/myordersearch.do';">
                        <input type="submit" value="확인">
                        <input type="hidden" name="myidinput" value="">
                    </div>
                </form>
            </div>
    	</div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script>
	    $('#mypwinput').click(function() {
	        $('input[name=myidinput]').attr('value', $('#myidinput').text());
	        alert($('input[name=myidinput]').val());
	    });
    </script>
</body>
</html>
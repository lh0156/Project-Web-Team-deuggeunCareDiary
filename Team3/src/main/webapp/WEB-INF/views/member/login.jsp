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
		 #inc-header > .header > header > #logo{
            text-align: center;
            margin: 0px auto;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #next {
            width: 500px;
            margin: 0px auto;
        }
        #loginid, #loginpw {
            display: flex;
            width: 500px;
            margin: 15px auto;
        }
        #loginid > div:nth-child(1), #loginpw > div:nth-child(1) {
            border: 1px solid #ccc;
            width: 15%;
            height: 50px;
            box-sizing: border-box;
            text-align: center;
            font-size: 30px;
            line-height: 50px;
            background-color: rgb(233, 233, 233);
        }
        #loginid > input[type=text], #loginpw > input[type=password] {
            border: 1px solid #ccc;
            width: 85%;
            height: 50px;
            box-sizing: border-box;
        }
        #fail {
            width: 500px;
            margin: 0px auto;
            text-align: center;
            font-size: 13px;
            color: tomato;
        }
        #mbsearch {
            width: 500px;
            margin: 15px auto;
            text-align: right;
            font-size: 13px;
        }
        #mbsearch > a {
            color: cornflowerblue;
        }
        #next > input[type=submit] {
            width: 500px;
            height: 50px;
            background-color: cornflowerblue;
            font-size: 15px;
            color: white;
            font-weight: bold;
            margin: 10px 0px;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #next > input[type=button] {
            width: 500px;
            height: 50px;
            background-color: white;
            font-size: 15px;
            color: cornflowerblue;
            font-weight: bold;
            margin: 10px 0px;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #next > div:nth-child(4) {
            width: 500px;
            height: 50px;
            text-align: center;
            font-size: 13px;
            color: rgb(121, 121, 121);
            line-height: 50px;
        }
	</style>
</head>
<body>
	<!-- header -->
    <div id="inc-header">
        <div class="header">
            <header>
                <div id="logo"><a href="/team3/main.do"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
            </header>
        </div>
    </div>  
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<form method="POST" action="/team3/member/loginok.do">
                <div id="loginid">
                    <div><i class="far fa-keyboard"></i></div>
                    <input type="text" name="id">
                </div>
                <div id="loginpw">
                    <div><i class="fas fa-key"></i></div>
                    <input type="password" name="pw">
                </div>
                <!-- <div id="fail">아이디 또는 비밀번호를 다시 확인하세요.<br>등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다.</div> -->
                <div id="mbsearch"><a href="/team3/member/findid.do">아이디/비밀번호 찾기 ></a></div>
                <div id="next">
                    <input type="submit" value="로그인">
                    <hr>
                    <input type="button" value="회원가입" onclick="location.href='/team3/member/signup.do';">
                    <div>&copy; Deukgeun, Inc.</div>
                </div>
            </form>
	    </div>
    </div>
    <script>
    
    </script>
</body>
</html>
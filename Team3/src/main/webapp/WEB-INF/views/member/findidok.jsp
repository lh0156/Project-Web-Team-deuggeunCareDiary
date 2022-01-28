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
        #FindIdOk {
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
        #category > div:nth-child(1) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        #findinfook {
            margin-top: 50px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgb(221, 240, 253);
            text-align: center;
            height: 200px;
            margin-bottom: 300px;
        }
        #findinfook > input[type=button] {
            width: 15%;
            background-color: #4a69bd;
            font-size: 25px;
            padding: 10px;
            color: white;
            text-shadow: -1px -1px 2px rgb(100, 100, 100);
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #findinfook > div {
            width: 40%;
            margin: 30px auto 20px auto;
            
            color: rgb(129, 129, 129);
            font-size: 13px;
            line-height: 30px;
        }
        #findinfook > div small {
            color: #079992;
        }
        #findinfook > div p {
            font-size: 15px;
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
        	<div id="FindIdOk">
                <div id="category">
                    <div>아이디 찾기</div>
                    <div onclick="location.href='/team3/member/findpw.do'">비밀번호 찾기</div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                
                <div id="findinfook">
                    <div>${name} 회원님의 아이디입니다.<p>아이디: <small>${id}</small></p></div>
                    <input type="button" value="로그인" onclick="location.href='/team3/member/login.do';">
                </div>
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script>
    
    </script>
</body>
</html>
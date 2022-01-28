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
        #FindId {
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
        #findinfo {
            margin-top: 50px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgb(221, 240, 253);
            text-align: center;
            height: 200px;
            margin-bottom: 300px;
        }
        #findinfo > input[type=button] {
            margin-top: 50px;
            width: 40%;
            background-color: #4a69bd;
            font-size: 25px;
            padding: 10px;
            color: white;
            text-shadow: -1px -1px 2px rgb(100, 100, 100);
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #findinfo > div {
            width: 40%;
            margin: 10px auto;
            color: rgb(129, 129, 129);
            font-size: 13px;
            line-height: 20px;
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
	    	<div id="FindId">
                <div id="category">
                    <div onclick="location.href='/team3/member/findid.do'">아이디 찾기</div>
                    <div onclick="location.href='/team3/member/findpw.do'">비밀번호 찾기</div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                
                <div id="findinfo">
                    <input type="button" value="본인명의 휴대폰으로 인증" onclick="location.href='findidok.do?tel=010-6531-3581';">
                    <div>회원님의 명의로 등록된<br>휴대폰으로 본인확인을 진행합니다.</div>
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
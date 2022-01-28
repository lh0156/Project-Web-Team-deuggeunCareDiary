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
        #FindPwOk {
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
        #memberbox {
            margin-top: 50px;
            border: 1px solid #ccc;
            border-radius: 5px;
            display: flex;
            
        }
        #memberboxleft {
            width:20%;
            background-color: rgb(221, 240, 253);
            box-sizing: border-box;
            font-size: 14px;
        }
        #memberboxleft div:nth-child(1){
            height: 150px;
            text-align: center;
            line-height: 150px;
            color: rgb(68, 68, 68);
            box-sizing: border-box;
        }
        #memberboxright {
            width:80%;
            box-sizing: border-box;
        }
        #mbrpw {
            height: 150px;
            color: rgb(68, 68, 68);
            box-sizing: border-box;
        }
        .b1 {
            display: flex;
        }
        #mbrpw p{
            color: rgb(68, 68, 68);
            width: 150px;
            height: 30px;
            margin: 27px 0px 0px 30px;
            line-height: 30px;
            font-size: 12px;
            
        }
        #mbrpw input[type=password] {
            border: 1px solid #ccc;
            color: rgb(68, 68, 68);
            width: 150px;
            height: 30px;
            margin: 27px 0px 0px 30px;
            border-radius: 5px;
        }
        #next {
            text-align: center;
        }
        #next > input[type=submit] {
            margin: 50px 0px;
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
        
        #p3 {
        	font-size: 12px;
        	margin: 35px 0px 0px 20px;
        }
	</style>
</head>
<body>
<c:if test="${not empty result}">
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>계정정보찾기</div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="FindPwOk">
        		<div id="category">
                    <div onclick="location.href='/team3/member/findid.do'">아이디 찾기</div>
                    <div>비밀번호 찾기</div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                
                <form method="POST" action="/team3/member/repassword.do">
                    <div id="memberbox">
                        <div id="memberboxleft">
                            <div>비밀번호변경</div>
                        </div>
                        <div id="memberboxright">
                            <div id="mbrpw">
                                <div class="b1">
                                    <p>새 비밀번호</p>
                                    <input type="password" required id="p1" name="password">
                                </div>
                                <div class="b1">
                                    <p>새 비밀번호 확인</p>
                                    <input type="password" required id="p2">
                                    <div id="p3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="next">
                        <input type="submit" value="비밀번호 설정완료">
                        <input type="hidden" name="name" value="${result.name}">
                        <input type="hidden" name="id" value="${result.id}">
                        <input type="hidden" name="tel" value="${result.tel}">
                    </div>
                </form>
            </div>
	    </div>
    </div>
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
</c:if>
    <script>
    	<c:if test="${empty result}">
			//회원가입실패
			alert('등록된 회원정보가 없습니다. 다시시도해주세요.');
			location.href = '/team3/member/findpw.do';
		</c:if>
		
		$('#p2').keyup(function() {
	        if($('#p1').val() == $('#p2').val()) {
	            $('#p3').text('일치합니다.').css('color', 'cornflowerblue');
	        } else {
	            $('#p3').text('일치하지않습니다.').css('color', 'tomato');
	        }
	    });
		
    </script>
</body>
</html>
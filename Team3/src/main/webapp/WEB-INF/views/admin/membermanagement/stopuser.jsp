<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>

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
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	<!-- location -->
    <div id="inc-location">
        <div>주문/배송 관리</div>
        <div>
            관리자모드
            <i class="fas fa-angle-right"></i>
            주문/배송관리
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
    
			<h1>테스트</h1>
	
	    </div>
    </div>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
    
    <script>
	
		<c:if test="${result == 1}">
		//성공
		location.href = '/team3/admin/membermanagement/membermanagement.do?column=id&word=&userType=allUser';
		</c:if>
		
		<c:if test="${result == 0}">
		//실패
		alert('failed');
		history.back();
		</c:if>
	
	</script>
</body>
</html>
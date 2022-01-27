<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/team3/asset/css/">

<%@ include file="../inc/asset.jsp" %>
</head>

<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp" %>

	<!-- 만약에 delcount랑 갯수가 같으면? -->
		<script>
		<c:if test="${result >= 1}">
		
		location.href = '/team3/basket/list.do';
		</c:if>
		
		<c:if test="${result == 0}">
		
		alert('failed');
		history.back();
		</c:if>
		</script>
	
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>


    <script src='js/jquery-1.12.4.js'></script>
    <script src="js/jquery-ui.js"></script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
	<style>
		
	</style>
</head>
<body>
    <script>
	    <c:if test="${result == 1}">
		//성공
		alert('구매확정이완료되었습니다. 주문조회페이지로 이동합니다.');
		location.href = '/team3/mypage/myordersearch.do';
		</c:if>
		
		<c:if test="${result == 0}">
		//실패
		alert('failed');
		history.back();
		</c:if>
    </script>
</body>
</html>
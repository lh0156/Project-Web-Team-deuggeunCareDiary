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
		
	
	
		<c:choose>
			
			<c:when test="${pass eq '정지'}">
				alert('정지된 회원입니다.');
				location.href = '/team3/member/login.do';
			</c:when>
			
		
			<c:when test="${not empty id}">
				alert('로그인 완료');
				location.href = '/team3/main.do';
			</c:when>
			
			<c:when test="${empty id}">
				alert('등록된 회원이 아닙니다.');
				history.back();
			</c:when>
		
		</c:choose>
		
	</script>
</body>
</html>
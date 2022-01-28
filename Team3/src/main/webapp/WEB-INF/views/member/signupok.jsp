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
		//회원가입성공
		alert('회원가입 성공!!. 로그인페이지로 이동합니다.');
		location.href = '/team3/member/login.do';
		</c:if>
		
		<c:if test="${result == 0}">
		//회원가입실패
		alert('회원가입에 실패했습니다. 부적절한 값이 포함되어있습니다.');
		history.back();
		</c:if>
    </script>
</body>
</html>
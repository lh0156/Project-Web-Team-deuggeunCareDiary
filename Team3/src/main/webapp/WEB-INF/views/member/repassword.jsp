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
		//비밀번호변경완료
		alert('비밀번호변경완료!!. 로그인페이지로 이동합니다.');
		location.href = '/team3/member/login.do';
		</c:if>
		
		<c:if test="${result == 0}">
		//비밀번호변경실패
		alert('비밀번호변경실패.. 다시시도해주세요.');
		history.back();
		</c:if>
    </script>
</body>
</html>
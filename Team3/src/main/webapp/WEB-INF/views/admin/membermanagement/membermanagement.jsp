<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet"
	href="/team3/asset/css/admin/memberManagement.css">

<style>
#content {
	width: 100%;
	/* border: 1px solid black; */
	/* box-sizing: border-box; */
}

#container {
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
	<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
	<div id="inc-location">
		<div>회원 통합 관리</div>
		<div>
			관리자모드 <i class="fas fa-angle-right"></i> 회원통합관리
		</div>
	</div>

	<!-- content  -->
	<div id="content">
		<div id="container">

			<div id="search-tool">
				<form method="GET" action="/team3/admin/membermanagement/membermanagement.do"
					id="search-form">
					<div id="row1" class="search-row">
						<div>
							<select name="column" id="search-category">
								<option value="id" <c:if test="${column=='id'}">selected</c:if>>아이디</option>
								<option value="name" <c:if test="${column=='name'}">selected</c:if>>이름</option>
								<option value="tel" <c:if test="${column=='tel'}">selected</c:if>>연락처</option>
								<option value="address" <c:if test="${column=='address'}">selected</c:if>>주소</option>
							</select> <input type="text" name="word" placeholder="회원정보를 입력하세요" autofocus <c:if test="${not empty word}">value="${word}"</c:if>>						
						</div>
						<div class="search-button">
							<input type="submit" value="검색하기">
						</div>
					</div>
					<div id="row2" class="search-row">
						<div>
							<label><input type="checkbox" name="acrt"
								value="accurate" <c:if test="${acrt=='accurate'}">checked</c:if>>정확히 일치하는 정보 조회하기</label> <label><input
								type="radio" name="userType" value="allUser" checked>전체
								유저 조회</label>
						</div>
						<div class="search-button">
							<button type="button" id="initialization">조건초기화</button>
						</div>
					</div>
					<div id="row3" class="search-row">
						<div>
							<label><input type="radio" name="userType"
								value="stopUser" <c:if test="${user=='stopUser'}">checked</c:if>>정지 유저 조회</label> <label><input
								type="radio" name="userType" value="normalUser" <c:if test="${user=='normalUser'}">checked</c:if>>일반 유저 조회</label>
						</div>
						<div></div>
					</div>
				</form>
			</div>



			<div id="table">
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>패스워드</th>
							<th>이름</th>
							<th>연락처</th>
							<th>주소</th>
							<th>주문/배송확인</th>
							<th>정지여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${memberList}" var="dto">
							<tr>
								<td><a href="#!" onclick="location.href='/team3/admin/membermanagement/memberOrderDetail.do?memberseq=${dto.memberseq}';">${dto.id}</a></td>
								<td>${dto.password}</td>
								<td>${dto.name}</td>
								<td>${dto.tel}</td>
								<td>[${dto.postalcode}] <br>
									${dto.address}
								</td>
								<td><a href="#!">주문조회</a></td>
								<td
									class="
	                    			<c:choose>
	                    				<c:when test="${dto.accountstatus eq '일반'}">
			                    			user-normal-td">
			                    			<a href="#!" onclick="location.href='/team3/admin/membermanagement/stopuser.do?memberseq=${dto.memberseq}';">                					
	                    				</c:when>
	                    				<c:when test="${dto.accountstatus eq '정지'}">
			                    			user-stoped-td">
			                    			<a href="#!" onclick="location.href='/team3/admin/membermanagement/normaluser.do?memberseq=${dto.memberseq}';">             					
	                    				</c:when>
	                    			</c:choose>
	                    		
									${dto.accountstatus}</a></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>

		</div>
	</div>

	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>

	<script>
		$(".user-normal-td a").mouseover(function() {
			this.innerHTML = "정지하기";
		});
		$(".user-normal-td a").mouseout(function() {
			this.innerHTML = "일반";
		});
		$(".user-stoped-td a").mouseover(function() {
			this.innerHTML = "정지해제";
		});
		$(".user-stoped-td a").mouseout(function() {
			this.innerHTML = "정지";
		});

		$("#initialization").click(function() {
			$("#search-form")[0].reset();
		});
	</script>
</body>
</html>
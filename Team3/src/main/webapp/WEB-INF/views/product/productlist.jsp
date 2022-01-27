<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
#content {
	width: 100%;
	/* border: 1px solid black; */
	/* box-sizing: border-box; */
}

#container {
	width: 1000px;
	margin: 0 auto;
	/* border: 1px solid black; */
	/* box-sizing: border-box; */
}
</style>


<link rel="stylesheet" href="/team3/asset/css/productList/product.css">


</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp"%>

	<!-- content -->

	<div id="inc-location">
		<div>닭가슴살</div>
		<div>
			<a href="/Users/template/project3jo/html/chickenBreast.html"
				id="nowpage">닭가슴살</a> <a
				href="/Users/template/project3jo/html/lunchBox.html">도시락</a> <a
				href="/Users/template/project3jo/html/vegetable.html">야채류</a> <a
				href="/Users/template/project3jo/html/protein.html">단백질보충제</a> <a
				href="/Users/template/project3jo/htmlnutrients.html">기타영양제</a>
		</div>
	</div>

	<div id="product-num">
		20개의 상품이 있습니다.
		<form>
			<select class="menu-list">
				<option value="none" selected>선택하세요</option>
				<option value="인기순">인기순</option>
				<option value="신상품순">신상품순</option>
				<option value="추천순">추천순</option>
			</select>
		</form>

	</div>

	<!-- chickenBreast list -->
	<!-- productseq, producturl, reviewpoint, reviewcount, price, productname -->

	<div class="product-list row">
		<c:forEach items="${list}" var="dto" varStatus="status">
			<div class="product-box cell">
				<div class="item_box_img_area">
				


				
				
				<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="${dto.producturl}"></a>
				</div>
			
				<div class="txt-box">
					<ul>
					<c:forEach items="${listScore}" var="dtoScore" varStatus="status">
						
						<c:if test="${dto.productseq == dtoScore.productseq}">
						<li class="d_m"><span class="milage">2%적립</span> 
						<span class="star">
						<img src="/team3/asset/images/star.png" alt="error">${dtoScore.reviewpoint}(${dtoScore.reviewcount})</span></li>
						</c:if>
					</c:forEach>
					</ul>

					<br>
					<div class="name">${dto.productname}</div>
					<br>
					<div class="price">
						<fmt:formatNumber value="${dto.price}" pattern="#,###" /> <span>원</span>
					</div>
				</div>
				
			</div>
		</c:forEach>

		<div style="clear:both;"></div>
		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
</html>
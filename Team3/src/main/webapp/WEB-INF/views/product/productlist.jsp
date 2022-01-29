<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


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
	
	
	
              
	

	<c:choose>
         <c:when test="${empty category}">
            <div id="inc-location">
            <div>닭가슴살</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';" id="nowpage">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';">기타영양제</a>
            </div>
            </div>
         </c:when>
         
         <c:when test="${category eq '닭가슴살'}">
            <div id="inc-location">
            <div>닭가슴살</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';" id="nowpage">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';">기타영양제</a>
            </div>
            </div>
         </c:when>
         
      
         <c:when test="${category eq '도시락'}">
            <div id="inc-location">
            <div>도시락</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';" id="nowpage">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';">기타영양제</a>
            </div>
            </div>
         </c:when>
            
         <c:when test="${category eq '야채류'}">
            <div id="inc-location">
            <div>야채류</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';" id="nowpage">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';">기타영양제</a>
            </div>
            </div>
         </c:when>
         <c:when test="${category eq '단백질보충제'}">
            <div id="inc-location">
            <div>단백질보충제</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';" id="nowpage">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';">기타영양제</a>
            </div>
            </div>
         </c:when>
         <c:when test="${category eq '기타영양제'}">
            <div id="inc-location">
            <div>기타영양제</div>
            <div>
               <a onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</a>
                   <a onclick="location.href='productlist.do?category=도시락';">도시락</a>
                   <a onclick="location.href='productlist.do?category=야채류';">야채류</a>
                   <a onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</a>
                   <a onclick="location.href='productlist.do?category=기타영양제';" id="nowpage">기타영양제</a>
            </div>
            </div>
         </c:when>
      
      </c:choose>

	<div id="product-num">
		${count}개의 상품이 있습니다.
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
						${dto.price} <span>원</span>
					</div>
				</div>
				
			</div>
		
		</c:forEach>

		<div style="clear:both;"></div>
		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
</html>
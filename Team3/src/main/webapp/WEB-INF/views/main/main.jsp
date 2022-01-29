<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<link rel="stylesheet" href="/team3/asset/css/main/slide.css">
<link rel="stylesheet" href="/team3/asset/css/productList/product.css">

</head>

<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp"%>

	<!-- slide -->
	<div class="slidebox">
		<input type="radio" name="slide" id="slide01" checked> 
		<input type="radio" name="slide" id="slide02"> 
		<input type="radio" name="slide" id="slide03"> 
		<input type="radio" name="slide" id="slide04">
		
		<ul class="slidelist">
			<li class="slideitem">
				<div>
					<label for="slide04" class="left"></label> 
					<label for="slide02" class="right"></label> 
					<a><img src="/team3/asset/images/slideimg01.jpg" onclick="location.href='product/productlist.do?category=닭가슴살';"></a>
					
				</div>
			</li>
			<li class="slideitem">
				<div>
					<label for="slide01" class="left"></label> 
					<label for="slide03" class="right"></label> 
					<a><img src="/team3/asset/images/slideimg02.jpg" onclick="location.href='product/productlist.do?category=도시락';"></a>
				</div>
			</li>
			<li class="slideitem">
				<div>
					<label for="slide02" class="left"></label> 
					<label for="slide04" class="right"></label> 
					<a><img src="/team3/asset/images/slideimg03.jpg" onclick="location.href='product/productlist.do?category=단백질보충제';"></a>
				</div>
			</li>
			<li class="slideitem">
				<div>
					<label for="slide03" class="left"></label> 
					<label for="slide01" class="right"></label> 
					<a><img src="/team3/asset/images/slideimg04.jpg" onclick="location.href='product/productlist.do?category=단백질보충제';"></a>
				</div>
			</li>
		</ul>
	</div>

	<!-- product  -->
	
	<h1 class="product">이달의 추천상품</h1>
	
	
	<div id="product-recom">
	
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/닭가슴살/닭가슴살(1).jpg" alt=""></a> 
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/닭가슴살/닭가슴살(2).jpg" alt=""></a> 
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/닭가슴살/닭가슴살(3).jpg" alt=""></a>
	
	</div>

	<h1 class="product">이달의 신상</h1>

	<div id="product-new">
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/기타영양제/기타영양제(100).jpg" alt=""></a> 
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/기타영양제/기타영양제(99).jpg" alt=""></a> 
			<a href="/team3/product/productdetail.do?productseq=${dto.productseq}"><img src="/team3/asset/images/기타영양제/기타영양제(89).jpg" alt=""></a>
	</div>
	






	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	
	
	<script>
	 	
	
	
	
	</script>
	
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../inc/asset.jsp"%>
<link rel="stylesheet" href="/team3/asset/css/pay/pay.css">
<script type="text/javascript"
	src="https://cdn.iamport.kr/../js/iamport.payment-1.2.0.js"></script>

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

#inc-footer {
	margin-top: 200px;
}

</style>
</head>

<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp"%>

	<!-- location -->
	<div id="inc-location">
		<div class="nowGrade">
			주문/결제<span class="basketNumber">(주문내역)</span>
		</div>

		<div class="Grade">
			<span class="oneRd">01 장바구니 <i class="fas fa-angle-right"
				id="oneRdSimbol"></i>
			</span> <span class="twoRd">02 주문/결제 <i class="fas fa-angle-right"
				id="twoRdSimbol"></i>
			</span> <span class="threeRd"> 03 주문완료 </span>
		</div>
	</div>

	<!-- content  -->
	<div id="content">
		<div id="container">
			<nav>
				<table class="basketInfo">
					<tr class="basketAttribute">

						<th colspan="2">상품 정보</th>
						<th class="productPriceOfMenu">상품 금액</th>
					</tr>


					<c:forEach items="${list}" var="dto">
						<tr class="basketProduct">

							<td class="productImgBox"><img src="${dto.url}" class="productImg"></td>
							<td class="productInfo">
								<div class="productName" id="productName">${dto.productName}</div>
								<div class="productCount">
									<div id="productNum">${dto.count}개</div>
									<div id="productCount">1개</div>
								</div>


							</td>
							<td class="productPrice"><fmt:formatNumber value="${dto.price}" pattern="#,###" />원</td>
						</tr>
					</c:forEach>
				</table>

				<div class="delList">
					<div class="coment">장바구니에 담긴 상품은 최대 15일까지 저장됩니다.</div>
				</div>



				<div id="footer">
					<div class="allPrice">
						<div class="allPriceTable">
							<ul>
								<li>
									<div>상품금액</div>
									<div>
										<fmt:formatNumber value="${allPrice}" pattern="#,###" />
										원
									</div>
								</li>
								<li><i class="fas fa-plus"></i></li>
								<li>
									<div>배송비</div>
									<div>0원</div>
								</li>
								<li><i class="fas fa-equals"></i></li>
								<li>
									<div>결제 예상금액</div>
									<div>
										<fmt:formatNumber value="${allPrice}" pattern="#,###" />원
									</div>
								</li>
							</ul>
						</div>
					</div>

				</div>



			</nav>

			<div class="infoinfo">배송 정보</div>

			<hr>

			<!------------------------------------------->
			<div id="deliveryInfo">



				<div id="deliveryInfoInput">
					<table>
						<tr class="inputName">
							<td id="userName">이름</td>
							<td><input type="text" class="textBox"></td>
						</tr>


						<tr class="inputPhoneNumber">
							<td>핸드폰번호</td>
							<td><input type="text" class="textBox"></td>
							<td>추가 연락처</td>
							<td><input type="text" class="textBox"></td>

						</tr>


						<tr class="inputAddress">
							<td>주소</td>
							<td><input type="text" class="textBox" id="zipCode"
								value="우편 번호" readonly style="color: #666;"></td>
							<td><input type="button" onclick="execDaumPostcode()"
								value="우편번호" id="addressApi" class="addressCode"
								style="cursor: pointer"></td>
						</tr>

						<tr class="inputAddress2">
							<td></td>
							<td colspan="3"><input type="text" class="textBox"
								id="defaultAddress" value="기본 주소" readonly style="color: #666;">
							</td>

						</tr>

						<tr class="inputAddress3">
							<td></td>
							<td colspan="3"><input type="text" class="textBox"
								id="detailedAddress" placeholder="상세 주소" style="color: #666;">
							</td>
						</tr>

					</table>

				</div>

				<hr style="background-color: #DDDDDD;">

				<div>
					<div class="allPriceTable">
						<ul>
							<li>
								<div>주문금액</div>
								<div><fmt:formatNumber value="${allPrice}" pattern="#,###" />원</div>
							</li>
							<li><i class="fas fa-minus"></i></li>
							<li>
								<div>할인</div>
								<div>0원</div>
							</li>
							<li><i class="fas fa-plus"></i></li>
							<li>
								<div>배송비</div>
								<div>0원</div>
							</li>
							<li><i class="fas fa-equals"></i></li>
							<li>
								<div>결제 예상금액</div>
								<div><fmt:formatNumber value="${allPrice}" pattern="#,###" />원</div>
							</li>
						</ul>
					</div>


				</div>

			</div>

			<div class="infoinfo">결제 정보</div>

			<hr>

			<div class=paymentTable>
				<table>
					<tr>
						<th>결제 수단</th>
						<td><input type="radio" name="payDual" id="bankBook">
							무통장입금</td>
						<td><input type="radio" name="payDual" id="card">
							신용/체크카드</td>
						<td><input type="radio" name="payDual" id="directBank">
							실시간계좌이체</td>
						<tD><input type="radio" name="payDual" id="phonePay">
							휴대폰 결제</tD>
					</tr>
				</table>
			</div>


			<div class="payOKTable">
				<table class="payOk">
					<tr>
						<th rowspan="3">약관 동의</th>
						<td><input type="checkbox" class="checkAll"> 이용 약관에
							모두 동의합니다</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="check"> 개인정보 제3자 제공
							동의</td>
					</tr>
					<tr>
						<td><input type="checkbox" class="check"> 결제대행서비스 이용
							동의</td>
					</tr>

				</table>
			</div>

			<div class="payOkButton">
				<input type="button" value="결제하기" class="order"
					style="cursor: pointer;" onClick="iamport()">
			</div>

		</div>

		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>

		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			function execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									addr = data.roadAddress;
								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									addr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}

								} else {
									document
											.getElementById("sample6_extraAddress").value = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('zipCode').value = data.zonecode;
								document.getElementById("defaultAddress").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("detailedAddress")
										.focus();
							}
						}).open();
			}
		</script>

		<script>
			$('.checkAll').click(function() {
				if ($('.checkAll').is(':checked')) {
					$('.check').prop('checked', true);

				} else {
					$('.check').prop('checked', false);

				}
			});
		</script>

		<script>
			var payMentInfo = "card";
			var payMentName = "득근득근 결제 상품";
			var payMentPrice = ${allPrice};
			
			var payMentTel = '010-4562-3255'
			var payMentaddr = '서울 관악구 신림동';
			var payMentPostCode = '351-0754-7705-13';

			var IMP = window.IMP; // 생략 가능
			IMP.init("imp44209019"); // 예: imp00000000

			function iamport() {
				//가맹정 식별코드
				IMP.init("imp44209019");
				
				

				IMP.request_pay({ // param
					pg : "html5_inicis",
					pay_method : "card",
					merchantuid : 'merchant' + new Date().getTime(),
					name : payMentName, 
					amount : payMentPrice, 
					buyer_email : 'lh0156@naver.com',
					buyer_name : '구매자이름',
					buyer_tel : '010-4562-3255',
					buyer_addr : payMentaddr,
					buyer_postcode : '123-456'
				}, function(rsp) { // callback
					if (rsp.success) {
						var msg = '결제가 완료되었습니다.';
						msg += '고유ID : ' + rsp.imp_uid;
						msg += '상점 거래ID : ' + rsp.merchant_uid;
						msg += '결제 금액 : ' + rsp.paid_amount;
						msg += '카드 승인번호 : ' + rsp.apply_num;
					} else {
						var msg = '결제에 실패하였습니다.';
						msg += '에러내용 : ' + rsp.error_msg;
					}
					alert(msg);
				});
			}
		</script>
</body>

</html>
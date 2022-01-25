<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/team3/asset/css/pay/pay.css">

<%@ include file="../inc/asset.jsp" %>
<style>


</style>
</head>

<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp" %>

	<!-- location -->
    <div id="inc-location">
        <div class="nowGrade">
            주문/결제<span class="basketNumber">(주문내역)</span>
        </div>

        <div class="Grade">
            <span class="oneRd">01 장바구니
                <i class="fas fa-angle-right" id="oneRdSimbol"></i>
            </span>

            <span class="twoRd">02 주문/결제
                <i class="fas fa-angle-right" id="twoRdSimbol"></i>
            </span>
            <span class="threeRd">
                03 주문완료
            </span>
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

                    <tr class="basketProduct">

                        <td class="productImgBox"><img src="../images/chickenBreast1.jpg" class="productImg"></td>
                        <td class="productInfo">
                            <div class="productName" id = "productName">닭가슴살 스테이크 호박맛
                            </div>
                            <div class="productCount">
                                <div id="productNum"> 100개</div>
                                <div id="productCount">
                                    1개</div>
                            </div>

        </div>
        </td>
        <td class="productPrice"><span id="productPrice">147,200원</span></td>
        </tr>
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
                            <div>147,200원</div>
                        </li>
                        <li><i class="fas fa-plus"></i></li>
                        <li>
                            <div>배송비</div>
                            <div>0원</div>
                        </li>
                        <li><i class="fas fa-equals"></i></li>
                        <li>
                            <div>결제 예상금액</div>
                            <div>147,200원</div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>



        </nav>

        <div class="infoinfo">
            배송 정보
        </div>

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
                        <td>
                            <input type="text" class="textBox" id="zipCode" value="우편 번호" readonly style="color: #666;">
                        </td>
                        <td><input type="button" onclick="execDaumPostcode()" value="우편번호" id="addressApi"
                                class="addressCode" style="cursor: pointer"></td>
                    </tr>

                    <tr class="inputAddress2">
                        <td></td>
                        <td colspan="3">
                            <input type="text" class="textBox" id="defaultAddress" value="기본 주소" readonly
                                style="color: #666;">
                        </td>

                    </tr>

                    <tr class="inputAddress3">
                        <td></td>
                        <td colspan="3">
                            <input type="text" class="textBox" id="detailedAddress" placeholder="상세 주소"
                                style="color: #666;">
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
                            <div>147,200원</div>
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
                            <div>147,200원</div>
                        </li>
                    </ul>
                </div>


            </div>

        </div>

        <div class="infoinfo">
            결제 정보
        </div>

        <hr>

        <div class=paymentTable>
            <table>
                <tr>
                    <th>결제 수단</th>
                    <td><input type="radio" name="payDual" id="bankBook"> 무통장입금</td>
                    <td><input type="radio" name="payDual" id="card"> 신용/체크카드</td>
                    <td><input type="radio" name="payDual" id="directBank"> 실시간계좌이체</td>
                    <tD><input type="radio" name="payDual" id="phonePay"> 휴대폰 결제</tD>
                </tr>
            </table>
        </div>


        <div class="payOKTable">
            <table class="payOk">
                <tr>
                    <th rowspan="3">약관 동의</th>
                    <td><input type="checkbox" class="checkAll"> 이용 약관에 모두 동의합니다</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="check"> 개인정보 제3자 제공 동의</td>
                </tr>
                <tr>
                    <td><input type="checkbox" class="check"> 결제대행서비스 이용 동의</td>
                </tr>

            </table>
        </div>

        <div class="payOkButton">
            <input type="button" value="결제하기" class="order" style="cursor: pointer;" onClick="iamport()">
        </div>

    </div>
	
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>


    <script src='js/jquery-1.12.4.js'></script>
    <script src="js/jquery-ui.js"></script>

</body>

</html>
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
        #content{
            width: 100%;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #container{
            width: 1000px;
            margin: 0 auto;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }

        .tabBox {
         width: 1000px;
         margin: 0 auto;
         font-size: 22px;
      }

      .reviewCount,
      .productQACount {
         color: red;
      }

      #order_delivery_area {
         width: 1000px;
      }

      #order_delivery_area h2 {
         font-size: 20px;
         padding: 10px 5px;
         border-bottom: 1px solid #000;
      }

      #order_delivery_area table th,
      #order_delivery_area table td {
         font-size: 14px;
         font-weight: normal;
         border-bottom: 1px solid #e6e6e6;
      }

      #order_delivery_area table th {
         width: 160px;
         background: #f8f8f8;
         padding: 24px;
         vertical-align: top;
         word-break: keep-all;
      }

      #order_delivery_area table td {
         padding: 20px 24px 20px 40px;
         line-height: 24px;
         word-break: keep-all;
      }

      #order_delivery_area h2.bottom_t {
         padding-top: 54px;
      }

      #order_delivery_area table.bottom td {
         font-size: 13px;
      }
    </style>
    
    <link rel="stylesheet" href="/team3/asset/css/productList/productDetail.css">
    
</head>

<body>
    <!-- header -->
    	<%@include file="/WEB-INF/views/inc/header.jsp"%>
    	   	
    <!-- content -->
                    <!-- 상품이미지 & 리뷰 -->
                       <div class="itemContentBox">
                            <div class="itemContentImage">
                                <img src="${dto.producturl}" alt="">
                            
                                <div class="reviewContent">
                                    <span class="reviewStar">
                                            <img src="/team3/asset/images/star.png" alt="별점">
                                            <img src="/team3/asset/images/star.png" alt="별점">
                                            <img src="/team3/asset/images/star.png" alt="별점">
                                            <img src="/team3/asset/images/star.png" alt="별점">
                                            <img src="/team3/asset/images/star_off.png" alt="별점">
                                    </span>

                                    <span class="reviewScore">4.5</span>
                                    <span class="reviews"> 리뷰수 </span>
                                    <span class="reviewsCount">1</span>
                                </div>
                            </div>
                    <!-- 상품주문 -->

                            <div class="itemOrderContentBox">
                                <div class="orderItemTitle">${dto.productname}</div>
                                
                                
                                
                                <div class="orderItem">
                                <span class="orderItemPrice"><fmt:formatNumber value="${price10}" pattern="#,###" /> </span>
                                    <span class="orderItemPriceUnit">원</span>
                                </div>
                              
                                <div class="delivery">
                                    <span class="deliveryTitle">배송방법</span>
                                    <span class="deliveryCityPrice">3,000원 (20,000원이상 무료배송)
                                    <span class="deliveryCountryPrice">/ 도서산간지역4,000원</span>
                                </span>
                                </div>
                                  

                            <div class="itemOptionChoose">
                                        
							<form method="GET" action="/team3/basket/add.do" id="get">
							
                                            <select id="OptionMenuList" name="select">
	                                            <option value="none" selected hidden>상품옵션선택</option>
	                                            <option value="10">10팩(+0원)</option>
	                                            <option value="30">30팩 (+<fmt:formatNumber value="${diffrentPrice30}" pattern="#,###" />원)</option>
	                                            <option value="50">50팩 (+<fmt:formatNumber value="${diffrentPrice50}" pattern="#,###" />원)</option>
	                                            <option value="100">100팩 (+<fmt:formatNumber value="${diffrentPrice100}" pattern="#,###" />원)</option>
                                            </select>
                                             
                            </div>

                            <div class="itemPriceTotal">
                                    <span class="itemPriceTotalText">총 상품금액 </span>
                                    <span class="itemPriceTotalNum">0</span>
                                    <span class="itemPriceTotalUnit">원</span>
                            </div>
							
							
							
                            <div class="itemOptionBtn">
                                <span class="itemOptionCartBtnArea">
                                <input type="submit" value="장바구니" class="itemOptionCartBtn">
                                </span>
                                <input type="hidden" name="productseq" value="${dto.productseq}">
                                <input type="hidden" name="productseq" value="${dto.productseq}">
                                
                                
                            </form>
								
                                <span class="itemOptionOrderBtnArea">
                                <input type="submit" value="바로구매" class="itemOptionOrderBtn" onclick="">
                                </span>
                            </div>      
                        </div>
                  
           
                    <!-- 메뉴 탭 -->
                
                    <div class="itemMenuTab">
                        <nav>
                            <li id="itemInfo">상품정보</li>
                            <li id="orderReview">구매후기<span class="reviewCount">(1)</span></li>
                            <li id="productQA">상품문의<span class="productQACount">(1)</span></li>
                            <li id="deliveryCS">배송안내</li>
                         </nav>
                    </div>
                </div>

                   <!-- 메뉴 탭 상세내용 -->
   <div class="itemDetail">
    <img src="/team3/asset/images/itemDetail(1).jpg" alt="">
 </div>

 <!-- 구매 후기 -->
 <div id="order_reviews_area" class="tabBox" style="flex-direction: column;">
    <div class="tabBox"
       style="display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid black; padding-bottom: 5px;">
       <div>구매후기<span style="color: red;">(1)</span>
       </div>
       <div><input type="button" value="후기작성"
             style="background-color: #3A4C67; color: white; width: 100px; height: 40px; cursor: pointer;">
       </div>
    </div>

       <div class="tabBox" style="margin-top: 30px; padding-bottom: 5px; border-bottom: 1px solid #DDDDDD;">
          <ul style="list-style: disc; padding: 0;">
             <li style="margin-left: 20px; font-size: 14px;">득근득근 케어 다이어리는 믿을 수 있는 후기관리를 위해 회원으로 가입되신 실제 구매자만 후기를 작성하실
                수
                있습니다.</li>
             <li style="margin-left: 20px; font-size: 14px;">구매하신 상품을 받으신 후, 후기를 남겨주시면 상품의 엄정함에 도움이 됩니다.</li>
             <li style="margin-left: 20px; font-size: 14px;">상품과 관련 없는 후기 혹은 욕설, 비방, 부적절한 단어, 문의글, 양도글, 광고성, 도배, 환불처리된
                주문,
                개인정보가 포함된 후기는 예고없이 블라인드 처리 될 수 있습니다.</li>
          </ul>

       </div>

       <div style="margin-top: 10px; padding-bottom: 5px; border-bottom: 1px solid #DDDDDD;">
          <div style="font-size: 12px; color: #666;">(5점) pop** 2022.01.25</div>
          <div style="font-size: 12px; color: #666;">단백질 섭취를 위해서 구매한건데 맛도 좋고 가격도 저렴한 것 같아요!</div>

       </div>
 </div>




 <!-- 상품 문의 -->
 
 <div id="order_inquiry_area" class="tabBox" style="flex-direction: column;">
    <div class="tabBox"
       style="display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid black; padding-bottom: 5px;">
       <div>상품문의<span style="color: red;">(1)</span>
       </div>
       <div><input type="button" value="문의작성"
             style="background-color: #3A4C67; color: white; width: 100px; height: 40px; cursor: pointer;">
       </div>
    </div>

    <div class="tabBox" style="margin-top: 30px; padding-bottom: 5px; border-bottom: 1px solid #DDDDDD;">
       <ul style="list-style: disc; padding: 0;">
          <li style="margin-left: 20px; font-size: 14px;">상품문의에서는 상품과 무관한 요청은 처리되지 않습니다.</li>
          <li style="margin-left: 20px; font-size: 14px;">배송문의·취소·환불 등은 1:1상담게시판을 통해 문의남겨주시기 바랍니다.</li>
          <li style="margin-left: 20px; font-size: 14px;">미구매,비방이나 양도 광고성, 욕설, 도배글, 개인정보가 포함된 글은 예고없이 삭제되거나 노출이 제한될 수 있습니다.</li>
       </ul>
    </div>

    <div id="qaForm">
       <form action="">
          <p>득근득근에 문의하기</p>
          <div>
             <textarea></textarea>
             <input type="submit">
          </div>
       </form>
    </div>

    <div class="qa">
       <div id="userId">'asdf1234'님 문의</div>
       <div class="question">
          <div><i class="fab fa-quora"></i></div>
          <div>
             안녕하세요 스테이크 제품에 합성보존료가 들어갔는지 궁금하고 복합조미식품1,2,3이라고 나오던데 이것들이 정확하게 어떤 성분인지 자료와 함께 알 수 있을까요?
          </div>
          <div>
             2021.10.14           
          </div>
       </div>
       <div class="answer">
          <div>
             <i class="fas fa-angle-double-right"></i>
          </div>
          <div>
             문의주신 맛있닭 닭가슴살 스테이크에는 합성보존제는 함유되지않습니다.<br>
             복합조미식품으로 원재료함량에 표기된 부분에 대해서는 아쉽게도 상세 제조정보를 드리기는 어렵습니다.<br>
             가공제품의 원재료 함량 표기 시, 제조사에서 투입되는 모든 원료가 기재됩니다.
          </div>
          <div></div>
       </div>

    </div>

 </div>
 
 <!-- // 상품 문의 -->

 <!-- 배송안내 -->
 <div id="order_delivery_area" class="tabBox">
    <table style="width: 45%;">
       <tr>
          <th style="width: 20%; vertical-align: middle">배송 방법</th>
          <td style="vertical-align: middle;">CJ대한통운(1588-1255), 롯데택배(1588-2121), 로젠택배(1588-9988) </td>
       </tr>
       <tr>
          <th style="vertical-align: middle;">배송 지역</th>
          <td style="vertical-align: middle;">전국</td>
       </tr>
       <tr>
          <th style="vertical-align: middle;">배송 비용</th>
          <td style="vertical-align: middle;">3,000원 (20,000원이상 무료배송)<br>
             제주도 및 도서산간 지역 추가 운임 : 4,000원</td>
       </tr>
       <tr>
          <th style="vertical-align: middle;">배송 기간</th>
          <td style="vertical-align: middle;">결제(입금)일로부터 1~2일 후 (주말/공휴일 제외)</td>
       </tr>
       <tr>
          <th style="vertical-align: middle;">배송 마감</th>
          <td style="vertical-align: middle;">오후 5시 (월~금요일 / 제주, 도서산간 : 목요일)<br>
             마감시간 이전 주문·결제 시 당일 발송<br>
             마감시간 이후 주문·결제 시 다음날 발송<br>
             (주말·공휴일 결제 시 다음 영업일에 발송)<br></td>
       </tr>
       <tr>
          <th style="vertical-align: middle;">주말 출고</th>
          <td style="vertical-align: middle;">- 목요일 배송 마감 시간 이후 주문은 금요일 출고되어 토요일에 배송됩니다.<br>
             - 토요일 수령이 어려우신 고객님께서는 배송 메시지에 “월요일출고” 라고 적어주시면 월요일에 출고되어 화요일에 받아보실 수 있습니다. (공휴일인 경우 다음 영업일 출고)<br>
             ※ 야채 및 개별 출고일정을 따르는 제품은 제외<br></td>
       </tr>
    </table>

    <table class="bottom" style="width: 55%;">
       <tr>
          <th style="width: 20%; vertical-align: middle">주의사항</th>
          <td style=" vertical-align: middle">- 본 상품은 제품 특성상 단순 변심에 의한 교환 · 반품은 불가합니다.<br>
             - 군부대, 사서함 주소의 경우 배송이 안될 수 있으니 고객센터 확인 후 주문 바랍니다.<br>
             (구매 전 제품 상세 및 배송 · 반품에 대한 내용을 확인해 주세요.)<br></td>
       </tr>
       <tr>
          <th style=" vertical-align: middle">교환/반품 신청</th>
          <td style=" vertical-align: middle">제품의 교환 및 반품 시 고객센터 담당자에게 교환 또는 반품 신청을 해주시기 바랍니다.<br>
             (전화 : 070-8984-5771 / 홈페이지 고객센터)<br>
             <br>
             - 교환 및 반품은 고객센터 담당자와 협의를 통해 이루어지며, 임의로 수취거부 및 반송하는 경우 반품 처리되지 않습니다.<br>
             - 냉동/냉장 식품의 경우 제품의 특성상 ‘단순변심’에 의한 반품 및 환불은 불가합니다.<br>
             주문전 충분히 제품 상세페이지 및 제품 설명을 참고하시고 주문바랍니다. <br>
             - N페이 결제건은 출고/반품 주소지가 상품별로 상이하여, 자동 수거 지시 기능이 불가합니다.
          </td>
       </tr>
       <tr>
          <th style=" vertical-align: middle">교환/반품이 가능한 경우</th>
          <td style=" vertical-align: middle">- 주문한 제품과 다르거나 판매자의 제공정보와 상이한 경우<br>
             - 제품이 불량이거나 손상된 경우<br>
             - 배송사의 귀책 사유에 따른 배송 지연 발생 및 제품이 변질 된 경우<br></td>
       </tr>
       <tr>
          <th style=" vertical-align: middle">교환/반품이 불가능한 경우</th>
          <td style=" vertical-align: middle">- 판매자와 교환/반품에 대한 협의 없이 임의로 폐기 처분 또는 반품/배송한 경우<br>
             - 냉동·냉장 보관 식품 및 채소, 유통기한이 2개월 미만인 상품에 대한 단순 변심의 경우<br>
             - 잘못된 주소나 연락처 기재로 인한 반송 또는 고객의 부재로 인해 배송이 지연되어 제품이 변질된 경우<br>
             - 수령 후, 보관/취급 부주의로 인해 제품이 변질 또는 손상된 경우<br>
             - PC 및 휴대폰의 화면과 실제 상품의 색상이나 이미지 차이 또는 개인적 취향이나 기호에 따른 교환/반품<br></td>
       </tr>
       <tr>
          <th style=" vertical-align: middle">교환/반품 절차</th>
          <td style=" vertical-align: middle">- 전화 및 이메일을 통해 반송처 및 교환/반품 방법을 안내해드립니다.<br>
             - 반품시 결제방식에 따라 카드 승인취소 또는 계좌입금 처리를 해드립니다.<br></td>
       </tr>
    </table>
 </div>                                                                                              

   <!-- footer -->
   <%@include file="/WEB-INF/views/inc/footer.jsp"%>

   <script>
 //탭1 상품정보 클릭
 $('#itemInfo').click(function () {
         //보여야 할 것
         $('.itemDetail').css('display', 'block');
         //닫아야 할 것
         $('#order_reviews_area').css('display', 'none');
         $('#order_inquiry_area').css('display', 'none');
         $('#order_delivery_area').css('display', 'none');

         //선택탭 색 조정
         $('#itemInfo').css('background-color', 'RGB(85,85,85)');

         //비 선택 > 기존 색
         $('#orderReview').css('background-color', 'white');
         $('#productQA').css('background-color', 'white');
         $('#deliveryCS').css('background-color', 'white');

         //선택 색깔
         $('#itemInfo').css('color', 'white');

         //비선택 색깔
         $('#orderReview').css('color', 'black');
         $('#productQA').css('color', 'black');
         $('#deliveryCS').css('color', 'black');

         $('.reviewCount').css('color', 'red');
         $('.productQACount').css('color', 'red');

      });

      //-----------------탭2 상품후기  클릭
      $('#orderReview').click(function () {
         //보여야 할 것
         $('#order_reviews_area').css('display', 'flex');
         //닫아야 할 것
         $('.itemDetail').css('display', 'none');
         $('#order_inquiry_area').css('display', 'none');
         $('#order_delivery_area').css('display', 'none');

         //선택탭 배경색 조정
         $('#orderReview').css('background-color', 'RGB(85,85,85)');
         //비 선택 > 배경기존 색

         $('#itemInfo').css('background-color', 'white');
         $('#productQA').css('background-color', 'white');
         $('#deliveryCS').css('background-color', 'white');

         //선택 색깔
         $('#orderReview').css('color', 'white');
         $('.reviewCount').css('color', 'yellow');
         //비선택 색깔
         $('#itemInfo').css('color', 'black');
         $('#productQA').css('color', 'black');
         $('#deliveryCS').css('color', 'black');
         $('.productQACount').css('color', 'red');


      });
      //탭3 상품문의  클릭
      $('#productQA').click(function () {
         //보여야 할 것
         $('#order_inquiry_area').css('display', 'flex');
         //닫아야 할 것
         $('.itemDetail').css('display', 'none');
         $('#order_reviews_area').css('display', 'none');
         $('#order_delivery_area').css('display', 'none');

         //선택탭 색 조정
         $('#productQA').css('background-color', 'RGB(85,85,85)');
         //비 선택 > 기존 색
         $('.itemDetail').css('background-color', 'white');
         $('#orderReview').css('background-color', 'white');
         $('#deliveryCS').css('background-color', 'white');

         //선택 색깔
         $('#productQA').css('color', 'white');
         $('.productQACount').css('color', 'yellow');

         //비선택 색깔
         $('#itemInfo').css('color', 'black');
         $('#orderReview').css('color', 'black');
         $('#deliveryCS').css('color', 'black');
         $('.reviewCount').css('color', 'red');

      });
      //탭4 배송안내  클릭
      $('#deliveryCS').click(function () {
         //보여야 할 것
         $('#order_delivery_area').css('display', 'flex');
         //닫아야 할 것
         $('#order_reviews_area').css('display', 'none');
         $('#order_inquiry_area').css('display', 'none');
         $('#order_productInfo_area').css('display', 'none');

         //선택탭 색 조정
         $('#deliveryCS').css('background-color', 'RGB(85,85,85)');
         //비 선택 > 기존 색
         $('#itemInfo').css('background-color', 'white');
         $('#orderReview').css('background-color', 'white');
         $('#productQA').css('background-color', 'white');

         //선택 색깔
         $('#deliveryCS').css('color', 'white');


         //비선택 색깔
         $('#itemInfo').css('color', 'black');
         $('#orderReview').css('color', 'black');
         $('#productQA').css('color', 'black');
         $('.reviewCount').css('color', 'red');
         $('.productQACount').css('color', 'red');


      });

      //가격처리

      var price = ${price10};
     

      $('#OptionMenuList').change(function(){
         var selnum = $('#OptionMenuList Option:selected').val();

         var result;
         
         if (selnum == 10) {
            result = ${price10};
         } else if(selnum == 30) {
            result = ${price30};
         } else if(selnum == 50) {
            result = ${price50};
         } else if(selnum == 100)   { 
            result = ${price100};
         } else {
            return;
         }
    
         $('.itemPriceTotalNum').html(result.toLocaleString());
         $('.orderItemPrice').html(result.toLocaleString());
        });

      //탭
        </script>
    </body>
</html>
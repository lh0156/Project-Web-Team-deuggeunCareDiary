<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet"
	href="/team3/asset/css/admin/memberOrderDetail.css">
<style>
	    #content{
            width: 100%;
            margin-top: 50px;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #container{
            width: 1000px;
            margin: 0 auto;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #inc-footer{
            margin-top: 100px;
        }
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	<!-- location -->
    <div id="inc-location">
        <div>주문/배송 관리</div>
        <div>
            관리자모드
            <i class="fas fa-angle-right"></i>
            회원통합관리
            <i class="fas fa-angle-right"></i>
            회원상세조회
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
    
			<!-- 회원정보 -->
                <div id="user-info">
                        <div id="title">'${mainDto.name}'님의 상세정보입니다. </div>
                        <div>
                            <div id="left">
                                <div id="row1">
                                    <div>
                                        <div class="subtitle">계정정보<div class="line"></div></div>
                                        <div class="account-info">
                                            <div>아이디:</div>
                                            <div>${mainDto.id}</div>
                                        </div>
                                        <div class="account-info">
                                            <div>패스워드:</div>
                                            <div>${mainDto.password}</div>
                                        </div>
                                        <div class="account-info">
                                            <div>계정상태:</div>
                                            <div>${mainDto.accountstatus}</div>
                                    </div>
                                    <div class="account-info">
                                        <!-- <div>가입일:</div>
                                        <div></div>
                                         -->
                                    </div>
                                </div>
                                <div>
                                    <div class="subtitle">개인정보<div class="line"></div></div>
                                    <div class="account-info">
                                        <div>이름:</div>
                                        <div>${mainDto.name}</div>
                                    </div>
                                    <div class="account-info">
                                        <div>주민번호:</div>
                                        <div>${mainDto.jumin}</div>
                                    </div>
                                    <div class="account-info">
                                        <div>성별:</div>
                                        <div>${mainDto.gender}</div>
                                    </div>
                                    <div class="account-info">
                                        <div>연락처:</div>
                                        <div>${mainDto.tel}</div>
                                    </div>
                                    <div class="account-info">
                                        <div>이메일:</div>
                                        <div>${mainDto.email}</div>
                                    </div>
                                </div>
                            </div>
                            <div id="row2">
                                <div>
                                    <div class="subtitle">주소정보<div class="line"></div></div>
                                </div>
                                <div class="account-info">
                                    <div>우편번호:</div>
                                    <div>${mainDto.postalcode}</div>
                                </div><div class="account-info">
                                    <div>주소:</div>
                                    <div>${mainDto.address}</div>
                                </div><div class="account-info">
                                    <!-- 
                                    <div>상세주소:</div>
                                    <div>OO아파트 5층 502호</div>
                                     -->
                                </div>
                            </div>
                        </div>
                        <div id="right">
                            <div class="subtitle"><div class="line"></div>기타정보<div class="line"></div></div>
                            <div class="account-info">
                                <div>현재 마일리지:</div>
                                <div><fmt:formatNumber value="${mainDto.mileage }" pattern="#,###" /></div>
                            </div>
                            <div class="account-info">
                                <div>사용 마일리지:</div>
                                <div><fmt:formatNumber value="${mainDto.totalMileage }" pattern="#,###" /></div>
                            </div>
                            <div class="line"></div>
                            <div class="account-info">
                                <div>총 적립 마일리지:</div>
                                <div><fmt:formatNumber value="${mainDto.totalMileage+mainDto.mileage}" pattern="#,###" /></div>
                            </div>
                            <div class="account-info">
                                <div>주문건수:</div>
                                <div><fmt:formatNumber value="${mainDto.totalOrder }" pattern="#,###" />건</div>
                            </div>
                            <div class="account-info">
                                <div>주문금액:</div>
                                <div><fmt:formatNumber value="${mainDto.totalPaid }" pattern="#,###" />원</div>
                            </div>
                            <div class="account-info">
                                <div>남긴 리뷰 수:</div>
                                <div>${mainDto.totalReview}회</div>
                            </div>
                            <div class="account-info">
                                <div>남긴 문의 수:</div>
                                <div>${mainDto.totalQA}회</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 내역 -->
                <div id="user-recode">
                    <div id="recode-menu">
                        <div id="now-menu" onclick="location.href='/team3/admin/membermanagement/memberOrderDetail.do?memberseq=${memberseq}';">회원 주문내역</div>
                        <div class="not-menu" onclick="location.href='/team3/admin/membermanagement/memberQADetail.do?memberseq=${memberseq}';">회원 문의내역</div>
                        <div class="not-menu" onclick="location.href='/team3/admin/membermanagement/memberReviewDetail.do?memberseq=${memberseq}';">회원 리뷰내역</div>
                    </div>
                    <div>
                        <table id="table">
                            <thead>
                                <tr>
                                    <th>주문코드</th>
                                    <th>택배사</th>
                                    <th>송장번호</th>
                                    <th>결제방법</th>
                                    <th>주문일</th>
                                    <th>우편번호</th>
                                    <th>수령지주소</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${subDto}" var="dto">
                                <tr>
                                    <td><a href="#">${dto.orderseq }</a></td>
                                    <td>${dto.courier}</td>
                                    <td>${dto.invoicenum}</td>
                                    <td>
                                    <c:choose>
                                    	<c:when test="${dto.paymentmethod eq 'trans'}">
                                    		무통장결제
                                    	</c:when>
                                    	<c:when test="${dto.paymentmethod eq 'card'}">
                                    		카드결제
                                    	</c:when>
                                    	<c:when test="${dto.paymentmethod eq 'phone'}">
                                    		핸드폰결제
                                    	</c:when>
                                    	<c:when test="${dto.paymentmethod eq 'vbank'}">
                                    		인터넷뱅킹
                                    	</c:when>
                                    </c:choose>
                                    </td>
                                    <td>${dto.orderdate }</td>
                                    <td>[${dto.orderpostalcode }]</td>
                                    <td>${dto.orderaddress }</td>
                                    <td><fmt:formatNumber value="${dto.price }" pattern="#,###" />원</td>
                                </tr>
                                </c:forEach>
                                
                            </tbody>
                        </table>
                    </div>


                    <!-- 페이징 -->
                    <!-- <div id="paging">페이지</div> -->
                </div>
	
	    </div>
    </div>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
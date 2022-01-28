<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet"
	href="/team3/asset/css/admin/productManagement.css">
<style>
	    #content{
            width: 100%;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #container{
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
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	<!-- location -->
    <div id="inc-location">
        <div>상품 관리</div>
        <div>
            관리자모드
            <i class="fas fa-angle-right"></i>
            상품관리
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
    		
    		<!-- 서치툴 -->
			<div id="search-tool">
                <form method="GET" action="/team3/admin/productmanagement/productmanagement.do" id="search-form">
                    <div id="row1" class="search-row">
                        <div>
                            <select name="column" id="search-category">
                                <option value="productCode">상품코드</option>
                                <option value="productName">상품명</option>
                            </select>
                            <input type="text" name="word" placeholder="상품 정보를 입력하세요." autofocus <c:if test="${not empty word}">value="${word}"></c:if>>
                        </div>
                        <div class="search-button">
                            <input type="submit" value="검색하기">
                        </div>
                    </div>
                    <div id="row2" class="search-row">
                        <div>
                            <label><input type="checkbox" name="acrt" value="accurate"<c:if test="${acrt=='accurate'}">checked</c:if>>정확히 일치하는 정보 조회하기</label>
                            <label>
                                <select name="order" id="search-order">
                                    <option value="stockLow">재고적은순</option>
                                    <option value="stockHigh">재고많은순</option>
                                    <option value="priceHigh">가격높은순</option>
                                    <option value="priceLow">가격낮은순</option>
                                    <option value="saleHigh">판매량높은순</option>
                                    <option value="saleLow">판매량낮은순</option>
                                </select>
                                (으)로정렬하기
                            </label>
                        </div>
                        <div class="search-button">
                            <button type="button" id="initialization">조건초기화</button>
                        </div>
                    </div>
                    <div id="row3" class="search-row">
                        <div>
                            <label>
                                <select name="category" id="product-category">
                                    <option value="전체">전체</option>
                                    <option value="닭가슴살">닭가슴살</option>
                                    <option value="도시락">도시락</option>
                                    <option value="야채류">야채류</option>
                                    <option value="단백질보충제">단백질보충제</option>
                                    <option value="기타영양제">기타영양제</option>
                                </select>
                                카테고리 검색
                            </label>
                            <label>
                                <select name="state" id="product-state">
                                    <option value="전체">판매중</option>
                                    <option value="판매중">판매중</option>
                                    <option value="단종">단종</option>
                                    <option value="품절">품절</option>
                                </select>
                                상품 검색
                            </label>
                        </div>
                        <div></div>
                    </div>
                </form>
            </div>



            <div id="table">
                <table>
                    <thead>
                        <tr>
                            <th>상품코드</th>
                            <th>상품명</th>
                            <th>카테고리</th>
                            <th>가격</th>
                            <th>누적판매량</th>
                            <th>누적판매가격</th>
                            <th>리뷰점수</th>
                            <th>재고</th>
                            <th>판매상태</th>
                            <th>수정하기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">PD29</a></td>
                            <td>쫀득허브 닭가슴살</td>
                            <td>닭가슴살</td>
                            <td>4,500</td>
                            <td>1,542개</td>
                            <td>6,939,000원</td>
                            <td>4.5</td>
                            <td>453EA</td>
                            <td>판매중</td>
                            <td><a href="#!">수정</a></td>
                        </tr>
                       
                       
                        
                        
                    </tbody>
                </table>

				<!-- 
                <div id="paging">
                    페이징
                </div> -->
            </div>
	
	    </div>
    </div>
    
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
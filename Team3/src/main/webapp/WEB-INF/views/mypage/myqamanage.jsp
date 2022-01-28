<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
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
		  #myqamanage {
            margin-top: 50px;
        }
        #intro {
            
            display: flex;
            text-align: center;
            vertical-align: middle;
        }
        #intro > div:nth-child(1) {
            width:15%;
        }
        #intro > div:nth-child(2) {
            width:15%;
            
        }
        #intro > div:nth-child(3) {
            display: flex;
            width: 70%;
            justify-content: flex-end;
        }
        #intro p {
            height: 50px;
        }
        #intro > div:nth-child(1) p {
            font-size: 20px;
            color: grey;
            height: 30px;
            line-height: 30px;
        }
        #intro > div:nth-child(2) p {
            border: 1px solid tomato;
            color: tomato;
            border-radius: 10px;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            width: 120px;
            cursor: pointer;
            
        }
        #intro > div:nth-child(3) p {
            border: 1px solid #ccc;
            border-radius: 10px;
            line-height: 15px;
            width: 10%;
            height: 30px;
            font-size: 10px;
        }
        #category {
            margin-top: 100px;
            display: flex;
        }
        #category > div {
            box-sizing: border-box;
            border-bottom: 1px solid tomato;
            width: 20%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            cursor: pointer;
        }
        #category > div:nth-child(3) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        #myqainfo > p:nth-child(1) {
            font-size: 20px;
            text-align: center;
            margin-top: 100px;
        }
        
        #myqainfo > p:nth-child(2), #myqainfo > p:nth-child(3){
            font-size: 13px;
            text-align: center;
            margin-top: 30px;
            color: grey;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #manyqa {
            margin-top: 50px;
            margin-bottom: 50px;
        }
        #manyqa2 {
            margin-top: 50px;
            margin-bottom: 50px;
            display: flex;
            justify-content: space-between;
        }
        #manyqa2 > div {
            border-radius: 5px;
            width:100px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            color: white;
            background-color: tomato;
            cursor: pointer;

        }
        .box1 {
            
            display: flex;
            border-top: 1px solid #ccc;
            height: 60px;
        }
        .box1 > div:nth-child(1) {
            width:10%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(2) {
            width:15%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(3) {
            width:60%;
            text-align: center;
            line-height: 50px;
        }
        .box1 > div:nth-child(4) {
            width:15%;
            text-align: center;
            line-height: 50px;
        }
        #paging {
            display: flex;
            justify-content: center;
            
        }
        #paging > div {
            width: 100px;
            height: 30px;;
            border: 2px solid black;
            text-align: center;
            line-height: 30px;
            border-radius: 50px;
            margin: 50px;
            font-size: 15px;
            cursor: pointer;
            color: grey;
        }
        #paging div.ui-selected {
            background-color: #ccc;
        }
        #zero {
            text-align: center;
            color: grey;
        }
        #tabs > ul > li {
            width: 12%;
            margin-left: 14px;
            font-family: 'InfinitySans-RegularA1';
        }
        #tabs > ul > li:nth-child(1) {
            margin-left: 20px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>My 문의</div>
        <div>
            메인
            <i class="fas fa-angle-right"></i>
            마이페이지
            <i class="fas fa-angle-right"></i>
            My 문의
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
			<div id="myqamanage">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do';">회원정보 수정</p></div>
                    <div><p>포인트<br>${mileage}</p></div>
                </div>
                
				<div id="category">
                    <div onclick="location.href='/team3/mypage/myordersearch.do';">주문목록 & 배송조회</div>
                    <div onclick="location.href='/team3/mypage/myreturnsearch.do';">취소 & 반품 & 환불내역</div>
                    <div onclick="location.href='/team3/mypage/myqamanage.do';">My 문의</div>
                    <div onclick="location.href='/team3/mypage/myreviewmanage.do';">My 리뷰</div>
                    <div onclick="location.href='/team3/mypage/signout.do';">회원탈퇴</div>
                </div>
                
                <div id="myqainfo">
                    <p>My 문의</p>
                    <p>불편사항이 있으시거나 문의 사항이 있으실 경우 자주 묻는 질문을 통해 확인하실 수 있으며,</p>
                    <p>원하시는 답변이 없으실 경우 아래 My문의를 이용해주세요 :)</p>
                </div>
                
                <div class="line"></div>

                <div id="manyqa">
                    <p>FAQ 자주 묻는 질문</p>
                </div>
                
                <div id="tabs">
                    <ul>
                      <li><a href="#tabs-1">전체</a></li>
                      <li><a href="#tabs-2">상품관련</a></li>
                      <li><a href="#tabs-3">주문 및 결제</a></li>
                      <li><a href="#tabs-4">배송관련</a></li>
                      <li><a href="#tabs-5">취소/반품</a></li>
                      <li><a href="#tabs-6">포인트</a></li>
                      <li><a href="#tabs-7">기타</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="accordion">
                            <h3>제품 조리방법이 있나요?</h3>
                            <div>
                              <p>맛있닭은 해동 후 바로 먹어도 안전한 식품이지만 냉동 식품으로 보관해야 하기 때문에 해동 후 조리해서 드시는 것을 권해드리고 있습니다. 
                                <br/>
                                <br/>① 자연해동 - 냉장실 또는 그늘진 서늘한 곳에서 해동해주세요. 5℃ 이상의 실온 또는 햇빛(직사광선)에서 해동하지 마세요.
                                <br/>② 전자레인지에 데우기 - 자연해동 후 앞뒤로 각각 30초씩 조리해주세요. (700W 기준 / 냉동 시 앞뒤로 각각 1분씩 조리)
                                <br/>③ 프라이팬에 굽기 - 자연해동 후 중불에서 약 2~3분간 조리해주세요. 
                                <br/>④ 끓는 물에 데우기 - 자연해동 후 끓는 물에 비닐 파우치를 그대로 넣고 2~3분간 데워주세요. 
                                <br/>
                                <br/>보관중의 온도 등 기타여건에 따라 해동 중에 변질이 시작될 수 있으니 한번 조리해서 드시길 바라며 차갑게 드시는 것보다 한번 데워 드시는 것으로
                                <br/>식감과 맛이 훨씬 좋아집니다.
                                <br/>
                                <br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다.</p>
                            </div>
                            <h3>맛있닭 보관 및 유통기한 어떻게 되나요?</h3>
                            <div>
                              <p>맛있닭 보관 및 유통기한 방법 안내해드리겠습니다 <br/><br/>닭가슴살 제품 – 냉동 보관 시 제조일로부터 최대 12개월<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  냉장 보관 시 수령 후 최대 3일 (이후에는 제품 변질의 우려가 있습니다)<br/><br/>* 맛있닭은 냉동 보관 제품으로 꼭 받자마자 냉동보관을 해주세요! <br/><br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다	.</p>
                            </div>
                            <h3>제품이 한가지만 왔는데 어떻게 된거죠?</h3>
                            <div>
                              <p>맛있닭에서 판매되는 제품은 제조사가 상이하므로 제조사에 따라 묶음 배송이 가능합니다. 
                                <br/>주문 시에 제조사가 다른 제품 두가지를 주문하셨을 경우 각각 따로 다른 배송사로 배송처리 됩니다. 
                                <br/>
                                <br/>혹 같은 제품을 주문하셨는데 한가지 제품이 빠져 온 경우 맛있닭 고객센터(02-8984-5771)로 연락주시거나 [1:1 문의] 게시판에 글 남겨주시면 
                                <br/>상담드리고 조치해 드리겠습니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-2">
                        <div class="accordion">
                            <h3>제품에서 뼈가 나왔습니다!</h3>
                            <div>
                              <p>이러한 실수가 발생하게 된 점 먼저 사과 말씀 드립니다. 제품 조리 과정 시 겉에 있는 뼈나 힘줄 등은 모두 제거 하고 있지만 
                                <br/>정말 간혹 닭가슴살 안에 뼈가 박혀있는 경우가 있습니다.&nbsp; 
                                <br/>수작업으로 선별하여 뼈 등은 제거하고 있지만 닭가슴살 안에 박혀 있는 경우가 간혹 발생한다고 합니다. 
                                <br/>맛있닭 닭가슴살은 공정 과정에서 엄선된 닭가슴살을 선별 및 손질, 조리 후 내 포장 시 다시 한번 더 금속 검출 및 제품의
                                <br/>이물질 검사를 하고 있습니다. 선별작업에서 최대한 나오지 않도록 꼼꼼히 검사하고 있으나 더욱 더 신경 쓰도록
                                <br/>생산팀에 고객님의 의견 전달하여 만족드릴 수 있도록 노력하겠습니다. 감사합니다.</p>
                            </div>
                            <h3>해외 배송도 가능한가요?</h3>
                            <div>
                              <p>식품 특성상 변질의 우려가있어&nbsp; 해외배송이 불가한점 양해부탁드립니다.</p>
                            </div>
                            <h3>배송조회는 어떻게 할 수 있죠?</h3>
                            <div>
                              <p>맛있닭에서는 상품 발송 후 메일 및 문자를 이용하여 택배사/송장번호를 안내 드리고 있습니다. 
                                <br/>해당 주문의 조회를 원하시는 경우 아래 방법으로 조회가 가능합니다. 
                                <br/>
                                <br/>1. [마이페이지] -&gt; [구매내역] -&gt; [택배송장번호 클릭]으로 조회가 가능합니다. 
                                <br/>
                                <br/>감사합니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-3">
                        <div class="accordion">
                            <h3>제품 조리방법이 있나요?</h3>
                            <div>
                              <p>맛있닭은 해동 후 바로 먹어도 안전한 식품이지만 냉동 식품으로 보관해야 하기 때문에 해동 후 조리해서 드시는 것을 권해드리고 있습니다. 
                                <br/>
                                <br/>① 자연해동 - 냉장실 또는 그늘진 서늘한 곳에서 해동해주세요. 5℃ 이상의 실온 또는 햇빛(직사광선)에서 해동하지 마세요.
                                <br/>② 전자레인지에 데우기 - 자연해동 후 앞뒤로 각각 30초씩 조리해주세요. (700W 기준 / 냉동 시 앞뒤로 각각 1분씩 조리)
                                <br/>③ 프라이팬에 굽기 - 자연해동 후 중불에서 약 2~3분간 조리해주세요. 
                                <br/>④ 끓는 물에 데우기 - 자연해동 후 끓는 물에 비닐 파우치를 그대로 넣고 2~3분간 데워주세요. 
                                <br/>
                                <br/>보관중의 온도 등 기타여건에 따라 해동 중에 변질이 시작될 수 있으니 한번 조리해서 드시길 바라며 차갑게 드시는 것보다 한번 데워 드시는 것으로
                                <br/>식감과 맛이 훨씬 좋아집니다.
                                <br/>
                                <br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다.</p>
                            </div>
                            <h3>맛있닭 보관 및 유통기한 어떻게 되나요?</h3>
                            <div>
                              <p>맛있닭 보관 및 유통기한 방법 안내해드리겠습니다 <br/><br/>닭가슴살 제품 – 냉동 보관 시 제조일로부터 최대 12개월<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  냉장 보관 시 수령 후 최대 3일 (이후에는 제품 변질의 우려가 있습니다)<br/><br/>* 맛있닭은 냉동 보관 제품으로 꼭 받자마자 냉동보관을 해주세요! <br/><br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다	.</p>
                            </div>
                            <h3>제품이 한가지만 왔는데 어떻게 된거죠?</h3>
                            <div>
                              <p>맛있닭에서 판매되는 제품은 제조사가 상이하므로 제조사에 따라 묶음 배송이 가능합니다. 
                                <br/>주문 시에 제조사가 다른 제품 두가지를 주문하셨을 경우 각각 따로 다른 배송사로 배송처리 됩니다. 
                                <br/>
                                <br/>혹 같은 제품을 주문하셨는데 한가지 제품이 빠져 온 경우 맛있닭 고객센터(02-8984-5771)로 연락주시거나 [1:1 문의] 게시판에 글 남겨주시면 
                                <br/>상담드리고 조치해 드리겠습니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-4">
                        <div class="accordion">
                            <h3>제품에서 뼈가 나왔습니다!</h3>
                            <div>
                              <p>이러한 실수가 발생하게 된 점 먼저 사과 말씀 드립니다. 제품 조리 과정 시 겉에 있는 뼈나 힘줄 등은 모두 제거 하고 있지만 
                                <br/>정말 간혹 닭가슴살 안에 뼈가 박혀있는 경우가 있습니다.&nbsp; 
                                <br/>수작업으로 선별하여 뼈 등은 제거하고 있지만 닭가슴살 안에 박혀 있는 경우가 간혹 발생한다고 합니다. 
                                <br/>맛있닭 닭가슴살은 공정 과정에서 엄선된 닭가슴살을 선별 및 손질, 조리 후 내 포장 시 다시 한번 더 금속 검출 및 제품의
                                <br/>이물질 검사를 하고 있습니다. 선별작업에서 최대한 나오지 않도록 꼼꼼히 검사하고 있으나 더욱 더 신경 쓰도록
                                <br/>생산팀에 고객님의 의견 전달하여 만족드릴 수 있도록 노력하겠습니다. 감사합니다.</p>
                            </div>
                            <h3>해외 배송도 가능한가요?</h3>
                            <div>
                              <p>식품 특성상 변질의 우려가있어&nbsp; 해외배송이 불가한점 양해부탁드립니다.</p>
                            </div>
                            <h3>배송조회는 어떻게 할 수 있죠?</h3>
                            <div>
                              <p>맛있닭에서는 상품 발송 후 메일 및 문자를 이용하여 택배사/송장번호를 안내 드리고 있습니다. 
                                <br/>해당 주문의 조회를 원하시는 경우 아래 방법으로 조회가 가능합니다. 
                                <br/>
                                <br/>1. [마이페이지] -&gt; [구매내역] -&gt; [택배송장번호 클릭]으로 조회가 가능합니다. 
                                <br/>
                                <br/>감사합니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-5">
                        <div class="accordion">
                            <h3>제품 조리방법이 있나요?</h3>
                            <div>
                              <p>맛있닭은 해동 후 바로 먹어도 안전한 식품이지만 냉동 식품으로 보관해야 하기 때문에 해동 후 조리해서 드시는 것을 권해드리고 있습니다. 
                                <br/>
                                <br/>① 자연해동 - 냉장실 또는 그늘진 서늘한 곳에서 해동해주세요. 5℃ 이상의 실온 또는 햇빛(직사광선)에서 해동하지 마세요.
                                <br/>② 전자레인지에 데우기 - 자연해동 후 앞뒤로 각각 30초씩 조리해주세요. (700W 기준 / 냉동 시 앞뒤로 각각 1분씩 조리)
                                <br/>③ 프라이팬에 굽기 - 자연해동 후 중불에서 약 2~3분간 조리해주세요. 
                                <br/>④ 끓는 물에 데우기 - 자연해동 후 끓는 물에 비닐 파우치를 그대로 넣고 2~3분간 데워주세요. 
                                <br/>
                                <br/>보관중의 온도 등 기타여건에 따라 해동 중에 변질이 시작될 수 있으니 한번 조리해서 드시길 바라며 차갑게 드시는 것보다 한번 데워 드시는 것으로
                                <br/>식감과 맛이 훨씬 좋아집니다.
                                <br/>
                                <br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다.</p>
                            </div>
                            <h3>맛있닭 보관 및 유통기한 어떻게 되나요?</h3>
                            <div>
                              <p>맛있닭 보관 및 유통기한 방법 안내해드리겠습니다 <br/><br/>닭가슴살 제품 – 냉동 보관 시 제조일로부터 최대 12개월<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  냉장 보관 시 수령 후 최대 3일 (이후에는 제품 변질의 우려가 있습니다)<br/><br/>* 맛있닭은 냉동 보관 제품으로 꼭 받자마자 냉동보관을 해주세요! <br/><br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다	.</p>
                            </div>
                            <h3>제품이 한가지만 왔는데 어떻게 된거죠?</h3>
                            <div>
                              <p>맛있닭에서 판매되는 제품은 제조사가 상이하므로 제조사에 따라 묶음 배송이 가능합니다. 
                                <br/>주문 시에 제조사가 다른 제품 두가지를 주문하셨을 경우 각각 따로 다른 배송사로 배송처리 됩니다. 
                                <br/>
                                <br/>혹 같은 제품을 주문하셨는데 한가지 제품이 빠져 온 경우 맛있닭 고객센터(02-8984-5771)로 연락주시거나 [1:1 문의] 게시판에 글 남겨주시면 
                                <br/>상담드리고 조치해 드리겠습니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-6">
                        <div class="accordion">
                            <h3>제품에서 뼈가 나왔습니다!</h3>
                            <div>
                              <p>이러한 실수가 발생하게 된 점 먼저 사과 말씀 드립니다. 제품 조리 과정 시 겉에 있는 뼈나 힘줄 등은 모두 제거 하고 있지만 
                                <br/>정말 간혹 닭가슴살 안에 뼈가 박혀있는 경우가 있습니다.&nbsp; 
                                <br/>수작업으로 선별하여 뼈 등은 제거하고 있지만 닭가슴살 안에 박혀 있는 경우가 간혹 발생한다고 합니다. 
                                <br/>맛있닭 닭가슴살은 공정 과정에서 엄선된 닭가슴살을 선별 및 손질, 조리 후 내 포장 시 다시 한번 더 금속 검출 및 제품의
                                <br/>이물질 검사를 하고 있습니다. 선별작업에서 최대한 나오지 않도록 꼼꼼히 검사하고 있으나 더욱 더 신경 쓰도록
                                <br/>생산팀에 고객님의 의견 전달하여 만족드릴 수 있도록 노력하겠습니다. 감사합니다.</p>
                            </div>
                            <h3>해외 배송도 가능한가요?</h3>
                            <div>
                              <p>식품 특성상 변질의 우려가있어&nbsp; 해외배송이 불가한점 양해부탁드립니다.</p>
                            </div>
                            <h3>배송조회는 어떻게 할 수 있죠?</h3>
                            <div>
                              <p>맛있닭에서는 상품 발송 후 메일 및 문자를 이용하여 택배사/송장번호를 안내 드리고 있습니다. 
                                <br/>해당 주문의 조회를 원하시는 경우 아래 방법으로 조회가 가능합니다. 
                                <br/>
                                <br/>1. [마이페이지] -&gt; [구매내역] -&gt; [택배송장번호 클릭]으로 조회가 가능합니다. 
                                <br/>
                                <br/>감사합니다.</p>
                            </div>
                    	</div>
                    </div>
                    <div id="tabs-7">
                        <div class="accordion">
                            <h3>제품 조리방법이 있나요?</h3>
                            <div>
                              <p>맛있닭은 해동 후 바로 먹어도 안전한 식품이지만 냉동 식품으로 보관해야 하기 때문에 해동 후 조리해서 드시는 것을 권해드리고 있습니다. 
                                <br/>
                                <br/>① 자연해동 - 냉장실 또는 그늘진 서늘한 곳에서 해동해주세요. 5℃ 이상의 실온 또는 햇빛(직사광선)에서 해동하지 마세요.
                                <br/>② 전자레인지에 데우기 - 자연해동 후 앞뒤로 각각 30초씩 조리해주세요. (700W 기준 / 냉동 시 앞뒤로 각각 1분씩 조리)
                                <br/>③ 프라이팬에 굽기 - 자연해동 후 중불에서 약 2~3분간 조리해주세요. 
                                <br/>④ 끓는 물에 데우기 - 자연해동 후 끓는 물에 비닐 파우치를 그대로 넣고 2~3분간 데워주세요. 
                                <br/>
                                <br/>보관중의 온도 등 기타여건에 따라 해동 중에 변질이 시작될 수 있으니 한번 조리해서 드시길 바라며 차갑게 드시는 것보다 한번 데워 드시는 것으로
                                <br/>식감과 맛이 훨씬 좋아집니다.
                                <br/>
                                <br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다.</p>
                            </div>
                            <h3>맛있닭 보관 및 유통기한 어떻게 되나요?</h3>
                            <div>
                              <p>맛있닭 보관 및 유통기한 방법 안내해드리겠습니다 <br/><br/>닭가슴살 제품 – 냉동 보관 시 제조일로부터 최대 12개월<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  냉장 보관 시 수령 후 최대 3일 (이후에는 제품 변질의 우려가 있습니다)<br/><br/>* 맛있닭은 냉동 보관 제품으로 꼭 받자마자 냉동보관을 해주세요! <br/><br/>자세한 내용은 해당 상품에 상세페이지에 표기되여 있으니 참고 부탁드립니다	.</p>
                            </div>
                            <h3>제품이 한가지만 왔는데 어떻게 된거죠?</h3>
                            <div>
                              <p>맛있닭에서 판매되는 제품은 제조사가 상이하므로 제조사에 따라 묶음 배송이 가능합니다. 
                                <br/>주문 시에 제조사가 다른 제품 두가지를 주문하셨을 경우 각각 따로 다른 배송사로 배송처리 됩니다. 
                                <br/>
                                <br/>혹 같은 제품을 주문하셨는데 한가지 제품이 빠져 온 경우 맛있닭 고객센터(02-8984-5771)로 연락주시거나 [1:1 문의] 게시판에 글 남겨주시면 
                                <br/>상담드리고 조치해 드리겠습니다.</p>
                            </div>
                    	</div>
                    </div>
                </div>

                <div class="line"></div>

                <div id="manyqa2">
                    <p>My 문의 내역</p>
                    <div onclick="location.href='/team3/mypage/QAIn.do';">문의 하기</div>
                </div>
                <!--  -->
                <div class="line"></div>
                <div class="box1">
                    <div>문의 유형</div>
                    <div>진행 상태</div>
                    <div>문의 내용</div>
                    <div>문의 등록일</div>
                </div>
                <!--  -->
                <c:forEach items="${list}" var="dto">
                <div class="box1">
                    <div>${dto.QACategory}</div>
                    <div>${dto.QAAnswer}</div>
                    <div>${dto.QAContent}</div>
                    <div>${dto.QADate}</div>
                </div>
                </c:forEach>
                
                <div id="paging">
                    <div><i class="fas fa-chevron-left"></i>&nbsp;&nbsp;이전</div>
                    <div>다음&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                </div>

                
                <!-- <div id="zero">문의내역이 없습니다.</div> -->
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script>
	    $(function() {
	        $( "#tabs" ).tabs();
	    });
	
	    $( function() {
	        $( ".accordion" ).accordion({
	        heightStyle: "content"
	        });
	    });
	    
	    $('#paging').selectable();
    </script>
</body>
</html>
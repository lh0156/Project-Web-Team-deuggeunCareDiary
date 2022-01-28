<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <%@ include file="/WEB-INF/views/inc/asset.jsp"%>
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
        #inc-header > .header > header > #logo{
            text-align: center;
            margin: 0px auto;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #next {
            width: 500px;
            margin: 0px auto;
        }
        .box {
            display: flex;
            width: 600px;
            margin: 15px auto;
        }
        .box1 {
            border: 1px solid #ccc;
            width: 60px;
            height: 40px;
            box-sizing: border-box;
            text-align: center;
            font-size: 15px;
            line-height: 40px;
            background-color: rgb(233, 233, 233);
        }
        .box2 {
            border: 1px solid #ccc;
            width: 160px;
            height: 40px;
            box-sizing: border-box;
            margin-right: 10px;
        }
        .box3 {
            margin-left: 10px;
            width: 150px;
            height: 40px;
            box-sizing: border-box;
            font-size: 12px;
            line-height: 40px;
            color: rgb(121, 121, 121);
        }
        #pwbox {
            line-height: 20px;
        }
        #box4 {
            width: 150px;
            height: 40px;
            box-sizing: border-box;
            margin-left: 30px;
        }
        .kboard-attr-row {
            width: 600px;
            margin: 0px auto;
            display: flex;
        }
        .kboard-attr-row > textarea {
            margin-left: 20px;
            width:270px;
            height: 100px;
        }
        .attr-name {
            font-size: 20px;
            margin-bottom: 20px;
        }
        #next {
            width:600px;
        }
        #next > input[type=submit] {
            width: 360px;
            height: 50px;
            background-color: cornflowerblue;
            font-size: 15px;
            color: white;
            font-weight: bold;
            margin: 50px 0px;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
        }
        #next > div:nth-child(3) {
            margin-bottom: 50px;
        }
        #email {
            font-size: 20px;
            line-height: 40px;
        }
        fieldset {
            border: 0;
        }
        label {
            display: block;
            margin: 30px 0 0 0;
        }
        .overflow {
            height: 200px;
        }
        #speed {
            height: 40px;
            width: 150px;
        }
        #mailin {
            border: 1px solid #ccc;
        }
        #jumin {
            font-size: 20px;
            line-height: 40px;
            margin: 0px 4px;
        }
        #bx1 {
            display: flex;
        }
        #ju1 {
            width: 20px;
            height: 40px;
            border: 1px solid #ccc;
            border-right: 0px;
            box-sizing: border-box;
            font-size: 12px;
            line-height: 40px;
            color: rgb(121, 121, 121);
        }
        #ju2 {
            width: 150px;
            height: 40px;
            border: 1px solid #ccc;
            border-left: 0px;
            box-sizing: border-box;
            font-size: 12px;
            line-height: 40px;
            color: rgb(121, 121, 121);
        }
        .adsearch {
            width: 100px;
            margin-top: 5px;
            height: 30px;
            margin-left: 15px;
        }
        .ad1 {
            border: 1px solid #ccc;
            width: 295px;
            height: 40px;
            box-sizing: border-box;
            margin-right: 10px;
        }
   </style>
</head>
<body>
   <!-- header -->
    <div id="inc-header">
        <div class="header">
            <header>
                <div id="logo"><a href="#"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
            </header>
        </div>
    </div>
    <!-- content  -->
    <div id="content">
        <div id="container">
           <form method="POST" action="/team3/member/signupok.do">
                <div class="box">
                    * 필수 정보
                </div>
                <div class="box">
                    <div class="box1"><i class="far fa-keyboard"></i></div>
                    <input type="text" class="box2" placeholder="아이디" id="idin" name="signid" required>
                    <div class="box3" id="idtxt"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-key"></i></div>
                    <input type="password" class="box2" placeholder="비밀번호" id="pwin" name="signpw" required>
                    <div class="box3" id="pwbox"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-key"></i></div>
                    <input type="password" class="box2" placeholder="비밀번호 확인" id="pwinck" required>
                    <div class="box3" id="pwtxt"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-signature"></i></div>
                    <input type="text" class="box2" placeholder="이름" name="signname" required>
                    <div class="box3"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-phone"></i></div>
                    <input type="text" class="box2" placeholder="휴대폰번호 '-' 없이 입력" name="signtel" required>
                </div>
                <div class="box">
                    <div class="box1"><i class="far fa-envelope-open"></i></div>
                    <input type="text" class="box2" placeholder="이메일" name="signemail1" required>
                    <p id="email">@</p>
                    <input type="text" class="box3" id="mailin" name="signemail2" required>
                    <div id="box4">
                        <fieldset>
                            <select name="speed" id="speed">
                                <option selected="selected">직접입력</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>daum.net</option>
                                <option>nate.com</option>
                            </select>
                        </fieldset>
                    </div>
                </div>
                <div class="box">
                    <div class="box1"><i class="far fa-id-card"></i></div>
                    <input type="text" class="box2" placeholder="주민등록번호" name="signjumin1" id="ju" required>
                    <p id="jumin">-</p>
                    <div class="box3" id="bx1"><input type="text" name="signjumin2" id="ju1" maxlength='1' required><div id="ju2">******</div></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-map-marker-alt"></i></div>
                    <input type="text" class="box2" placeholder="우편번호" name="signpost" id="zipCode" required>
                    <div class="box3" id="bx2"><input type="button" class="adsearch" value="도로명 검색" onclick="execDaumPostcode()" value="우편번호" id="addressApi"
                        class="addressCode" style="cursor: pointer"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-map-marker-alt"></i></div>
                    <input type="text" placeholder="주소" class="ad1" name="signad1" id="defaultAddress" required>
                    <div class="box3"></div>
                </div>
                <div class="box">
                    <div class="box1"><i class="fas fa-map-marker-alt"></i></div>
                    <input type="text" placeholder="상세주소" class="ad1" name="signad2" id="detailedAddress" required>
                    <div class="box3"></div>
                </div>
                <div class="kboard-attr-row">
                    <label class="attr-name">약관 동의</label>
                </div>
                <div class="kboard-attr-row">
                    <input type="checkbox" required>[필수]
                    
                    <textarea>제1조(목적)                        이 약관은 (주)득근득근케어일기(전자거래 사업자)이 운영하는 홈페이지(이하 "쇼핑몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 (주)득근득근케어일기와 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
                    
                    ※ 「PC통신 등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
                    제2조(정의)
                    ① "쇼핑몰" 이란 사업자가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 쇼핑몰을 운영하는 사업자의 의미로도 사용합니다.
                    
                    ② "이용자"란 "쇼핑몰"에 접속하여 이 약관에 따라 "쇼핑몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                    
                    ③ "회원"이라 함은 "쇼핑몰"에 개인정보를 제공하여 회원등록을 한 자로서, "쇼핑몰"의 정보를 지속적으로 제공받으며, "쇼핑몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
                    
                    ④ "비회원"이라 함은 회원에 가입하지 않고 "쇼핑몰"이 제공하는 서비스를 이용하는 자를 말합니다.
                    
                    제3조 (약관의 명시와 개정)
                    ① "쇼핑몰"은 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다. ② "쇼핑몰"은 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. ③ "쇼핑몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. ④ "쇼핑몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "쇼핑몰"에 송신하여 "쇼핑몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다. ⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다. 제4조(서비스의 제공 및 변경) ① "쇼핑몰"은 다음과 같은 업무를 수행합니다. 1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 2. 구매계약이 체결된 재화 또는 용역의 배송 3. 기타 "쇼핑몰"이 정하는 업무 ② "쇼핑몰"은 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화·용역의 내용 및 제공일자를 명시하여 현재의 재화·용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다. ③ "쇼핑몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 "쇼핑몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 단, "쇼핑몰"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다. 제5조(서비스의 중단) ① "쇼핑몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. ② 제1항에 의한 서비스 중단의 경우에는 "쇼핑몰"은 제8조에 정한 방법으로 이용자에게 통지합니다. ③ "쇼핑몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 "쇼핑몰"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다. 제6조(회원가입) ① 이용자는 "쇼핑몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. ② "쇼핑몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 1. 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "쇼핑몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다. 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우 3. 기타 회원으로 등록하는 것이 "쇼핑몰"의 기술상 현저히 지장이 있다고 판단되는 경우 ③ 회원가입계약의 성립 시기는 "쇼핑몰"의 승낙이 회원에게 도달한 시점으로 합니다. ④ 회원은 제15조 제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "쇼핑몰"에 대하여 그 변경사항을 알려야 합니다. 제7조(회원 탈퇴 및 자격 상실 등) ① 회원은 "쇼핑몰"에 언제든지 탈퇴를 요청할 수 있으며 "쇼핑몰"은 즉시 회원탈퇴를 처리합니다. ② 회원이 다음 각 호의 사유에 해당하는 경우, "쇼핑몰"은 회원자격을 제한 및 정지시킬 수 있습니다. 1. 가입 신청 시에 허위 내용을 등록한 경우 2. "쇼핑몰"을 이용하여 구입한 재화·용역 등의 대금, 기타 "쇼핑몰" 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 3. 다른 사람의 "쇼핑몰" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우 4. "쇼핑몰"을 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 ③ "쇼핑몰"이 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "쇼핑몰"은 회원자격을 상실시킬 수 있습니다. ④ "쇼핑몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다. 제8조(회원에 대한 통지) ① "쇼핑몰"이 회원에 대한 통지를 하는 경우, 회원이 "쇼핑몰"에 제출한 전자우편 주소로 할 수 있습니다. ② "쇼핑몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "쇼핑몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 제9조(구매신청) "쇼핑몰" 이용자는 "쇼핑몰"상에서 이하의 방법에 의하여 구매를 신청합니다. 1. 성명, 비밀번호, 전화번호, 핸드폰번호, 주소, E-MAIL 입력 2. 재화 또는 용역의 선택 3. 결제방법의 선택 4. 이 약관에 동의한다는 표시(예, 마우스 클릭) 제10조 (계약의 성립) ① "쇼핑몰"은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다. 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우 2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우 3. 기타 구매신청에 승낙하는 것이 "쇼핑몰" 기술상 현저히 지장이 있다고 판단하는 경우 ② "쇼핑몰"의 승낙이 제12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다. 제11조(지급방법) "쇼핑몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 하나로 할 수 있습니다. 1. 계좌이체 2. 신용카드결제 3. 온라인무통장입금 4. 전자화폐에 의한 결제 5. 수령 시 대금지급 등 제12조(수신확인통지·구매신청 변경 및 취소) ① "쇼핑몰"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다. ② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다. ③ "쇼핑몰"은 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리합니다. 제13조(배송) "쇼핑몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "쇼핑몰"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다. 제14조(환급, 반품 및 교환) ① "쇼핑몰"은 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다. ② 다음 각 호의 경우에는 "쇼핑몰"은 배송된 재화일지라도 재화를 반품 받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다. 1. 배송된 재화가 주문내용과 상이하거나 "쇼핑몰"이 제공한 정보와 상이할 경우 2. 배송된 재화가 파손, 손상되었거나 오염되었을 경우 3. 재화가 광고에 표시된 배송기간보다 늦게 배송된 경우 4. 방문판매 등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우 제15조(개인정보보호) ① "쇼핑몰"은 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다. 1. 희망ID(회원의 경우) 2. 비밀번호(회원의 경우) 3. 이름 4. 별명 5. E-MAIL 6. 주소 7. 전화번호 8. 휴대번호 9. 메일링서비스 10. SMS 수신여부 ② "쇼핑몰"이 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다. ③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "쇼핑몰"이 집니다. 다만, 다음의 경우에는 예외로 합니다. 1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우 2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우 ④ "쇼핑몰"이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 제16조 제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다. ⑤ 이용자는 언제든지 "쇼핑몰"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "쇼핑몰"은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "쇼핑몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다. ⑥ "쇼핑몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다. ⑦ "쇼핑몰" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다. 제16조("쇼핑몰"의 의무) ① "쇼핑몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다. ② "쇼핑몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다. ③ "쇼핑몰"이 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다. ④ "쇼핑몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다. 제17조( 회원의 ID 및 비밀번호에 대한 의무) ① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다. ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다. ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "쇼핑몰"에 통보하고 "쇼핑몰"의 안내가 있는 경우에는 그에 따라야 합니다. 제18조(이용자의 의무) 이용자는 다음 행위를 하여서는 안 됩니다. 1. 신청 또는 변경 시 허위내용의 등록 2. "쇼핑몰"에 게시된 정보의 변경 3. "쇼핑몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 4. "쇼핑몰" 기타 제3자의 저작권 등 지적재산권에 대한 침해 5. "쇼핑몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위 제19조(연결"쇼핑몰"과 피연결"쇼핑몰" 간의 관계) ① 상위 "쇼핑몰"과 하위 "쇼핑몰"이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "쇼핑몰"(웹 사이트)이라고 하고 후자를 피연결 "쇼핑몰"(웹사이트)이라고 합니다. ② 연결 "쇼핑몰"은 피연결 "쇼핑몰"이 독자적으로 제공하는 재화·용역에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "쇼핑몰"의 사이트에서 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다. 제20조(저작권의 귀속 및 이용제한) ① "쇼핑몰"이 작성한 저작물에 대한 저작권 기타 지적재산권은 "쇼핑몰"에 귀속합니다. ② 이용자는 "쇼핑몰"을 이용함으로써 얻은 정보를 "쇼핑몰"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다. 제21조(분쟁해결) ① "쇼핑몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다. ② "쇼핑몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다. ③ "쇼핑몰"과 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다. 제22조(재판권 및 준거법) ① "쇼핑몰"과 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다. ② "쇼핑몰"과 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.
                    </textarea>
                </div>
                <div id="next">
                    <input type="submit" value="보내기">
                    <hr>
                    <div>&copy; Deukgeun, Inc.</div>
                </div>
            </form>
       </div>
    </div>
    <script>
       $('#idin').keyup(function() {
           if($('#idin').val().length >= 6) {
               $('#idtxt').text('사용가능합니다.');
               $('#idtxt').css('color', 'cornflowerblue');
           } else {
               $('#idtxt').text('최소 6자 이상 입력해주세요.');
               $('#idtxt').css('color', 'tomato');
           }
       });
   
       $('#pwin').keyup(function() {
           if($('#pwin').val().length >= 8 && $('#pwin').val().length <= 15) {
               $('#pwbox').text('사용가능합니다.');
               $('#pwbox').css('color', 'cornflowerblue');
           } else {
               $('#pwbox').text('비밀번호는 8~15자 이내로 입력해주세요.');
               $('#pwbox').css('color', 'tomato');
           }
       });
       
       $('#ju').keyup(function() {
           console.log($('#ju').val().length);
           if($('#ju').val().length==6) {
               $('#ju1').focus();
           }
       });
       
       $('#pwinck').keyup(function() {
           if($('#pwin').val() == $('#pwinck').val()) {
               $('#pwtxt').css('color', 'cornflowerblue');
               $('#pwtxt').text('일치합니다.');
           } else {
   
               $('#pwtxt').css('color', 'tomato');
               $('#pwtxt').text('일치하지않습니다.');
           }
       });
   
       $('#speed').change(function() {
           if($('select[name=speed]').val() != '직접입력') {
   
               $('#mailin').val($('select[name=speed]').val());
              
               console.log($('select[name=speed]').val());
           } else {
               $('#mailin').val('');
               $('#mailin').focus();
           }
       });
       
       function execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function (data) {
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
                       if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                           extraAddr += data.bname;
                       }
                       // 건물명이 있고, 공동주택일 경우 추가한다.
                       if (data.buildingName !== '' && data.apartment === 'Y') {
                           extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                       }
                       // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                       if (extraAddr !== '') {
                           extraAddr = ' (' + extraAddr + ')';
                       }
                       
                   } else {
                       document.getElementById("sample6_extraAddress").value = '';
                   }
   
                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   document.getElementById('zipCode').value = data.zonecode;
                   document.getElementById("defaultAddress").value = addr;
                   // 커서를 상세주소 필드로 이동한다.
                   document.getElementById("detailedAddress").focus();
               }
           }).open();
       }
    </script>
</body>
</html>
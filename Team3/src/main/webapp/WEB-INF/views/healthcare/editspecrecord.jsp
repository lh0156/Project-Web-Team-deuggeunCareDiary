<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SHOP | 득근득근케어일기</title>
    <link rel="stylesheet" href="/team3/asset/css/reset.css" />
    <link rel="stylesheet" href="/team3/asset/css/header.css" />
    <link rel="stylesheet" href="/team3/asset/css/footer.css" />
    <link rel="stylesheet" href="/team3/asset/css/font.css" />
    <link rel="stylesheet" href="/team3/asset/css/healthcare.css/healthcare_record.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">   
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
      #content {
        width: 100%;
        height: 800px;
        /* border: 1px solid black; */
        /* box-sizing: border-box; */
      }
      #container {
        width: 1000px;
        height: 1200px;
        margin: 0 auto;
        /* border: 1px solid black; */
        /* box-sizing: border-box; */
      }
    </style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	<!-- location -->
       <div id="inc-location">
      <div>헬스케어</div>
      <div>
        메인
        <i class="fas fa-angle-right"></i><a href="healthcare_main.html"> 헬스케어</a>
        <i class="fas fa-angle-right"></i><a href="healthcare_now.html"> 정보입력</a>
        <i class="fas fa-angle-right"></i><a href="healthcare_want.html"> 목표입력</a>
        <i class="fas fa-angle-right"></i><a href="healthcare_result.html"> 결과확인</a>
        <i class="fas fa-angle-right"></i><a href="healthcare_record.html"> 헬스 히스토리</a>
      </div>
    </div>
    <!-- content  -->
    <div id="content">
      <!-- 헬스 히스토리 메인 이미지 -->
      <div class="healthcare_main_img">
        <div id="cover"><img src="/team3/asset/images/result3.png" style="opacity: 0.9;" /></div>
      </div>
      <div id="container">
        <!-- 헬스 히스토리 메인 제목 -->
          <div class="formtotal">
            <div class="font">
              <i class="fas fa-search"
                ><span id="subfont1">&nbsp;&nbsp;회원님의 Health History&nbsp;</span></i
              >
            </div>
            <div style="clear: both"></div>

            <!-- 헬스 히스토리 그래프 -->
            <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://code.highcharts.com/modules/series-label.js"></script>
            <!-- <script src="https://code.highcharts.com/modules/exporting.js"></script>
            <script src="https://code.highcharts.com/modules/export-data.js"></script>
            <script src="https://code.highcharts.com/modules/accessibility.js"></script> -->
            <figure class="highcharts-figure">
                <div id="chart"></div>
                <p class="highcharts-description">
                </p>
            </figure>

            <!-- 헬스케어 히스토리 조회, 수정, 추가 입력창  -->
            <form name="healthcare_record_form" action="healthcare_record_form_ok.jsp">
              <div id="formtotal2">
                <div class="label">
                  <label class="p">기간 조회</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="date" name="txtcal1" id="pk1"/>&nbsp;&nbsp;&nbsp;<i class="fas fa-minus"></i>&nbsp;&nbsp;&nbsp;
                  <input type="date" name="txtcal2" id="pk2"/>&nbsp;&nbsp;
                  <input type="button" value="조회" name="txtcalp" class="pk11"/>
                </div>
                <div style="clear: both"></div>

                <div class="label">
                  <label class="p">나의 체중</label>
                  <input type="number"  name="weight"  id="pk3"/>    
                  <input type="date" name="txtcal3"  id="pk4"/>&nbsp;&nbsp;                 
                <input type="button" value="추가 / 수정" name="txtcalpweightp" class="pk11" />
                 </div> <div style="clear: both"></div>
    
                 <div class="label">
                  <label class="p">나의 체지방량</label>
                  <input type="number"  name="fat"  id="pk6"/>
                  <input type="date" name="txtcal4" id="pk7"/>&nbsp;&nbsp;
                <input type="button" value="추가 / 수정" name="txtpfatp" class="pk11"/>
                </div><div style="clear: both"></div>

                <div class="label">
                  <label class="p">나의 근육량</label>
                  <input type="number"  name="muscle"  id="pk9"/>
                  <input type="date" name="txtcal5"  id="pk10"/>&nbsp;&nbsp;
                <input type="button" value="추가 / 수정"  name="txtpmusclep"  class="pk11"/>
                </div><div style="clear: both"></div>

              </div>
            </form>

          
      </div>
    </div>

   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>

            // 헬스케어 그래프 //
            Highcharts.chart('chart', {      
            title: {
                text: ' '
            },            
            subtitle: {
                text: ' '
            },           
            yAxis: {
                title: {
                    text: ' '
                }
            },

            xAxis: {
                type: 'date' ,format: '{value:%b-%e}'
                },

            // xAxis: {
            //     accessibility: {
            //         rangeDescription: 'Range: 2020 to 2021'
            //     }
            // },
           
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle'
            },           
            plotOptions: {
                series: {
                    label: {
                        connectorAllowed: false
                    },
                    pointStart: 12
                }
                
            }, 
                      
            series: [{
                name: '나의 체중 (kg)',
                data: [90, 85, 80, 75, 70, 65, 60, 55]
            }, {
                name: '나의 체지방량 (kg)',
                data: [20, 19, 18, 17, 16, 15, 14, 13]
            }, {
                name: '나의 근육량 (kg)',
                data: [15, 14, 13, 12, 11, 10, 9, 8]
            }],           
            responsive: {
                rules: [{
                    condition: {
                        maxWidth: 500
                    },
                    chartOptions: {
                        legend: {
                            layout: 'horizontal',
                            align: 'center',
                            verticalAlign: 'bottom'
                        }
                    }
                }]
            }
            });

            // 헬스케어 히스토리 입력창 
            // 헬스케어 히스토리 입력창 - 날짜
            document.getElementById('pk1').value = new Date().toISOString().substring(0, 10);
            document.getElementById('pk2').value = new Date().toISOString().substring(0, 10);
            document.getElementById('pk4').value = new Date().toISOString().substring(0, 10);
            document.getElementById('pk7').value = new Date().toISOString().substring(0, 10);
            document.getElementById('pk10').value = new Date().toISOString().substring(0, 10);

            var txtcal1 = document.healthcare_record_form.txtcal1;
            var txtcal2 = document.healthcare_record_form.txtcal2;
            var txtcalp = document.healthcare_record_form.txtcalp;

            txtcalp.onclick = select_cal;

            function select_cal() {
              
          document.healthcare_record_form.submit();
        }
            
            // 헬스케어 히스토리 입력창 - 체중
            var weight = document.healthcare_record_form.weight;
            var txtcal3 = document.healthcare_record_form.txtcal3;
            var txtcalpweightp = document.healthcare_record_form.txtcalpweightp;

            txtcalpweightp.onclick = select_weight;

            function select_weight() {

              for (var i = 0; i < weight.value.length; i++) {
          var c = weight.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체중은 숫자만 입력해주세요.");
            weight.focus();
            return;
          }
        }

          if (weight.value.trim() == "") {
          alert("체중을 입력해주세요.");
          weight.focus();
          return;
        }
          document.healthcare_record_form.submit();
        }
      
        // 헬스케어 히스토리 입력창 - 체지방량
            var fat = document.healthcare_record_form.fat;
            var vartxtcal4 = document.healthcare_record_form.txtcal4;
            var txtpfatp = document.healthcare_record_form.txtpfatp;

            txtpfatp.onclick = select_fat;

            function select_fat() {


              for (var i = 0; i < fat.value.length; i++) {
          var c = fat.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("체지방량은 숫자만 입력해주세요.");
            fat.focus();
            return;
          }
        }

              if (fat.value.trim() == "") {
          alert("체지방량을 입력해주세요.");
          fat.focus();
          return;
        }
          document.healthcare_record_form.submit();
        }
        
      
        // 헬스케어 히스토리 입력창 - 근육량
          var muscle = document.healthcare_record_form.muscle;
            var txtcal5 = document.healthcare_record_form.txtcal5;
            var txtpmusclep = document.healthcare_record_form.txtpmusclep;

            txtpmusclep.onclick = select_muscle;

            function select_muscle() {

              for (var i = 0; i < muscle.value.length; i++) {
          var c = muscle.value.charAt(i);
          if (c < "0" || c > "9") {
            alert("근육량은 숫자만 입력해주세요.");
            muscle.focus();
            return;
          }
        }

              if (muscle.value.trim() == "") {
          alert("근육량을 입력해주세요.");
          muscle.focus();
          return;
        }
          document.healthcare_record_form.submit();
        
        }
            
    </script>
    <!-- footer -->
    <%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>
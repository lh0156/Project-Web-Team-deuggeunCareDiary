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
		#ReturnReq {
            margin-top: 50px;
        }
        #box1 {
            border: 2px solid #ccc;
            display: flex;
            justify-content: space-between;
            padding: 0px 300px;
            height: 40px;
            line-height: 40px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        #box1 > div:nth-child(1) {
            color: cornflowerblue;
        }
        #box2 {
            border: 2px solid #ccc;
            height: 800px;
            margin-bottom: 150px;
            background-color: rgb(226, 226, 226);
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            padding: 50px 100px;
            border-top: 0px;
        }
        #box2 > div:nth-child(1) {
            font-size: 20px;
            margin-bottom: 30px;
        }
        #box3 {
            border: 2px solid #ccc;
            background-color: white;
            border-radius: 5px;
            padding: 50px;
            font-size: 20px;
        }
        #box4 {
            margin-top: 30px;
            font-size: 15px;
            line-height: 50px;
        }
        #accordion h3 {
            font-family: 'InfinitySans-RegularA1';
        }
        #accordion textarea {
            font-size: 13px;
            width:500px;
            height: 200px;
            font-family: 'InfinitySans-RegularA1';
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        #btn1 {
            display: flex;
        }
        #btn1 > input {
            width:150px;
            margin-top: 50px;
            margin-left: 100px;
            height: 40px;
            font-size: 20px;
            background-color: white;
            color: tomato;
            border: 1px solid tomato;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
            cursor: pointer;

        }
        #btn1 > input:nth-child(1) {
            margin-left: 190px;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>?????? ??? ?????? ??????</div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
        	<div id="ReturnReq">

                <div id="box1">
                    <div>?????? ??????</div>
                    <div>>></div>
                    <div>?????? ??? ??????</div>
                </div>
                
                <div>
                    <div id="box2">
                        <div>?????? ????????? ??????????</div>
                        
                        <form action="">
                            <div id="box3">????????????
                                <div id="box4">
                                    <div id="accordion">
                                        <h3>&nbsp;????????? ??????????????? ??????</h3>
                                        <div>
                                        <textarea name="r1" style="resize:none;" placeholder=" * ??????????????? ??????????????? ?????? ??? ?????? ??????????????? ???????????? ???????????????."></textarea>
                                        </div>
                                        <h3>&nbsp;????????? ????????? ??????</h3>
                                        <div>
                                            <textarea name="r2" style="resize:none;" placeholder=" * ??????????????? ??????????????? ?????? ??? ?????? ??????????????? ???????????? ???????????????."></textarea>
                                        </div>
                                        <h3>&nbsp;?????? ????????? ?????????</h3>
                                        <div>
                                            <textarea name="r3" style="resize:none;" placeholder=" * ??????????????? ??????????????? ?????? ??? ?????? ??????????????? ???????????? ???????????????."></textarea>
                                        </div>
                                        <h3>&nbsp;????????? ?????????</h3>
                                        <div>
                                            <textarea name="r4" style="resize:none;" placeholder=" * ??????????????? ??????????????? ?????? ??? ?????? ??????????????? ???????????? ???????????????."></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="btn1">
                                <input type="button" value="?????? ??????" onclick="location.href='#!';">
                                <input type="submit" value="?????? ??????" id="next">
                            </div>
                        </form>
                        
                    </div>
                </div>
                
            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script src="/team3/asset/js/jquery-ui.js"></script>
    <script>
	    $( function() {
	        var icons = {
	        header: "ui-icon-circle-arrow-e",
	        activeHeader: "ui-icon-circle-arrow-s"
	        };
	        $( "#accordion" ).accordion({
	        icons: icons
	        });
	    });
    </script>
</body>
</html>
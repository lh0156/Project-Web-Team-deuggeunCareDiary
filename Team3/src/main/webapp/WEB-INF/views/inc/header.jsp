<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:choose>
	<c:when test="${grade eq '관리자'}">
    <!-- 관리자헤더 -->
    
    <div id="inc-header">
        
        <div class="header">
        
        
            <form action="productlist.do" method="get">
          
                <header>
              
                    <div id="logo"><a href="/team3/main.do"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
                   
                    
                
                    <div id="search"><input value="${param.searchkeyword}" input type="text" name="searchkeyword" placeholder="검색하기"><a href=""><i class="fas fa-search" style="font-size:1.5rem; margin-left: 2.3rem;"></i></a></div>
                 
          
                    <div id="menu">
                        <a href="/admin/membermanagement/membermanagement.do">관리자 메뉴</a>&nbsp;|&nbsp;
                        <a href="/team3/member/logout.do">로그아웃</a>&nbsp;|&nbsp;
                        <a href="/team3/mypage/myordersearch.do">주문내역</a>&nbsp;|&nbsp;
                    </div>
                </header>
            </form>
        </div>
        <div class="line_ccc"></div>
        <div class="nav">
            <nav>
                <div class="side">
                    <a href="#!"><i class="fas fa-bars" style="margin-right: 1rem;"></i>전체 카테고리</a>
                    <ul id="drop-category">
                        <li onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</li>
                        <li onclick="location.href='productlist.do?category=도시락';">도시락</li>
                        <li onclick="location.href='productlist.do?category=야채류';">야채류</li>
                        <li onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</li>
                        <li onclick="location.href='productlist.do?category=기타영양제';">기타영양제</li>
                        <li onclick="location.href='productlist.do?category=영양별';">영양별 상품조회</li>
                        <li onclick="location.href='productlist.do?category=개인별';">개인별 상품조회</li>
                    </ul>
                </div>
                <div class="main-nav"><a href="#!">베스트</a></div>
                <div class="main-nav"><a href="#!">신상품</a></div>
                <div class="main-nav"><a href="/team3/healthcare/healthcaremain.do">헬스케어</a></div>
                <div class="main-nav"><a href="/team3/video/name.do">득근영상</a></div>
                <div class="side">
                    <div><a href="/team3/mypage/myordersearch.do"><i class="fas fa-user-circle"></i></a></div>
                    <div><a href="/team3/basket/list.do"><i class="fas fa-shopping-cart"></i></a></div>
                </div>
            </nav>
        </div>
        <div class="line_black"></div>
    </div>
    <!-- 회원헤더 -->
    </c:when>
	<c:when test="${not empty id}">
    <!-- 회원헤더 -->
    
    <div id="inc-header">
        
        <div class="header">
        
        
            <form action="productlist.do" method="get">
          
                <header>
              
                    <div id="logo"><a href="/team3/main.do"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
                   
                    
                
                    <div id="search"><input value="${param.searchkeyword}" input type="text" name="searchkeyword" placeholder="검색하기"><a href=""><i class="fas fa-search" style="font-size:1.5rem; margin-left: 2.3rem;"></i></a></div>
                 
          
                    <div id="menu">
                        <a href="/team3/member/logout.do">로그아웃 </a>&nbsp;|&nbsp;
                        <a href="/team3/mypage/myordersearch.do">주문조회 </a>&nbsp;|&nbsp; 
                        <a href="/team3/cscenter/frequentqa.do">고객센터</a>
                    </div>
                </header>
            </form>
        </div>
        <div class="line_ccc"></div>
        <div class="nav">
            <nav>
                <div class="side">
                    <a href="#!"><i class="fas fa-bars" style="margin-right: 1rem;"></i>전체 카테고리</a>
                    <ul id="drop-category">
                        <li onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</li>
                        <li onclick="location.href='productlist.do?category=도시락';">도시락</li>
                        <li onclick="location.href='productlist.do?category=야채류';">야채류</li>
                        <li onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</li>
                        <li onclick="location.href='productlist.do?category=기타영양제';">기타영양제</li>
                        <li onclick="location.href='productlist.do?category=영양별';">영양별 상품조회</li>
                        <li onclick="location.href='productlist.do?category=개인별';">개인별 상품조회</li>
                    </ul>
                </div>
                <div class="main-nav"><a href="#!">베스트</a></div>
                <div class="main-nav"><a href="#!">신상품</a></div>
                <div class="main-nav"><a href="/team3/healthcare/healthcaremain.do">헬스케어</a></div>
                <div class="main-nav"><a href="/team3/video/name.do">득근영상</a></div>
                <div class="side">
                    <div><a href="/team3/mypage/myordersearch.do"><i class="fas fa-user-circle"></i></a></div>
                    <div><a href="/team3/basket/list.do"><i class="fas fa-shopping-cart"></i></a></div>
                </div>
            </nav>
        </div>
        <div class="line_black"></div>
    </div>
    <!-- 회원헤더 -->
    </c:when>
    <c:when test="${empty id}">
    <!-- 비회원헤더 -->
    
    <div id="inc-header">
        
        <div class="header">
        
        
            <form action="productlist.do" method="get">
          
                <header>
              
                    <div id="logo"><a href="/team3/main.do"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
                   
                    
                
                    <div id="search"><input value="${param.searchkeyword}" input type="text" name="searchkeyword" placeholder="검색하기"><a href=""><i class="fas fa-search" style="font-size:1.5rem; margin-left: 2.3rem;"></i></a></div>
                 
          
                    <div id="menu">
                        <a href="/team3/member/login.do">로그인 </a>&nbsp;|&nbsp; 
                         <a href="/team3/member/signup.do">회원가입 </a>&nbsp;|&nbsp; 
                        <a href="/team3/cscenter/frequentqa.do">고객센터</a>
                    </div>
                </header>
            </form>
        </div>
        <div class="line_ccc"></div>
        <div class="nav">
            <nav>
                <div class="side">
                    <a href="#!"><i class="fas fa-bars" style="margin-right: 1rem;"></i>전체 카테고리</a>
                    <ul id="drop-category">
                        <li onclick="location.href='productlist.do?category=닭가슴살';">닭가슴살</li>
                        <li onclick="location.href='productlist.do?category=도시락';">도시락</li>
                        <li onclick="location.href='productlist.do?category=야채류';">야채류</li>
                        <li onclick="location.href='productlist.do?category=단백질보충제';">단백질보충제</li>
                        <li onclick="location.href='productlist.do?category=기타영양제';">기타영양제</li>
                        <li onclick="location.href='productlist.do?category=영양별';">영양별 상품조회</li>
                        <li onclick="location.href='productlist.do?category=개인별';">개인별 상품조회</li>
                    </ul>
                </div>
                <div class="main-nav"><a href="#!">베스트</a></div>
                <div class="main-nav"><a href="#!">신상품</a></div>
                <div class="main-nav"><a href="/team3/healthcare/healthcaremain.do">헬스케어</a></div>
                <div class="main-nav"><a href="/team3/video/name.do">득근영상</a></div>
                <div class="side">
                    <div><a href="/team3/mypage/myordersearch.do"><i class="fas fa-user-circle"></i></a></div>
                    <div><a href="/team3/basket/list.do"><i class="fas fa-shopping-cart"></i></a></div>
                </div>
            </nav>
        </div>
        <div class="line_black"></div>
    </div>
    <!-- 회원헤더 -->
    </c:when>
   	</c:choose>
    
    
    <script>
    
    
    
    


    </script>
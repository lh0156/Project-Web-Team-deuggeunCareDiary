<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- header -->
    <div id="inc-header">
        <div class="header">
            <form action="">
                <header>
                    <div id="logo"><a href="#"><img src="/team3/asset/images/logo1.png" alt="로고"><span id="first">득근득근</span><br>케어일기</a></div>
                    <div id="search"><input type="text" placeholder="검색하기"><a href="#!"><i class="fas fa-search" style="font-size:1.5rem; margin-left: 2.3rem;"></i></a></div>
                    <div id="menu">
                        <a href="#!">로그인 </a>&nbsp;|&nbsp; 
                        <a href="#!">회원가입 </a>&nbsp;|&nbsp; 
                        <a href="#!">주문조회 </a>&nbsp;|&nbsp; 
                        <a href="#!">고객센터</a>
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
                        <li onclick="location.href='';">닭가슴살</li>
                        <li onclick="location.href='';">도시락</li>
                        <li onclick="location.href='';">야채류</li>
                        <li onclick="location.href='';">단백질보충제</li>
                        <li onclick="location.href='';">기타영양제</li>
                        <li onclick="location.href='';">영양별 상품조회</li>
                        <li onclick="location.href='';">개인별 상품조회</li>
                    </ul>
                </div>
                <div class="main-nav"><a href="#!">베스트</a></div>
                <div class="main-nav"><a href="#!">신상품</a></div>
                <div class="main-nav"><a href="#!">헬스케어</a></div>
                <div class="main-nav"><a href="#!">득근영상</a></div>
                <div class="side">
                    <div><a href="#!"><i class="fas fa-user-circle"></i></a></div>
                    <div><a href="#!"><i class="fas fa-shopping-cart"></i></a></div>
                </div>
            </nav>
        </div>
        <div class="line_black"></div>
    </div>
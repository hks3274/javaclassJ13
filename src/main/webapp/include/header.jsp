<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 상단 메뉴바 -->
  <!-- PC 버전 -->
  <c:set var="level" value="0"/>
  <div class="navbar_main">
    <a class="navbar_logo" href="${ctp}/Main">STEP UP</a>
    <div class="navbar_links">
      <a href="#">동아리소개</a>
      <a href="#">공지사항</a>
      <a href="#">이벤트</a>
      <a href="#">커뮤니티</a>
      <a href="#">일정</a>
      <c:if test="${level != 1}">
     	 	<a href="Login.user">로그인</a>
      </c:if>
      <c:if test="${level == 1}">
      	<a href="#">마이페이지</a>
      </c:if>
    </div>
  </div>
  <div class="navbar_overlay"></div>
  <div class="navbar_burger">
    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
    </svg>
  </div>
  <div class="navbar_menu">
    <a href="#">동아리소개</a>
    <a href="#">공지사항</a>
    <a href="#">이벤트</a>
    <a href="#">커뮤니티</a>
    <a href="#">일정</a>
    <a href="Login.user">로그인</a>
    <a href="#">마이페이지</a>
    <div class="navbar_burger_back">
      <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
        <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
      </svg>
    </div>
  </div>
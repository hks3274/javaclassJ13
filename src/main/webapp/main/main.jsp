<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%@ include file = "/include/bs5.jsp" %>
  <title>main창</title>
	
</head>
<body  class="d-flex flex-column min-vh-100">
<p><br/></p>
<div class="container">
<%@ include file="/include/header.jsp" %>	

 <!-- 사진슬라이드 -->
<div id="carouselExampleSlidesOnly" class="carousel slide mt-5" data-bs-interval=4000 data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active text-center">
      <img src="https://cdn.pixabay.com/photo/2021/11/27/19/19/waterfall-6828794_1280.jpg" class="img-fluid"/>     
    </div>
    <div class="carousel-item text-center">
      <img src="https://cdn.pixabay.com/photo/2017/06/20/15/18/climb-2423433_1280.jpg"  class="img-fluid"/>
    </div>
    <div class="carousel-item text-center">
    	<img src="${ctp}/images/mainImage/20240528.jpg" class="img-fluid"/>
    </div>
  </div>
</div>


<!-- 공지사항과 이벤트 메뉴바 -->
<div class="container">
	<div class="containerDiv">
	<div class= "mt-5" >
	  <h2><b>공지사항</b></h2>
  <p> 공지사항 뜨는 곳입니다.</p>    
  <table class="table table-hover">
    <thead>
      <tr>
        <th>작성자</th>
        <th>내 용</th>
        <th>날 짜</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>관리자</td>
        <td>드디어 오픈합니다</td>
        <td>2024-05-11</td>
      </tr>
      <tr>
        <td>홍길동</td>
        <td>왕</td>
        <td>2021-05-14</td>
      </tr>
      <tr>
        <td>김말숙</td>
        <td>히히</td>
        <td>2014-05-06</td>
      </tr>
    </tbody>
  </table>
  </div>
  <c:if test="${level == 1}"> <!-- 로그인 안한 사람/ 한 사람 구분 => level -->
	  <div class="mt-5">
		  <h2>이벤트</h2>
	  <p>이곳은 이벤트가 보이는 곳입니다.</p>            
	  <table class="table">
	    <thead>
	      <tr>
	        <th>Firstname</th>
	        <th>Lastname</th>
	        <th>Email</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>John</td>
	        <td>Doe</td>
	        <td>john@example.com</td>
	      </tr>
	      <tr>
	        <td>Mary</td>
	        <td>Moe</td>
	        <td>mary@example.com</td>
	      </tr>
	      <tr>
	        <td>July</td>
	        <td>Dooley</td>
	        <td>july@example.com</td>
	      </tr>
	    </tbody>
	  </table>
		</div>
	</c:if>
	<c:if test="${level != 1}">
		<div class="mt-5">
			<table class="table table-borderless" style="height: 100%">
				<tr>
					<td><b>동아리가 처음이신가요?</b></td>
					<td><a href="#" >동아리소개보기</a></td>
				</tr>
				<tr>
					<td>
						<p><b>동아리에 가입하시겠습니까?</b></p>
					</td>
					<td><a href="Join.user" >동아리가입하기</a></td>
				</tr>
				<tr>
					<td><b>동아리원이신가요?</b></td>
					<td><a href="Login.user">로그인하기</a></td>
				</tr>
			</table>
		</div>
	</c:if>
</div>
<c:if test="${level == 1}">
	<!-- 캘린더 -->
	<div class="container">
		<div class="containerDiv">
			<div class="mt-5" >
				여기는 일정입니다. <!-- 일정은 참 힘들다 -->
		  </div>
			<div class ="mt-5">
				여기는 BEST 클라이머를 뽑는 곳입니다. <!-- 회원을 받고 할것 -->
			</div>
		</div>
	</div>
</c:if>
</div>
</div>
<p><br/></p>
<%@ include file="/include/footer.jsp"  %>
</body>
</html>

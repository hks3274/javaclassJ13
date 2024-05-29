<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@ include file = "/include/bs5.jsp" %>
	<title>로그인창</title>
	<style >
	.loginForm {
		background-color: #fff;
		display: flex;
  	justify-content: center;
  	align-items: center;
	}
	
	form {
		border-radius: 30px;
		color : #000;
		border: 2px solid #90775D;
	}
	
	form a:last-child {
		  margin-right: 0;
		}
		
		form a::before {
		  content: '';
		  position: absolute;
		  bottom: -1px;
		  left: 50%;
		  width: 0;
		  height: 3px;
		  background-color: #792626;
		  transition: width 0.2s ease-in-out, left 0.2s ease-in-out;
		}
		
		form a:hover::before {
		  width: 100%;
		  left: 0;
		}


		form a{
		  text-decoration: none;
		  color: #000;
		  margin-right: 4rem;
		  font-size: 0.9rem;
		  font-weight: 600;
		  position: relative;
		  padding: 0.5rem 0;
		}
		
		.loginButton {
			height : 50px; 
			border-radius: 5px;
			background-color : #90775D;
			color: #fff;
			border: 0;
		}
		/* PC버전 */
		@media (min-width: 992px) {
			.loginForm {
				margin-top : 200px;
				height: 600px;  
			}
			
			form {
				width: 600px;
				height: 100%; 
			}
			
			
		}
		
		
		
	</style>
	
	
</head>
<body  class="d-flex flex-column min-vh-100">
<p><br/></p>
<div class = "container" >
<%@ include file="/include/header.jsp" %>
<p><br/><br/></p>
	<div class="loginForm container mt-5" >
		 <form name="myfrom" method="post" action="LoginInput.user" class="p-5">
		 	<h2 class="text-center mt-5">로그인</h2>
	    <div class="mb-3 mt-3">
	      <label for="studentId"><b>학번</b></label>
	      <input type="text" class="form-control" id="studentId" placeholder="예)2020161001" required name="studentId" >
	    </div>
	    <div class="mb-3">
	      <label for="pwd"><b>비밀번호</b></label>
	      <input type="password" class="form-control" id="pwd" required placeholder="초기설정: 전화번호 뒷자리(4자리)" name="pwd">
	    </div>
	    <div class="form-check mb-3" >
	      <label class="form-check-label">
	        <input class="form-check-input" type="checkbox" name="remember"> 아이디/비번 저장
	      </label>
	    </div>
	    <br/>
	    <div class="mb-3 mt-3" style="text-align: center">
	    	<input type="submit" class="loginButton form-control" value="로그인하기"/>
	    </div>
	    <br/>
	    <div class="mb-3 mt-3 text-center" >
	    	동아리에 가입하세요!&nbsp; <a href="Join.user">동아리가입하기</a>
	    </div>
	  </form>
	</div>
</div>
<p><br/></p>
<%@ include file="/include/footer.jsp"  %>
</body>
</html>
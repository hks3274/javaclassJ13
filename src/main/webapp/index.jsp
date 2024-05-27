<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main창</title>
    <%@ include file = "/include/bs4.jsp" %>
    <style>
    	#logo {
    		
    		font-size: 30px;
    	}
    
    </style>
</head>
<body>
<p><br/></p>
<div class = "container">
		<div>
			<span id="logo">가보자GO</span>
			<span >소개</span>
			<span>로그인</span>
			<span>메뉴</span>
		</div>
</div>
<p><br/></p>	    
</body>
</html>
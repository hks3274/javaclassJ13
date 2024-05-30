<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@ include file = "/include/bs5.jsp" %>
	<title>회원가입창</title>
	<script>
    'use strict';
	
    //경험 "있음"에 클릭시 경험기간을 묻는 칸이 나옴 ==> 그렇게 중요하지 않은 칸이라서 딱히 상관없음
    $(document).ready(function() {
        $('input[name="expCheck"]').on('click', function() {
            var expCheck = $('input[name="expCheck"]:checked').val();
            if (expCheck === 'OK') {
                $('#expTimeDiv').show();
            } else {
                $('#expTimeDiv').hide();
            }
        });

        // 페이지 로드 시 expTime 초기 상태 설정
        var expCheck = $('input[name="expCheck"]:checked').val();
        if (expCheck === 'OK') {
            $('#expTimeDiv').show();
        } else {
            $('#expTimeDiv').hide();
        }
    });

    function joinCheck() {
        var name = document.getElementById("name").value;
        var studentId = document.getElementById("studentId").value;
        var phoneFirstNum = document.getElementById("phoneFirstNum").value;
        var phoneMiddleNum = document.getElementById("phoneMiddleNum").value;
        var phoneLastNum = document.getElementById("lastNum").value;
        var phoneNum = phoneFirstNum + "-" + phoneMiddleNum + "-" + phoneLastNum;

        console.log("Name:", name);
        console.log("Student Number:", studentId);
        console.log("Phone Number:", phoneNum);

        // 정규식
        /*이름*/
        var regName = /^[가-힣a-zA-Z]{2,15}$/;
        /*학번*/
        var regSNum = /^[0-9]{10}$/;
        /*전화번호*/
        var regPhoneNum = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
        
        
        if (!regName.test(name)) {
            alert("이름을 올바르게 입력하세요.");
            return false;
        }
        if (!regSNum.test(studentId)) {
            alert("학번을 올바르게 입력하세요.");
            return false;
        }
        if (!regPhoneNum.test(phoneNum)) {
            alert("전화번호를 올바르게 입력하세요.");
            return false;
        }
        document.getElementById("phoneNumAll").value = phoneNum;

        /*학과체크(
				①	학번은 입학연도 4자리, 학위 구분 1자리 학부(계열 및 과)구분 2자리, 성명순번 3자리 등 10자로 구분한다.
				②	학위별 구분 번호는 학사과정 1, 석사과정 2로 각각 부여한다.
				③	학부(과) 구분번호는 다음과 같이 한다.		
					1.	기계공학부 : 20
					2.	메카트로닉스공학부 : 40
					3.	전기ㆍ전자ㆍ통신공학부 : 61
					4.	컴퓨터공학부 : 36
					5.	디자인공학과 : 51
					6.	건축공학부 : 72
					7.	에너지ㆍ신소재ㆍ화학공학부 : 74
					8.	산업경영학부 : 80
					9.	고용서비스정책학과 : 85
				)
				*/
				var department = document.getElementById("department").value;
				if (studentId.toString().substring(5, 7) != department) {
				    alert("학번과 학과정보가 일치하지 않습니다.");
				    return false;
				}
				
				/* 경험있는 사람 시간 분류 (만약에 경험없음이면 0 있으면 정보 가져오기) */
				var expCheck = $('input[name="expCheck"]:checked').val();
				if(expCheck == "NO") {
					document.getElementById("expTime").value = 0;
				}
				
				
        document.getElementById("pwd").value = phoneLastNum;
    
    		myform.submit();
    }
</script>
	<style >
	
	.joinForm {
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
			.joinForm {
				height: 1000px;  
			}
			
			form {
				width: 700px;
				height: 100%; 
			}
			
			
		}
		
	</style>
	
</head>
<body class="d-flex flex-column min-vh-100">
<p><br/></p>
<div class = "container">
<%@ include file="/include/header.jsp" %>	
	<p><br/><br/></p>
	<div class="joinForm container mt-5" >
		 <form name="myform" method="post" action="JoinInput.user" class="p-5">
		 	<h2 class="text-center mt-5">회원가입</h2>
		 	<p class="text-right">안녕하십니까? 한기대 클라이밍 동아리 <b>STEPUP</b>입니다.<br/> 저희 동아리는 처음 가입하실 때 <u>가입비 2만원</u>을 받고 있습니다.<br/>그래서 체험을 하시고 가입을 하시는 것을 추천드립니다.<br/>(체험은 무료로 진행됩니다)<br/>체험을 원하시는 분들은 밑의 체험여부에 <font color="red">체크</font>를 해주시길 바랍니다.<br/>(가입은 체험 후 혹은 회장의 확인 후 시켜드리겠습니다.)</p>
		 	<br/>
	    <div class="mb-3 mt-3">
	      <label for="name"><b>이름</b></label>
	      <input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요" required name="name" >
	    </div>
	    <div class="mb-3 mt-3">
	      <label for="studentId"><b>학번</b></label>
	      <input type="text" class="form-control" id="studentId" placeholder="ex) 2020161001" required name="studentId" >
	    </div>
	    <div class="mb-3 mt-3">
	      <label for="studentId"><b>학과</b></label>
	       <select name="department" id="department">
					<option value="20">기계공학부</option>
			    <option value="40">메카트로닉스공학부</option>
			    <option value="61">전기ㆍ전자ㆍ통신공학부</option>
			    <option value="36">컴퓨터공학부</option>
			    <option value="51">디자인공학전공</option>
			    <option value="72">건축공학전공</option>
			    <option value="74">에너지ㆍ신소재ㆍ화학공학부</option>
			    <option value="80">산업경영학부</option>
			    <option value="85">고용서비스정책학과</option>
			   </select>
	    </div>
	    <div class="mb-3 mt-3">
	      <label for="phoneMiddleNum"><b>핸드폰번호</b></label>
	    	 <select name="phoneFirstNum" id="phoneFirstNum">
					<option value="010">010</option>
			    <option value="011">011</option>
			    <option value="016">016</option>
			    <option value="017">017</option>
			    <option value="019">019</option>
			  </select>
			  <span> - </span>
			  <input type="text" id="phoneMiddleNum" name="phoneMiddleNum"  style="width: 60px; border-radius: 5px; border-color: #eee;" required/>
			  <span> - </span>
			  <input type="text" id="lastNum" name="lastNum" style="width: 60px; border-radius: 5px; border-color: #eee;" required/>
	    </div>
	    <div class="mb-3">
	      <label><b>클라이밍 경험여부</b></label>
	      <input type="radio" name="expCheck" value="OK">있음
	      <input type="radio" name="expCheck" value="NO" checked>없음
	    </div>
		    <div class="mb-3 mt-3" id="expTimeDiv">
		      <label for="expTime"><b>경험이 있다면 몇 개월하셨나요?</b></label>
		      <input type="number" class="form-control" id="expTime" placeholder="ex) 1년->12개월 , 4년->48개월" name="expTime" />
		    </div>
	    <div class="mb-3 mt-3">
	      <label><b>체험하시겠습니까?</b></label>
	      <br/>
	      <input type="radio" name="expOk" value="OK" checked> 체험 신청하기 <br/>
	      <input type="radio" name="expOk" value="NO"> 체험 안하고 가입하기
	    </div>
	    <br/>
	    <div class="mb-3 mt-3" style="text-align: center">
	    	<input type="button" onclick="joinCheck()"class="loginButton form-control" value="가입하기"/>
	    </div>
	    <br/>
	    <input type="hidden" id="pwd" name="pwd" />
	    <input type="hidden" id="phoneNumAll" name="phoneNumAll" />
	  </form>
	</div>
</div>
<p><br/><br/></p>
<%@ include file="/include/footer.jsp"  %>
</body>
</html>
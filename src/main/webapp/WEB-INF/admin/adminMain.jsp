<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자창</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${ctp}/css/admin.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
            	관리자님 환영합니다
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">회원관리</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">일정관리</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">입출금관리</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">활동기록</a></li>
                    <li class="nav-item"><a class="nav-link " href="${ctp}/Main">돌아가기</a></li>

                </ul>
            </div>
        </nav>
        <!-- Page Content-->
        <div class="container-fluid p-0">
            <!-- About-->
          <section class="resume-section" id="about" >
            <div class="resume-section-content">
            	
            </div>
          </section>
          <hr class="m-0" />
          <!-- Experience-->
          <section class="resume-section" id="experience">
              <div class="resume-section-content">
                  
              </div>
          </section>
          <hr class="m-0" />
          <!-- Education-->
          <section class="resume-section" id="education">
              <div class="resume-section-content">
                  
              </div>
          </section>
          <hr class="m-0" />
          <!-- Skills-->
          <section class="resume-section" id="skills">
              <div class="resume-section-content">
                 
              </div>
          </section>
          <hr class="m-0" />
          <!-- Interests-->
          <section class="resume-section" id="interests">
              <div class="resume-section-content">
              
               </div>
          </section>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

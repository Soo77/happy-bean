 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <title>HappyBean</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


 <%--favicon--%>
    <link rel="shortcut icon" href="/images/bean-icon.ico" type="image/x-icon"
    <link rel="icon" href="/images/bean-icon.ico" type="image/x-icon">

 <%--로고(햅삐빈) 웹폰트--%>
    <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">

 <%--원래 있던 웹폰트--%>
    <link href="https://fonts.googleapis.com/css?family=Mansalva|Roboto&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/fonts/main/icomoon/style.css">

    <link rel="stylesheet" href="/css/main/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main/animate.min.css">
    <link rel="stylesheet" href="/css/main/jquery.fancybox.min.css">
    <link rel="stylesheet" href="/css/main/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/main/owl.theme.default.min.css">
    <link rel="stylesheet" href="/fonts/main/flaticon-1/font/flaticon.css">
    <link rel="stylesheet" href="/css/main/aos.css?after">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="/css/main/main-style.css?after">





<style type="text/css">
.site-logo-korean {
	font-family: 'Jeju Gothic', sans-serif;
	font-size : 30px;
	}
.nanumsquare {
  font-family: 'Nanum';
  src:url("/../../fonts/common/Nanum_Gothic/NanumGothic-Regular.ttf");
}
</style>

 <style type="text/css">
   @Font-face {
     font-family: 'Nanum';
     src: url("../../fonts/common/Nanum_Gothic/NanumGothic-Regular.ttf");
   }
 </style>



  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>





      <div class="bg-primary py-3 top-bar shadow d-none d-md-block">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-md-left pl-0">
              <a href="#" class=" pr-3 pl-0">Home</a>
              <a href="#" class="p-3">Events</a>
              <a href="#" class="p-3">Become A Volunteer</a>
            </div>
            <div class="col-md-6 text-md-right">
              <c:if test="${empty loginUser}">
                <a href="../auth/signInForm" class="p-3">Login</a>
                <a href="../auth/signUpForm" class="p-3">Join</a>
              </c:if>
              <c:if test="${not empty loginUser}">
                <a href="#" class="nanumsquare">${loginUser.name} 님 </a>
                <a href="../auth/logout" class="p-3">Logout</a>
              </c:if>
            <%--<a href="../auth/signInForm" class="p-3">Login</a>--%>
              <a href="#" class="p-2"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2"><span class="icon-facebook"></span></a>
            </div>
          </div>
        </div>
      </div>
      <header class="site-navbar site-navbar-target bg-secondary shadow" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">


            <div class="site-logo-korean">
              <a href="../main/index" class="text-white">햅삐빈</a>
            </div>


            <nav class="site-navigation text-left ml-auto " role="navigation">
              <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                <li class="active"><a href="index.html" class="nav-link">Home</a></li>
                <li><a href="about.html" class="nav-link">About Us</a></li>
                <li><a href="../donation/list" class="">기부</a></li>
                <li><a href="blog.html" class="nav-link">Blog</a></li>
                <li><a href="contact.html" class="nav-link">Contact</a></li>
              </ul>
            </nav>


            <div class="ml-auto toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span class="icon-menu h3 text-white"></span></a></div>



          </div>
        </div>

      </header>
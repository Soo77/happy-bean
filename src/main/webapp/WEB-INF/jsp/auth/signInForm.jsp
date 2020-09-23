<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인 - 햅삐빈</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/auth/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css/auth/auth-style.css">
</head>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<jsp:include page="../header.jsp" />

<style type="text/css">
@Font-face{
    font-family: 'Nanum';
    src:url("../../../fonts/common/Nanum_Gothic/NanumGothic-Regular.ttf");

}
</style>



<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="auth-container">
                <div class="signup-content">
                    <form action='../auth/login' name="userInfo" method='post' >
                        <div class="form-title" style="font-family: Nanum; font-size: 30px;">로그인</div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="id" id="id" placeholder="아이디" required="" autofocus=""/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="비밀번호" required="" autofocus=""/>
                            <!--<span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>-->
                        </div>
                        <div class="form-group">
                            <button id="loginBtn" class="form-submit">로그인</button>
                            <%--<input type="submit" name="submit" id="submitBtn" class="form-submit" value="로그인">--%>
                        </div>
                    </form>

                </div>
            </div>
        </section>

    </div>

    <jsp:include page="../footer.jsp" />
    <!-- JS -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/js/auth/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>



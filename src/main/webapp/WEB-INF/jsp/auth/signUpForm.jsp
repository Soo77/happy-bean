<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/auth/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css/auth/auth-style.css">
</head>
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
                    <form action='../member/add' name="userInfo" method="POST" id="signup-form" class="signup-form" enctype='multipart/form-data' onsubmit='return submitBtn()'>
                        <div class="form-title" style="font-family: Nanum; font-size: 30px;">회원가입</div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="id" id="id" placeholder="아이디" required="" autofocus=""/>
                        </div>
                        <div class="form-group">
                             <input type="text" class="form-input" name="name" id="name" placeholder="이름" required="" autofocus=""/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="이메일" required="" autofocus=""/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="비밀번호" required="" autofocus=""/>
                            <!--<span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>-->
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="re_password" id="re_password" placeholder="비밀번호 재확인" required="" autofocus=""/>
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-input" name="file" id="file" placeholder="프로필 사진"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span> <a href="#" class="term-service">약관</a> 동의</label>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submitBtn" class="form-submit" value="가입하기"/>


                    </form>
                    <p class="loginhere">
                        이미 가입되어있으신가요? <a href="#" class="loginhere-link" style="font-family: Nanum;">로그인하기</a>
                    </p>
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

<!-- 회원가입시 특수문자 및 글자수 확인 -->
<script>
  $("#submitBtn").click(function(){
	  submitBtn();
  });

  function submitBtn(){

      var valid = true;
	  var id = document.getElementById("id").value;
	  var pw = document.getElementById("password").value;
	  var repw = document.getElementById("re_password").value;
	  if(Number(id)){
          alert("아이디는 숫자만 사용할 수 없습니다.");
          valid = false;
      }
/*      if(!/^[a-zA-Z]/.test(id)){
          alert("아이디는 영문으로 시작해야 합니다.");
          valid = false;
      }*/

      var idRegExp = /^[A-Za-z]{1}[a-zA-z0-9]{3,12}$/; //아이디 유효성 검사
      if (!idRegExp.test(id)) {
          alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
          valid = false;
      }
      var pwRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
      if (!pwRegExp.test(pw)) {
          alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
          valid = false;
      }

      if(pw !== repw) {
          alert("두 비밀번호가 같지 않습니다.");
          valid = false;
      }

      if (valid) {
      console.log("valid는 true~");
         return true;
      } else {
      event.preventDefault();
         return false;
      }
  }
</script>
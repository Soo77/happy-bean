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
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="auth-container">
                <div class="signup-content">
                    <form action='../member/add' name="userInfo" method="POST" id="signup-form" class="signup-form" enctype='multipart/form-data' onsubmit='return submitBtn()'>
                        <h2 class="form-title">Create account</h2>
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
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submitBtn" class="form-submit" value="회원가입"/>
                        </div>


                    </form>
                    <p class="loginhere">
                        Have already an account ? <a href="#" class="loginhere-link">Login here</a>
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
	  if(Number(id)){
	      console.log("id 숫자 체크~");
          alert("아이디는 숫자만 사용할 수 없습니다.");
          valid = false;
          if(valid) {
          console.log("valid는 true~");
          } else {
          console.log("valid는 false~");
          }
      }
      if(!/^[a-zA-Z]/.test(id)){
          alert("아이디는 영문으로 시작해야 합니다.");
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
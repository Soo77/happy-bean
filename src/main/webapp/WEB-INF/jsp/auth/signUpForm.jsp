<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입 - 햅삐빈</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/auth/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css/auth/auth-style.css">
</head>
<jsp:include page="../header.jsp"/>


<body>

<div class="main">

    <section class="signup">
        <!-- <img src="images/signup-bg.jpg" alt=""> -->
        <div class="auth-container">
            <div class="signup-content">
                <form action='../member/add' name="userInfo" method="POST" id="signup-form" class="signup-form"
                      enctype='multipart/form-data' onsubmit='return checkValue()'>
                    <div class="form-title" style="font-family: Nanum; font-size: 30px;">회원가입</div>
                    <div class="auth-form-group">
                        <div class="input-group mb-3">
                            <div style="float: left; width: 80%">
                                <input type="text" class="form-input" name="id" id="id" placeholder="아이디"
                                       onkeydown="inputIdChk()" required="" autofocus="" aria-describedby="checkID"/>
                            </div>
                            <div class="input-group-append">
                                <button class="form-submit nanumsquare" type="button" id="checkID" onclick="openIdChk()">중복확인</button>
                            </div>
                        </div>

                        <%--<input type="button" value="중복확인" onclick="openIdChk()">--%>
                        <input type="hidden" name="idDuplication" value="idUncheck">
                    </div>
                    <div class="auth-form-group">
                        <input type="text" class="form-input" name="name" id="name" placeholder="이름" required=""
                               autofocus=""/>
                    </div>
                    <div class="auth-form-group">
                        <input type="email" class="form-input" name="email" id="email" placeholder="이메일" required=""
                               autofocus=""/>
                    </div>
                    <div class="auth-form-group">
                        <input type="password" class="form-input" name="password" id="password" placeholder="비밀번호"
                               required="" autofocus=""/>
                        <!--<span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>-->
                    </div>
                    <div class="auth-form-group">
                        <input type="password" class="form-input" name="re_password" id="re_password"
                               placeholder="비밀번호 재확인" required="" autofocus=""/>
                    </div>
                    <div class="auth-form-group">
                        <input type="file" class="form-input" name="file" id="file" placeholder="프로필 사진"/>
                    </div>
                    <div class="auth-form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                        <label for="agree-term" class="label-agree-term"><span><span></span></span> <a href="#" class="term-service">약관</a> 동의</label>
                    </div>
                    <div class="auth-form-group">
                        <input type="submit" name="submit" id="submitBtn" class="form-submit " value="가입하기"/>


                </form>
                <p class="loginhere">
                    이미 가입되어있으신가요? <a href="/auth/signInForm" class="loginhere-link" style="font-family: Nanum;">로그인하기</a>
                </p>
            </div>
        </div>
    </section>

</div>

<jsp:include page="../footer.jsp"/>
<!-- JS -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/js/auth/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>

<!-- 회원가입시 특수문자 및 글자수 확인 -->
<script>
    /* 회원가입 전 입력란 확인 */
    function checkValue() {
        var form = document.userInfo;

        if (Number(form.id.value)) {
            alert("아이디는 숫자만 사용할 수 없습니다.");
            return false;
        }
        var idRegExp = /^[A-Za-z]{1}[a-zA-z0-9]{3,12}$/; //아이디 유효성 검사
        if (!idRegExp.test(form.id.value)) {
            alert("아이디는 영문으로 시작해야하고, 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
            return false;
        }
        if (form.idDuplication.value != "idCheck") {
            alert("아이디 중복체크를 해주세요.");
            return false;
        }
        var pwRegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
        if (!pwRegExp.test(form.password.value)) {
            alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
            return false;
        }
        if (form.password.value !== form.re_password.value) {
            alert("두 비밀번호가 같지 않습니다.");
            return false;
        }
    }

    /* 아이디 중복체크 클릭시 */
    function openIdChk() {

        window.name = "parentForm";
        window.open("idCheckForm",
            "chkForm", "width=500, height=300, resizable = no, scrollbars = no");
    }

    /*// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
    // 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
    // 다시 중복체크를 하도록 한다.*/
    function inputIdChk() {
        document.userInfo.idDuplication.value = "idUncheck";
    }


</script>
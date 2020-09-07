<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>회원 가입</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>

<div id='content'>
<h1>회원 가입</h1>
<form action='add' method='post' enctype='multipart/form-data'>
    아이디: <input type='text' name='id'><br>
    이름: <input type='text' name='name'><br>
    이메일: <input type='text' name='email'><br>
    암호: <input type='text' name='password'><br>
    <!--사진: <input type='file' name='photo'><br>-->
<input type="submit" value="회원 가입"/>
</form>
</div>


</body>
</html>
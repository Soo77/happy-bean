<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
  <title>회원 목록</title>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>

<div id='content'>
  <h1>회원 목록</h1>

  <a href='../auth/signUpForm'>회원가입</a><br>

  <table class='table table-hover'>
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>기관명</th>
      <th>구분코드</th>
      <th>내용</th>
      <th>목표금액</th>
      <th>모여진금액</th>
      <th>시작날</th>
      <th>종료날</th>
      <th>사업대상</th>
      <th>대상수</th>
      <th>기대효과</th>
      <th>썸네일</th>
    </tr>
    <c:forEach items="${donations}" var="donation">
      <tr>
        <td>${donation.no}</td>
        <td>${donation.name}</td>
        <td>${donation.orgnName}</td>
        <td>${donation.classifyCode}</td>
        <td><p style="white-space: pre-line;">${donation.content}</p></td>
        <td>${donation.targetAmount}</td>
        <td>${donation.totalAmount}</td>
        <td>${donation.startDate}</td>
        <td>${donation.endDate}</td>
        <td>${donation.target}</td>
        <td>${donation.targetNumber}</td>
        <td>${donation.effect}</td>
        <td>${donation.thumbnail}</td>
      </tr>
    </c:forEach>
  </table>
  <form action='search'>
    검색어: <input type='text' name='keyword'>
    <button>검색</button>
  </form>
</div>


<td>글내용</td>
<td><textarea rows="10" cols="50" name="content-board" class="form-control"></textarea></td>

<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>

<script>
  //CKEDITOR 적용
  CKEDITOR.replace('content-board', {

    width:'100%',
    height:'350'

  });

</script>

</body>


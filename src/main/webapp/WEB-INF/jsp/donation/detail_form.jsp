<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">


<jsp:include page="../header.jsp"/>
   
    
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay" style="background-image: url('/../../../images/main/hero_2.jpg')">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 text-center">
              <span class="d-block mb-3 text-white" data-aos="fade-up">Oct 09, 2019 <span class="mx-2 text-primary">&bullet;</span> by James Miller</span>
                <h1 class="mb-4 text-cursive h1" data-aos="fade-up" data-aos-delay="100">Far far away, behind the word mountains</h1>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7 mr-auto blog-content">

              <!-- END comment-list -->

              <div class="comment-form-wrap">
                <h3 class="form-title" style="font-family: Nanum; font-size: 30px;">기부 모금함 등록하기</h3>
                <form action="update" class="pt-5" method="POST" id="signup-form"
                      enctype='multipart/form-data'>
                  <div class="form-group">
                    <label for="name">모금함 제목</label>
                    <input type="text" name="name" class="form-control" id="name" value="${donation.name}">
                  </div>
                  <div class="form-group pt-3">
                    <label for="orgnName">모금단체명</label>
                    <input type="text" name="orgnName" class="form-control" id="orgnName" value="${donation.orgnName}">
                  </div>
                  <div class="form-group pt-3">
                    <label for="classSelect">모금분야 선택</label>
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <label class="input-group-text" for="classSelect">구분</label>
                      </div>
                      <select class="custom-select form-control" name="classifyCode" id="classSelect" disabled="disabled">
                        <option selected>선택하기...</option>
                        <option value="D02001">아동·청소년</option>
                        <option value="D02002">어르신</option>
                        <option value="D02003">동물</option>
                        <option value="D02004">환경</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group pt-3">
                    <label for="donacontents">모금함 소개글</label>
                    <textarea name="donaContent" id="donacontents" cols="30" rows="10" class="form-control">${donation.donaContent}</textarea>
                  </div>
                  <div class="form-group pt-3">
                    <label for="targetAmount">목표 금액</label>
                    <input type="text" name="targetAmount" class="form-control" id="targetAmount" value="${donation.targetAmount}">
                  </div>
                  <div class="form-group pt-3">
                    <label for="sdt">사업시작일</label>
                    <input max="9999-12-31" name="startDate" id="sdt" type="date" class="form-control" placeholder="Regular" value="${donation.startDate}">
                  </div>
                  <div class="form-group pt-3">
                    <label for="edt">사업종료일</label>
                    <input max="9999-12-31" name="endDate" id="edt" type="date" class="form-control" placeholder="Regular" value="${donation.endDate}">
                  </div>
                  <%--<div class="form-group pt-3">
                    <label for="file">썸네일 사진</label>
                    <input type="file" name="file" class="form-control-file" id="file" aria-describedby="inputGroupFileAddon01" value="${donation.thumbnail}">
                  </div>--%>
                  <%-- form 입력란 끝 --%>

                  <div class="form-group pt-3">
                    <input type="submit" value="update" class="btn btn-primary btn-md text-white">
                  </div>

                </form>
              </div>

          </div>
          <div class="col-md-4 sidebar">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">Creatives <span>(12)</span></a></li>
                <li><a href="#">News <span>(22)</span></a></li>
                <li><a href="#">Design <span>(37)</span></a></li>
                <li><a href="#">HTML <span>(42)</span></a></li>
                <li><a href="#">Web Development <span>(14)</span></a></li>
              </div>
            </div>
            <div class="sidebar-box">
              <img src="/../../../images/main/person_1.jpg" alt="Free Website Template by Free-Template.co" class="img-fluid mb-4 w-50 rounded-circle">
              <h3 class="text-black">About The Author</h3>
              <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
              <p><a href="#" class="btn btn-primary btn-md text-white">Read More</a></p>
            </div>

            <div class="sidebar-box">
              <h3 class="text-black">Paragraph</h3>
              <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

  <jsp:include page="../footer.jsp" />

    </div>

<link rel="stylesheet" href="/bs-datepicker/css/datepicker.css">
<script src="/bs-datepicker/js/bootstrap-datepicker.js"></script>
<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>

<script>
  //CKEDITOR 적용
  CKEDITOR.replace('donaContent', {

    width:'100%',
    height:'350'

  });

</script>

<script>
  $('#datepicker .input-date').datepicker({
    format: 'yyyy-mm-dd',
    endDate: 'today',
    todayHighlight: true
  }).on('changeDate', function(e) {
    return get_url_and_refresh_link();
  });
  $('#datepicker .input-date').datepicker('setDate', 'today');

</script>

  </body>

</html>

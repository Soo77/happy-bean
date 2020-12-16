<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Timestamp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.*"%>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta http-equiv="Content-Type" content="text/html;">
</head>

<jsp:include page="../header.jsp"/>

<button type="button" onclick="$('.css_test').toggle()">여러번 눌러보세용</button>

<div class="css_test">
  jQuery 공작소 toggle
</div>

<div class="ftco-blocks-cover-1">
  <div class="ftco-cover-1 overlay" style="background-image: url('/../../../images/main/branding_headline_background-1.jpg');">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-lg-6 text-center">
          <span class="d-block mb-3 text-white" data-aos="fade-up">카테고리>${donation.detailCode.detailCodeName} <span class="mx-2 text-primary">&bullet;</span> ${donation.name}</span>
          <h1 class="mb-4 text-cursive h1" data-aos="fade-up" data-aos-delay="100">Thank you for supporting our lifesaving work.</h1>
        </div>
        <%--<div class="box-92819">
          <h1 class="text-white mb-3">Donation</h1>
          <p class="lead text-white nanumsquare">카테고리>${donation.detailCode.detailCodeName} · 모금단체 ${donation.orgnName}<br>
            ${donation.name} </p>
          &lt;%&ndash;<span class="d-block mb-3  nanumsquare" data-aos="fade-up">카테고리>${donation.detailCode.detailCodeName}<span class="mx-2 text-white nanumsquare">&bullet;</span>모금단체 ${donation.orgnName}</span>
          <h1 class="mb-4 nanumsquare h1" data-aos="fade-up" data-aos-delay="100">${donation.name}</h1>&ndash;%&gt;
        </div>--%>
      </div>
    </div>
  </div>
</div>

<c:set value="${loginUser}" var="loginsession" />
<input value="${donation.no}"/>
<div class="pt-lg-5">

  <div class="container">

    <div class="row">
      <div class="col-md-7 mr-auto blog-content">

  <input type="hidden" class="form-control" name="loginsession" value="${loginsession}">
        <div>
          ${donation.donaContent}
        </div>

        <div class="pt-5">
          <p>Categories:  <a href="#">Design</a>, <a href="#">Events</a>  Tags: <a href="#">#html</a>, <a href="#">#trends</a></p>
        </div>


        <div class="pt-5">
          <%--<h3 class="mb-5">${countCmt} Comments</h3>
         <ul class="comment-list">--%>
           <div class="showCommentList"></div>
         <%--</ul>--%>
          <!-- END comment-list -->

          <div class="comment-form-wrap pt-5">
            <h3 class="mb-5">Leave a comment</h3>
            <form name="commentInsertForm">
              <input type="hidden" name="donaNo" value="${donation.no}" />
              <div class="form-group">
                <label for="commentContents">Message</label>
                <textarea name="commentContents" id="commentContents" rows="5" class="form-control" onclick='loginFirstbeforeCmt()'></textarea>
              </div>
              <div class="form-group" id="commentAdd">
                <%--<input type="submit" name="commentInsertBtn" value="Post Comment" class="btn btn-primary btn-md text-white">
              --%>

                  <button type="button" name="commentInsertBtn"
                          class="btn btn-primary btn-md text-white">등록</button>
              </div>

            </form>
          </div>
        </div>

      </div>
      <div class="col-md-4 sidebar">

          <div class="sidebar-box-detail">
          <div class="pb-3">
            <button type="button" class="btn btn-outline-success nanumsquare" onclick = 'alertModify()'>수정</button>
            <button type="button" class="btn btn-outline-danger nanumsquare" onclick = 'alertDelete()'>삭제</button>

          </div>
          <div class="cause shadow-sm">
            <input type="hidden" name="percentage" type="hidden" value="${donation.totalAmount div donation.targetAmount * 100}">
            <a class="cause-link d-block">
              <img src="/../../../upload/donation/thumbnail/${donation.thumbnail}" alt="Image" class="img-fluid-card">

              <div class="custom-progress-wrap">
                <c:choose>
                  <c:when test="${(donation.totalAmount div donation.targetAmount * 100) > 100}">
                    <span class="caption">100% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: 100%;"></div>
                    </div>
                  </c:when>
                  <c:otherwise>
                    <span class="caption"><fmt:formatNumber type = "percent" pattern = "###" value = "${donation.totalAmount div donation.targetAmount * 100}"/>% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: <fmt:formatNumber type = "number" pattern = "###" value = "${donation.totalAmount div donation.targetAmount * 100}"/>%;"></div>
                    </div>
                  </c:otherwise>
                </c:choose>

              </div>
            </a>

            <div class="px-3 pt-3 border-top-0 border border shadow-sm">
              <div class="nanumsquare pb-2">${donation.startDate} ~ ${donation.endDate}까지</div>

              <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
              <fmt:formatDate var="sDate" value="${toDay_C}" pattern="yyyy-MM-dd"/>
              <fmt:formatDate var="tDate" value="${donation.endDate}" pattern="yyyy-MM-dd"/>

              <fmt:parseDate value="${sDate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
              <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
              <fmt:parseDate value="${tDate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
              <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>

              <c:set value="${strDate - endDate }" var="dayDiff" />
              <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">${donation.detailCode.detailCodeName}</span>

              <c:choose>
                <c:when test="${dayDiff < 1 }">
                  <span class="ml-1 badge-warning py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">D${strDate - endDate}</span>
                </c:when>
                <c:otherwise>
                  <span class="ml-1 badge-secondary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">종료</span>
                </c:otherwise>
              </c:choose>
              <h3 class="mb-4 nanumsquare">${donation.name}</h3>
              <div class="border-top border-light border-bottom py-2 d-flex">
                <div class="pt-2">Donated</div>
                <div class="ml-auto" style="font-size:x-large"><strong class="nanumsquare"><fmt:formatNumber pattern="#,###" value = "${donation.totalAmount}"/>원</strong></div>
              </div>

              <div class="py-2 d-flex">
                <div class="ml-auto nanumsquare"><fmt:formatNumber pattern="#,###" value = "${donation.targetAmount}"/>원 목표</div>
              </div>

              <div class="py-4">
                <div class="d-flex align-items-center">
                  <img src="/../../../images/main/orgn1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                  <div class="nanumsquare">${donation.orgnName}</div>
                </div>
              </div>

              <c:if test="${dayDiff < 1 }">
                <form action="/donation/donate" name="donateForm" method="post" class="footer-suscribe-form"  onsubmit='return loginFirst()'>
                  <input type='hidden' name='no' id='no' value='${donation.no}'>

                  <input type='hidden' name='memberNo' id='memberNo' value='${loginUser.no}'>
                  <div class="input-group mb-3">
                    <input type="text" name="money" class="form-control rounded-0 border-secondary text-white bg-transparent" placeholder="금액을 입력하세요." aria-label="Enter Email" aria-describedby="button-addon2 " required="" autofocus="">
                    <div class="input-group-append">
                        <%--<button type="button" class="btn btn-primary text-white"  id="button-addon2">기부하기</button>--%>
                      <input type="submit" value="기부하기" class="btn btn-primary btn-md text-white" id="button-addon22" />
                    </div>
                  </div>
                </form>
              </c:if>
            </div>

          </div>


          <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
          <p></p>
        </div>
        마이해피머니: ${loginUser.money}
        ${loginUser.name}
        ${loginUser.no}
        ${loginUser.password}
        ${loginUser.email}
        ${loginUser.photo}
        ${loginUser.memberTypeCode}
        ${loginUser.registeredDate}


        <div class="sidebar-box">
          <h3 class="text-black">Paragraph</h3>
          <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
        </div>
      </div>
    </div>
  </div>
</div>


</div>


<jsp:include page="../footer.jsp" />





<%--<script>
  function loginFirst() {
    let session = '<%=(String)session.getAttribute("loginUser")%>';
    if (session == "null") {
      alert('로그인을 해주세요.');
      location.href = '../auth/signInForm';
      return false;
    }
  }
</script>--%>


<script>
  function loginFirstbeforeCmt() {
    let session = $('input[name=loginsession]').val();
    if (session == "") {
      if (confirm('로그인을 해주세요.')) {
          location.href = '../auth/signInForm';
          return false;
      }
    }
  }
</script>

<script>
  function alertDelete() {
    if (confirm("정말 삭제하시겠습니까??") == true){    //확인
      location.href = 'delete?no=${donation.no}';
    }else{   //취소
      return false;
    }
  }

  function alertModify() {
    if (confirm("정말 수정하시겠습니까??") == true){    //확인
      location.href = 'detail_form?no=${donation.no}';
    }else{   //취소
      return false;
    }
  }


</script>

<script>
  var donaNo = '${donation.no}';
  var countCmt = '${donation.countCmt}';

  // 댓글 등록 버튼 클릭시
  $('[name=commentInsertBtn]').click(function() {
    //문자열 내의 모든 공백 제거
    var commentContents = $("#commentContents").val().replace(/(\s*)/g, "");

    if (commentContents.length == 0) {
      alert("댓글을 입력하세요.");
    } else {
      var insertData = $('[name=commentInsertForm]').serialize();
      commentInsert(insertData);
    }
  });

  /*// 대댓글 등록 버튼 클릭시
  $('[name=replyAddBtn]').click(function() {
    //문자열 내의 모든 공백 제거
    var recommentContents = $('[name=recommentContents_' + commentNo + ']')
            .val().replace(/(\s*)/g, "");

    if (recommentContents.length == 0) {
      alert("댓글을 입력하세요.");
    } else {
      var replyInsertData = $('[name=recommentContents_' + commentNo + ']').serialize();
      recommentAddProc(commentNo, replyInsertData);
    }
  });*/

  /* 댓글 목록 */
  function showCommentList() {

    $.ajax({
      url : 'comment/list',
      type : 'get',
      data : { 'no' : ${donation.no},
                'cnt' : ${donation.countCmt}
      },
      success : function(data) {
        var count = Object.keys(data).length;

        let a = '';
        a += '<h3 class="mb-5">'+ count + ' Comments</h3>'
        a += '<ul class="comment-list">'
        $.each(
                data,
                function(key, value) {
                  a += '<li class="comment">';
                    if (value.parentCommentNo !== 0) {
                    a += '<ul  class="children">';
                      a += '<li class="comment">';
                  }
                  a += '<div class="vcard bio">';
                  if (value.parentCommentNo !== 0) {
                    a += 'ㄴ&ensp;<img src="/../../../upload/member/default.png" alt="Free Website Template by Free-Template.co">';
                  } else {
                    a += '<img src="/../../../upload/member/default.png" alt="Free Website Template by Free-Template.co">';
                  }
                  a += '</div>';
                  a += '<div    class="comment-body" id="eachComment">'
                  a += '<h3 class="nanumsquare">' + value.member.name + '</h3>'
                    a += '<div class="meta">'+ value.createDate + '</div>'

                    a += '<div class="commentUpdateAndDelete" id="commentUpdateAndDelete' + value.commentNo + '" style="float:right";>'
                    if (value.parentCommentNo == 0) {
                      a += '<button class="btn btn-outline-info btn-round btn-sm" type="button" onclick=$(".css_test' + value.commentNo +'").toggle(300);> 답글 </button>'
                    }
                    a += '<button class="btn btn-outline-primary btn-round btn-sm" id="commentUpdate" type="button" onclick="commentUpdate('
                        + value.commentNo
                        + ',\''
                        + value.content
                        + '\');"> 수정 </button>'
                    a += '<button class="btn btn-outline-danger btn-round btn-sm" id="commentDelete" type="button" onclick="commentDelete('
                        + value.commentNo
                        + ');"> 삭제 </button>'

                    a += '</div>'
                    a += '<div class="commentContents'+value.commentNo+'" style="word-break:break-all;font-size: larger;">&emsp;&emsp;&emsp;&emsp;'
                        + value.content + '</div>'


                  a += '</div>'
                  a += '</div>'
                  if (value.parentCommentNo !== 0) {
                    a += '</li>';
                    a += '</ul>';
                  }
                  a += '<form name="recommentInsertForm">'
                  a += '　'
                  a += '<input type="hidden" name="donaNo" value=\'${donation.no}\' />'
                  a += '<div class="css_test' + value.commentNo+ '" name="hi" style="display: none">'
                  a += '<textarea class="form-control" name="recommentContents_' + value.commentNo + '" rows="3" maxlength="300" onclick="loginFirstbeforeCmt()"></textarea>'
                  a += '<div class="row  float-right">';
                  a += '<div class="col complete pt-1"> <button type="button" name="replyAddBtn" class="btn btn-outline-success btn-round btn-sm" onclick="recommentAddProc('
                          + value.commentNo
                          + ');">등록</button>';
                  a += '</div></div>'
                  a += '</div>'
                  a += '</form>'
                  /*a += '<div class="replyArea">'
                  a += '<textarea class="replyCommentContents'+value.commentNo+'" rows="3" cols="20" maxlength="300" style="width:100%;"></textarea>';
                  a += '</div>'*/
                  a += '</li>'

                });
        a += '</ul>'
        $(".showCommentList").html(a);
      }
    });
  };

  //댓글 등록
  function commentInsert(insertData) {
    $.ajax({
      url : 'comment/add',
      type : 'post',
      data : insertData,
      success : function(data) {
        console.log(data);
        if (data == "") {
          showCommentList();
          $('[name=commentContents]').val('');
        }
      }
    });
  }

  //대댓글 등록
  function recommentAddProc(commentNo) {
    var recommentContents = $('[name=recommentContents_' + commentNo + ']')
            .val().replace(/(\s*)/g, "");
    console.log("@@@@@Contents:"+recommentContents);

    if (recommentContents.length == 0) {
      alert("댓글을 입력하세요.");
    } else {
      console.log(commentNo);

      $.ajax({
        url : 'comment/replyAdd',
        type : 'post',
        data : {
          'parentNo' : commentNo,
          'donaNo' : ${donation.no},
          'recommentContents' : $('[name=recommentContents_' + commentNo + ']').val()
        },
        success : function(data) {
          console.log("re:"+data);
          if (data == "") {
            showCommentList();
            $('[name=recommentContents_' + commentNo + ']').val('');
          }
        }
      });
    }
  }

  //댓글 수정 - 댓글 내용 출력을 input 폼으로 변경
  function commentUpdate(commentNo, commentContents) {
      document.querySelector('#commentUpdateAndDelete'+commentNo).style.display = 'none';
      var a = '';
      a += '<div class="row">';
      a += '<div class="col">';
      a += '<textarea class="form-control pl-2 commentUpdate" name="commentContents_'+commentNo+'" rows="3" cols="20" maxlength="300" style="width:100%;">' + commentContents + '</textarea>';
      a += '</div></div>';
      a += '<div class="row  float-right">';
      a += '<div class="col complete"> <button class="btn btn-outline-success btn-round btn-sm" type="button" onclick="commentUpdateProc('
          + commentNo + ');">수정완료</button>';
      a += '</div></div>';
      $('.commentContents' + commentNo).html(a);
  }



  //댓글 수정
  function commentUpdateProc(commentNo) {
      var updateContent = $('[name=commentContents_' + commentNo + ']')
          .val().replace(/(\s*)/g, "");

      console.log("updateContent:"+updateContent);

      if (updateContent.length == 0) {
          alert("댓글을 입력하세요.");
      } else {
        console.log(commentNo);
          $.ajax({
              url : 'comment/update',
              type : 'post',
              data : {
                  'commentContents' : $('[name=commentContents_' + commentNo + ']').val(),
                  'commentNo' : commentNo
              },
              success : function(data) {
                  console.log("update:" + data);
                  if (data == "")
                      showCommentList(donaNo);
              }
          });
      }
  }
  //댓글 삭제
  function commentDelete(commentNo) {
    console.log("뽑아보자:"+donaNo);
    if(confirm("삭제하시겠습니까?")) {
      $.ajax({
        url : 'comment/delete/' + commentNo,
        type : 'post',
        data : {
          'no' : donaNo
        },
        success : function(data) {
          console.log("delete:" + data);
          if (data == "")
            showCommentList(donaNo);
        }
      });
    }

  }

/*  //답글 등록창 열리게
  function openReplyArea() {
      var a = '';
      a += '<textarea name="commentContents" id="commentContents" rows="5" class="form-control" onclick="loginFirstbeforeCmt()"></textarea>';
      a += '<div class="row float-right">';
      a += '<div class="col complete"> <button class="btn btn-outline-success btn-round btn-sm" type="button" onclick="">답글등록</button>';
      a += '</div></div>';
      $("#replyAppend").html(a);
  }*/



  $(document).ready(function() {
    showCommentList();
  });



</script>


</html>






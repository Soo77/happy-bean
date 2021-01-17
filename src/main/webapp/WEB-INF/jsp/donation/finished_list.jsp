<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.*"%>

<!DOCTYPE html>
<html lang="ko">

<head>
</head>
<jsp:include page="../header.jsp"/>

<div class="owl-carousel-wrapper">



  <div class="box-92819">
    <h1 class="text-white mb-3">Donation</h1>
    <p class="lead text-white nanumsquare">일상의 작은 관심이 더 나은 세상을 만듭니다.<br>
      당신의 가치 있는 응원, 해피빈 기부로 전하세요. </p>
  </div>


  <div class="ftco-cover-1 overlay" style="background-image: url('/../../../images/main/branding_headline_background-1.jpg');"></div>

</div>


<div class="site-section">
  <div class="container">

    <div class="row mb-5 align-items-st">
      <div class="col-md-5">
        <div class="heading-20219 nanumsquare">
          <h2 class="title text-cursive mb-4">Featured Donation</h2>
          <p>일상의 작은 관심이 더 나은 세상을 만듭니다. 당신의 가치 있는 응원 해피빈 기부로 전하세요.</p>
          <p>국적과 인종, 이념, 종교, 성별 등과 상관 없이 도움을 필요로 하는 곳이 있다면 어디든지 달려가 도움의 손길을 전하는 '차별 없는 구호' 를 지향합니다. 이러한 정신에 따라 2차 대전의 패전국들과 중동, 중국, 극동의 한국까지 모두 기부를 통해  도움을 받을 수 있습니다. </p>
          <p>모든 이들에게 풍성한 삶을. 따뜻하고 아름다운 세상, 당신의 나눔으로 시작됩니다.</p>
          <p><a href="detail?no=${oneDonation.no}" class="btn btn-primary rounded-0 px-4">Donate Now</a></p>
        </div>
      </div>
      <%--큰 카드--%>
      <%--<c:forEach items="${oneDonation}" var="oneDonation">--%>
      <div class="col-md-7">
        <div class="cause shadow-sm">

          <a href="detail?no=${oneDonation.no}"  class="cause-link d-block">
            <img src="/../../../upload/donation/thumbnail/big5.jpg" alt="Image" class="img-fluid">
            <div class="custom-progress-wrap">
              <c:choose>
                <c:when test="${(oneDonation.totalAmount div oneDonation.targetAmount * 100) > 100}">
                  <span class="caption">100% complete</span>
                  <div class="custom-progress-inner">
                    <div class="custom-progress bg-primary" style="width: 100%;"></div>
                  </div>
                </c:when>
                <c:otherwise>
                  <span class="caption"><fmt:formatNumber type = "percent" pattern = "###" value = "${oneDonation.totalAmount div oneDonation.targetAmount * 100}"/>% complete</span>
                  <div class="custom-progress-inner">
                    <div class="custom-progress bg-primary" style="width: <fmt:formatNumber type = "number" pattern = "###" value = "${oneDonation.totalAmount div oneDonation.targetAmount * 100}"/>%;"></div>
                  </div>
                </c:otherwise>
              </c:choose>

            </div>
          </a>

          <%--지저분쓰한 날짜계산--%>
          <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
          <fmt:formatDate var="sDate" value="${toDay_C}" pattern="yyyy-MM-dd"/>
          <fmt:formatDate var="tDate" value="${oneDonation.endDate}" pattern="yyyy-MM-dd"/>
          <fmt:parseDate value="${sDate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
          <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
          <fmt:parseDate value="${tDate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
          <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
          <c:set value="${strDate - endDate }" var="dayDiffOfoneDonation" />
          <div class="px-3 pt-3 border-top-0 border border shadow-sm">
            <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">${oneDonation.detailCode.detailCodeName}</span>
            <span class="ml-1 badge-warning py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">D${dayDiffOfoneDonation}</span>
            <h3 class="mb-4 nanumsquare"><a href="detail?no=${oneDonation.no}">${oneDonation.name}</a></h3>
            <div class="border-top border-light border-bottom py-2 d-flex">
              <div>Donated</div>
              <div class="ml-auto"><strong class="nanumsquare"><fmt:formatNumber pattern="#,###" value = "${oneDonation.totalAmount}"/>원</strong></div>
            </div>

            <div class="py-4">
              <div class="d-flex align-items-center">
                <img src="/../../../images/main/orgn1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                <div class="nanumsquare">${oneDonation.orgnName}</div>
              </div>
            </div>
          </div>

        </div>
      </div>
      <%--</c:forEach>--%>
    </div>


    <div class="row">
      <c:forEach items="${finishedList}" var="finishedList"
                 begin="${finishedPagination.pageSize * (finishedPagination.curPage - 1)}"
                 end="${finishedPagination.pageSize * finishedPagination.curPage - 1}">

        <%--지저분쓰한 날짜계산--%>
        <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
        <fmt:formatDate var="sDate" value="${toDay_C}" pattern="yyyy-MM-dd"/>
        <fmt:formatDate var="tDate" value="${finishedList.endDate}" pattern="yyyy-MM-dd"/>
        <fmt:parseDate value="${sDate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
        <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
        <fmt:parseDate value="${tDate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
        <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
        <c:set value="${strDate - endDate }" var="dayDiff" />


        <div class="col-md-4">
          <div class="cause shadow-sm">
            <input type="hidden" name="percentage" type="hidden" value="${finishedList.totalAmount div finishedList.targetAmount * 100}">
            <a href="detail?no=${finishedList.no}" class="cause-link d-block">
              <img src="/../../../upload/finishedList/thumbnail/${finishedList.thumbnail}" alt="Image" class="img-fluid-card">

              <div class="custom-progress-wrap">
                <c:choose>
                  <c:when test="${(finishedList.totalAmount div finishedList.targetAmount * 100) > 100}">
                    <span class="caption">100% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: 100%;"></div>
                    </div>
                  </c:when>
                  <c:otherwise>
                    <span class="caption"><fmt:formatNumber type = "percent" pattern = "###" value = "${finishedList.totalAmount div finishedList.targetAmount * 100}"/>% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: <fmt:formatNumber type = "number" pattern = "###" value = "${finishedList.totalAmount div finishedList.targetAmount * 100}"/>%;"></div>
                    </div>
                  </c:otherwise>
                </c:choose>

              </div>
            </a>

            <div class="px-3 pt-3 border-top-0 border border shadow-sm">
              <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">${finishedList.detailCode.detailCodeName}</span>
              <span class="ml-1 badge-secondary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">종료</span>
              <h3 class="mb-4 nanumsquare"><a href="detail?no=${finishedList.no}">${finishedList.name}</a></h3>
              <div class="border-top border-light border-bottom py-2 d-flex">
                <div>Donated</div>
                <div class="ml-auto"><strong class="nanumsquare"><fmt:formatNumber pattern="#,###" value = "${finishedList.totalAmount}"/>원</strong></div>
              </div>

              <div class="py-4">
                <div class="d-flex align-items-center">
                  <img src="/../../../images/main/orgn1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                  <div class="nanumsquare">${finishedList.orgnName}</div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <%--요기--%>
      </c:forEach>

      <div class="col-12">
        <div class="finishedPage" id="finishedPage">
          <c:if test="${finishedPagination.curRange ne 1 }">
            <a href="#" onClick="finished_fn_paging(1);">[처음]</a>
          </c:if>
          <c:if test="${finishedPagination.curPage ne 1}">
            <a href="#" onClick="finished_fn_paging('${finishedPagination.prevPage }')">[이전]</a>
          </c:if>
          <c:forEach var="pageNum" begin="${finishedPagination.startPage }" end="${finishedPagination.endPage }">
            <c:choose>
              <c:when test="${pageNum eq  finishedPagination.curPage}">
                <span style="font-weight: bold;"><a href="#" onClick="finished_fn_paging('${pageNum }')">${pageNum }</a></span>
              </c:when>
              <c:otherwise>
                <a href="#" onClick="finished_fn_paging('${pageNum }')">${pageNum }</a>
              </c:otherwise>
            </c:choose>
          </c:forEach>
          <c:if test="${finishedPagination.curPage ne finishedPagination.pageCnt && finishedPagination.pageCnt > 0}">
            <a href="#" onClick="finished_fn_paging('${finishedPagination.nextPage }')">[다음]</a>
          </c:if>
          <c:if test="${finishedPagination.curRange ne finishedPagination.rangeCnt && finishedPagination.rangeCnt > 0}">
            <a href="#" onClick="finished_fn_paging('${finishedPagination.pageCnt }')">[끝]</a>
          </c:if>
        </div>

        <div>
          총 게시글 수 : ${finishedPagination.listCnt } /    총 페이지 수 : ${finishedPagination.pageCnt } / 현재 페이지 : ${finishedPagination.curPage } / 현재 블럭 : ${finishedPagination.curRange } / 총 블럭 수 : ${finishedPagination.rangeCnt }
          / 지금 안나오는애:  ${finishedPagination.pageSize * (finishedPagination.curPage - 1)} 얘랑 ${finishedPagination.pageSize * finishedPagination.curPage - 1} 얘
        </div>
      </div>




<div class="site-section">
  <div class="container">

    <div class="d-md-flex cta-20101 align-self-center bg-light p-5">
      <div class=""><h2 class="text-cursive">Helping the Homeless, Hungry, and Hurtings Children</h2></div>
      <div class="ml-auto"><a href="#" class="btn btn-primary">Donate Now</a></div>
    </div>

  </div>
</div>

<jsp:include page="../footer.jsp" />

</div>




<script>
  var percentVal = $('input[name=percentage]').val();
  //parseFloat(percentVal.toFixed(2));

  var resultVal = 0;
  if(percentVal > 100) {
    resultVal = 100;
  } else {
    resultVal = percentVal;
  }


</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
  function ongoing_fn_paging(curPage1) {
    location.href = "/donation/list?curPage1=" + curPage1;
  }

</script>

<script type="text/javascript">
  function finished_fn_paging(curPage) {
    location.href = "/donation/finished_list?curPage=" + curPage;
  }

</script>





</body>

</html>

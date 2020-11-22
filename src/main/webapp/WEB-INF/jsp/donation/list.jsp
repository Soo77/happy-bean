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




        <%--탭--%>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">진행중</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">종료</a>
          </li>
          <c:if test="${loginUser.memberTypeCode eq 'M01001'}">
            <li class="nav-item ml-auto">
              <button type="button" class="btn btn-outline-success" onclick = "location.href = 'form'" style="float: right;">모금함 등록하기</button>
            </li>
          </c:if>
        </ul>
        <div class="tab-content mt-5" id="myTabContent">
          <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="row">
              <c:forEach items="${donations}" var="donation">

                <%--지저분쓰한 날짜계산--%>
                <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
                <fmt:formatDate var="sDate" value="${toDay_C}" pattern="yyyy-MM-dd"/>
                <fmt:formatDate var="tDate" value="${donation.endDate}" pattern="yyyy-MM-dd"/>
                <fmt:parseDate value="${sDate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
                <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
                <fmt:parseDate value="${tDate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
                <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                <c:set value="${strDate - endDate }" var="dayDiff" />


                <c:if test="${dayDiff < 1 }">
                  <div class="col-md-4">
                    <div class="cause shadow-sm">
                      <input type="hidden" name="percentage" type="hidden" value="${donation.totalAmount div donation.targetAmount * 100}">
                      <a href="detail?no=${donation.no}" class="cause-link d-block">
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
                        <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">${donation.detailCode.detailCodeName}</span>
                        <span class="ml-1 badge-warning py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">D${strDate - endDate}</span>
                        <h3 class="mb-4 nanumsquare"><a href="detail?no=${donation.no}">${donation.name}</a></h3>
                        <div class="border-top border-light border-bottom py-2 d-flex">
                          <div>Donated</div>
                          <div class="ml-auto"><strong class="nanumsquare"><fmt:formatNumber pattern="#,###" value = "${donation.totalAmount}"/>원</strong></div>
                        </div>

                        <div class="py-4">
                          <div class="d-flex align-items-center">
                            <img src="/../../../images/main/orgn1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                            <div class="nanumsquare">${donation.orgnName}</div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                </c:if>
                <%--요기--%>
              </c:forEach>

              <div class="col-12">
                <span class="p-3">1</span>
                <a href="#" class="p-3">2</a>
                <a href="#" class="p-3">3</a>
                <a href="#" class="p-3">4</a>
              </div>



            </div>
          </div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="row">
              <c:forEach items="${donations}" var="donation">

                <%--지저분쓰한 날짜계산--%>
                <c:set var="toDay_C" value="<%=new java.util.Date()%>"/>
                <fmt:formatDate var="sDate" value="${toDay_C}" pattern="yyyy-MM-dd"/>
                <fmt:formatDate var="tDate" value="${donation.endDate}" pattern="yyyy-MM-dd"/>
                <fmt:parseDate value="${sDate}" var="strPlanDate" pattern="yyyy-MM-dd"/>
                <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
                <fmt:parseDate value="${tDate}" var="endPlanDate" pattern="yyyy-MM-dd"/>
                <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
                <c:set value="${strDate - endDate }" var="dayDiff" />


                <c:if test="${dayDiff >= 0 }">
                  <div class="col-md-4">
                    <div class="cause shadow-sm">
                      <input type="hidden" name="percentage" type="hidden" value="${donation.totalAmount div donation.targetAmount * 100}">
                      <a href="detail?no=${donation.no}" class="cause-link d-block">
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
                        <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">${donation.detailCode.detailCodeName}</span>
                        <span class="ml-1 badge-secondary py-1 small px-2 rounded mb-3 d-inline-block nanumsquare">종료</span>
                        <h3 class="mb-4 nanumsquare"><a href="#">${donation.name}</a></h3>
                        <div class="border-top border-light border-bottom py-2 d-flex">
                          <div>Donated</div>
                          <div class="ml-auto"><strong class="nanumsquare"><fmt:formatNumber pattern="#,###" value = "${donation.totalAmount}"/>원</strong></div>
                        </div>

                        <div class="py-4">
                          <div class="d-flex align-items-center">
                            <img src="/../../../images/main/orgn1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                            <div class="nanumsquare">${donation.orgnName}</div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                </c:if>
                <%--요기--%>
              </c:forEach>

              <div class="col-12">
                <span class="p-3">1</span>
                <a href="#" class="p-3">2</a>
                <a href="#" class="p-3">3</a>
                <a href="#" class="p-3">4</a>

                <c:if test="${loginUser.memberTypeCode eq 'M01001'}">
                  <button type="button" class="btn btn-outline-success" style="float:right;" onclick = "location.href = 'form'">모금함 등록하기</button>
                </c:if>
              </div>



            </div>
          </div>
        </div>





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


  </body>

</html>

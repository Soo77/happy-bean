<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.*"%>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta http-equiv="Content-Type" content="text/html;">
</head>

<jsp:include page="../header.jsp"/>

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



    <div class="pt-lg-5">

      <div class="container">
        <div class="pb-3">
          <button type="button" class="btn btn-outline-success nanumsquare" onclick = "location.href = 'detail_form?no=${donation.no}'">수정</button>
          <button type="button" class="btn btn-outline-danger nanumsquare" onclick = "location.href = 'delete?no=${donation.no}'">삭제</button>

        </div>
        <div class="row">
          <div class="col-md-7 mr-auto blog-content">


            <div>
              ${donation.donaContent}
            </div>

            <div class="pt-5">
              <p>Categories:  <a href="#">Design</a>, <a href="#">Events</a>  Tags: <a href="#">#html</a>, <a href="#">#trends</a></p>
            </div>


            <div class="pt-5">
              <h3 class="mb-5">6 Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="/../../../images/main/person_2.jpg" alt="Free Website Template by Free-Template.co">
                  </div>
                  <div class="comment-body">
                    <h3>Jacob Smith</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="/../../../images/main/person_3.jpg" alt="Free Website Template by Free-Template.co">
                  </div>
                  <div class="comment-body">
                    <h3>Chris Meyer</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard bio">
                        <img src="/../../../images/main/person_5.jpg" alt="Free Website Template by Free-Template.co">
                      </div>
                      <div class="comment-body">
                        <h3>Chintan Patel</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="/../../../images/main/person_1.jpg" alt="Free Website Template by Free-Template.co">
                          </div>
                          <div class="comment-body">
                            <h3>Jean Doe</h3>
                            <div class="meta">January 9, 2018 at 2:21pm</div>
                            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="/../../../images/main/person_4.jpg" alt="Free Website Template by Free-Template.co">
                                </div>
                                <div class="comment-body">
                                  <h3>Ben Afflick</h3>
                                  <div class="meta">January 9, 2018 at 2:21pm</div>
                                  <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="/../../../images/main/person_1.jpg" alt="Free Website Template by Free-Template.co">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn btn-primary btn-md text-white">
                  </div>

                </form>
              </div>
            </div>

          </div>
          <div class="col-md-4 sidebar">
            <%--<div class="sidebar-box">
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
            </div>--%>



            <div class="sidebar-box-detail">
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
                  <form action="/donation/donate" method="post" class="footer-suscribe-form">
                    <input type='hidden' name='no' id='no' value='${donation.no}'>
                    <input type='hidden' name='memberNo' id='memberNo' value='${loginUser.no}'>
                    <div class="input-group mb-3">
                      <input type="text" name="money" class="form-control rounded-0 border-secondary text-white bg-transparent" placeholder="금액을 입력하세요." aria-label="Enter Email" aria-describedby="button-addon2">
                      <div class="input-group-append">
                        <%--<button type="button" class="btn btn-primary text-white"  id="button-addon2">기부하기</button>--%>
                        <input type="submit" value="기부하기" class="btn btn-primary btn-md text-white" id="button-addon2">
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

      <jsp:include page="../footer.jsp" />

    </div>

    <script src="js/main/jquery-3.3.1.min.js"></script>
    <script src="js/main/popper.min.js"></script>
    <script src="js/main/bootstrap.min.js"></script>
    <script src="js/main/owl.carousel.min.js"></script>
    <script src="js/main/jquery.sticky.js"></script>
    <script src="js/main/jquery.waypoints.min.js"></script>
    <script src="js/main/jquery.animateNumber.min.js"></script>
    <script src="js/main/jquery.fancybox.min.js"></script>
    <script src="js/main/jquery.easing.1.3.js"></script>
    <script src="js/main/aos.js"></script>

    <script src="js/main/main.js"></script>

  </body>

</html>

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
        <h1 class="text-white mb-3">Causes</h1>
        <p class="lead text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt ab doloremque a quia laboriosam suscipit, iure illum perspiciatis!</p>
      </div>

      
        <div class="ftco-cover-1 overlay" style="background-image: url('/../../../images/main/hero_2.jpg');"></div>
      
    </div>
    
    
    <div class="site-section">
      <div class="container">
        
        <div class="row mb-5 align-items-st">
          <div class="col-md-5">
            <div class="heading-20219">
              <h2 class="title text-cursive mb-4">Featured Cause</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore officiis nemo, mollitia vero consequuntur quos alias id, ratione quia iusto.</p>
              <p>Blanditiis asperiores facere deleniti non fugit. Itaque facere nam soluta, incidunt molestias unde iure, optio, ex dolores sint voluptatum. Repellat.</p>
              <p>Obcaecati voluptates velit animi quos error, necessitatibus magnam possimus rem recusandae delectus placeat odio mollitia quis. Officiis possimus facere laborum.</p>
              <p><a href="#" class="btn btn-primary rounded-0 px-4">Donate Now</a></p>
            </div>
          </div>
          <div class="col-md-7">
            <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_1.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">80% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: 80%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border shadow-sm">
                  <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block">School</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>
          </div>
        </div>

        <div class="row">
          <c:forEach items="${donations}" var="donation">

          <div class="col-md-4">
              <div class="cause shadow-sm">
                <input type="hidden" name="percentage" type="hidden" value="${donation.totalAmount div donation.targetAmount * 100}">
                <a href="#" class="cause-link d-block">
                  <img src="/../../../upload/donation/thumbnail/${donation.thumbnail}" alt="Image" class="img-fluid">
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
          </c:forEach>
          <%--<div class="col-md-4">
            
            <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_2.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">80% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: 80%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border shadow-sm">
                  <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block">Health</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>

          </div>
          <div class="col-md-4">
            
            <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_3.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">80% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-warning" style="width: 80%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border ">
                  <span class="badge-warning py-1 small px-2 rounded mb-3 d-inline-block">Livelihood</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>

          </div>


          <div class="col-md-4">
              <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_1.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">99% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-danger" style="width: 99%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border shadow-sm">
                  <span class="badge-danger py-1 small px-2 rounded mb-3 d-inline-block">School</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>
          </div>
          <div class="col-md-4">
            
            <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_2.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">80% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-primary" style="width: 80%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border shadow-sm">
                  <span class="badge-primary py-1 small px-2 rounded mb-3 d-inline-block">Health</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>

          </div>
          <div class="col-md-4">
            
            <div class="cause shadow-sm">
              
                <a href="#" class="cause-link d-block">
                  <img src="/../../../images/main/img_3.jpg" alt="Image" class="img-fluid">
                  <div class="custom-progress-wrap">
                    <span class="caption">80% complete</span>
                    <div class="custom-progress-inner">
                      <div class="custom-progress bg-warning" style="width: 80%;"></div>
                    </div>
                  </div>
                </a>

                <div class="px-3 pt-3 border-top-0 border border ">
                  <span class="badge-warning py-1 small px-2 rounded mb-3 d-inline-block">Livelihood</span>
                  <h3 class="mb-4"><a href="#">Alias Odit Ipsam Quas Unde Obcaecati</a></h3>
                  <div class="border-top border-light border-bottom py-2 d-flex">
                    <div>Donated</div>
                    <div class="ml-auto"><strong class="text-primary">$32,919</strong></div>
                  </div>

                  <div class="py-4">
                    <div class="d-flex align-items-center">
                      <img src="/../../../images/main/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                      <div class="">James Smith</div>
                    </div>
                  </div>
                </div>
              
              </div>

          </div>
--%>
          <div class="col-12">
            <span class="p-3">1</span>
            <a href="#" class="p-3">2</a>
            <a href="#" class="p-3">3</a>
            <a href="#" class="p-3">4</a>
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
      parseFloat(percentVal.toFixed(2))

      var resultVal = 0;
      if(percentVal > 100) {
        resultVal = 100;
      } else {
        resultVal = percentVal;
      }


    </script>


  </body>

</html>

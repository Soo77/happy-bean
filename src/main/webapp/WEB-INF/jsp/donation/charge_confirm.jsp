<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Timestamp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.*"%>


<!DOCTYPE html>
<html lang="ko">

<head>
  <meta http-equiv="Content-Type" content="text/html;">

  <jsp:include page="../header.jsp"/>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">



<div class="site-section">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <img src="/../../../upload/donation/content/donationConfirm/a.jpg" alt="Image" class="img-fluid">
      </div>
      <div class="col-md-5 ml-auto">
        <h3 class="mb-4 nanumsquare" align="center"><b>이용해주셔서 </br>감사합니다.</b></h3>
        </br>
        <b><p>충전 금액 : ${chargeAmount} 원 </p>
        <p>나의 해피머니 : ${memberMoney} 원 </p></b>
        </br>
        <p><a href="detail?no=${donation.no}" class="btn btn-primary rounded-0 px-4">기부하러 가기</a>&nbsp;
        <a href="#" class="btn btn-primary rounded-0 px-4">충전내역</a></p>
        </div>
      </div>
    </div>
  </div>

  <div class="site-section">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-6 text-center mb-5">
          <h2 class="text-cursive">Our Team</h2>
        </div>
      </div>
      <div class="row align-items-stretch">

        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_1.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Founder</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_2.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Volunteer</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_3.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Volunteer</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_4.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Manager</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_5.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Human Resource</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 mb-5">
          <div class="post-entry-1 h-100 bg-white text-center">
            <a href="#" class="d-inline-block">
              <img src="images/person_1.jpg" alt="Image"
                   class="img-fluid">
            </a>
            <div class="post-entry-1-contents">
              <span class="meta">Volunteer</span>
              <h2>James Doe</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, sapiente.</p>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>
  <div class="site-section">
    <div class="container">

      <div class="row mb-5 align-items-st">
        <div class="col-md-4">
          <div class="heading-20219">
            <h2 class="title text-cursive">Latest Causes</h2>
          </div>
        </div>
        <div class="col-md-8">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga ea reprehenderit rerum magnam, ipsum aperiam. Earum, expedita ratione.</p>
        </div>
      </div>

      <div class="row">
        <div class="col-md-4">
          <div class="cause shadow-sm">

            <a href="#" class="cause-link d-block">
              <img src="images/img_1.jpg" alt="Image" class="img-fluid">
              <div class="custom-progress-wrap">
                <span class="caption">80% complete</span>
                <div class="custom-progress-inner">
                  <div class="custom-progress bg-danger" style="width: 80%;"></div>
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
                  <img src="images/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                  <div class="">James Smith</div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="col-md-4">

          <div class="cause shadow-sm">

            <a href="#" class="cause-link d-block">
              <img src="images/img_2.jpg" alt="Image" class="img-fluid">
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
                  <img src="images/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                  <div class="">James Smith</div>
                </div>
              </div>
            </div>

          </div>

        </div>
        <div class="col-md-4">

          <div class="cause shadow-sm">

            <a href="#" class="cause-link d-block">
              <img src="images/img_3.jpg" alt="Image" class="img-fluid">
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
                  <img src="images/person_1.jpg" alt="Image" class="rounded-circle mr-3" width="50">
                  <div class="">James Smith</div>
                </div>
              </div>
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

  <footer class="site-footer bg-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-7">
              <h2 class="footer-heading mb-4">About Us</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem modi, quaerat laborum id fugit blanditiis ratione delectus assumenda.</p>

            </div>
            <div class="col-md-4 ml-auto">
              <h2 class="footer-heading mb-4">Features</h2>
              <ul class="list-unstyled">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Testimonials</a></li>
                <li><a href="#">Terms of Service</a></li>
                <li><a href="#">Privacy</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>

          </div>
        </div>
        <div class="col-md-4 ml-auto">

          <div class="mb-5">
            <h2 class="footer-heading mb-4">Subscribe to Newsletter</h2>
            <form action="#" method="post" class="footer-suscribe-form">
              <div class="input-group mb-3">
                <input type="text" class="form-control rounded-0 border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Subscribe</button>
                </div>
              </div>
          </div>


          <h2 class="footer-heading mb-4">Follow Us</h2>
          <a href="#about-section" class="smoothscroll pl-0 pr-3"><span class="icon-facebook"></span></a>
          <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
          <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
          <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
          </form>
        </div>
      </div>
      <div class="row pt-5 mt-5 text-center">
        <div class="col-md-12">
          <div class="pt-5">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>

      </div>
    </div>
  </footer>

</div>


</body>

</html>

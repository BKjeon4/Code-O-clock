<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    

<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>Educal – Online Learning and Education HTML5 Template </title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Place favicon.ico in the root directory -->
      <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png">
      <!-- CSS here -->
      <link rel="stylesheet" href="/assets/css/preloader.css">
      <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="/assets/css/meanmenu.css">
      <link rel="stylesheet" href="/assets/css/animate.min.css">
      <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="/assets/css/swiper-bundle.css">
      <link rel="stylesheet" href="/assets/css/backToTop.css">
      <link rel="stylesheet" href="/assets/css/jquery.fancybox.min.css">
      <link rel="stylesheet" href="/assets/css/fontAwesome5Pro.css">
      <link rel="stylesheet" href="/assets/css/elegantFont.css">
      <link rel="stylesheet" href="/assets/css/default.css">
      <link rel="stylesheet" href="/assets/css/style.css">
      <link rel="stylesheet" href="/assets/css/loginStyle.css">
      <link rel="stylesheet" href="/assets/css/onoff.css">
     

              <!-- aboutus 관련 css -->         
              <link rel="stylesheet" href="/assets/css/aboutus.css">
              <link rel="stylesheet"href="/assets/css/glightbox.min.css">
              <link rel="stylesheet" href="/assets/css/swiper-bundle.min.css">


   </head>
   <body>
      <!--[if lte IE 9]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
      <![endif]-->
      
      <!-- Add your site or application content here -->  


         <!-- header area start -->
         <header>
            <div id="header-sticky" class="header__area header__transparent header__padding header__white">
               <div class="container-fluid">
                  <div class="row align-items-center">

                     <!--로고와 사이트 전환 이미지-->
                     <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-2 col-sm-4 col-6">
                        <div class="header__left d-flex">
                           <div class="logo">
                              <a href="index">
                                 <img src="/assets/img/logo/logo.png" alt="logo">
                              </a>
                           </div>
                           <div class="header__category d-none d-lg-block">
                              <nav>
                                 <ul>
                                    <li>
                                       <a href="course-grid" class="cat-menu d-flex align-items-center">
                                          <div class="cat-dot-icon d-inline-block">
                                             <input type="checkbox" id="switch" /><label class="onoff" for="switch">Toggle</label>
                                          </div>

                                       </a>

                                    </li>
                                 </ul>
                              </nav>
                           </div>
                        </div>
                     </div>

                     <!-- JSTL if : 로그인, 로그아웃된 상태 구분-->
                     <c:choose>
                        <c:when test="${empty sessionScope.memIdInt}">

                           <div class="col-xxl-9 col-xl-9 col-lg-6 col-md-7 col-sm-6 col-6">
                              <div class="eader__center align-items-center d-flex justify-content-center">
                                 <div class="main-menu main-menu-3">
                                    <nav id="mobile-menu">
                                       <ul>
                                          <li>
                                             <a href="/aboutus">AboutUs</a>
                                          </li>
                                          <li class="has-dropdown">
                                             <a href="course-grid">학원</a>
                                             <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                             </ul>
                                          </li>
                                          <li class="has-dropdown">
                                             <a href="">게시판</a>
                                             <ul class="submenu">
                                                <li><a href="/board/honestQuestionList">솔직 답변</a></li>
                                                <li><a href="/board/codingBoard">코딩 게시판</a></li>
                                                <li><a href="/board/newsList">뉴스</a></li>
                                                <li><a href="/board/announcement">공지</a></li>
                                             </ul>
                                          </li>
                                          <li>
                                             <a href="/chatbot">챗봇</a>
                                          </li>
                                       </ul>
                                    </nav>
                                 </div>

                                 <div class="header__search p-relative ml-50 d-none d-md-block">

                                    <!--맨위 검색부분임-->
                                    <form action= /academy/course-sidebar method="GET" role="search">
                                       <input type="text" name ="keywords" placeholder="Search...">
                                       <button type="submit"><i class="fad fa-search"></i></button>
                                    </form>
                                    <div class="header__cart">
                                       <a href="javascript:void(0);" class="cart-toggle-btn">
                                          <div class="header__cart-icon">
                                             <img src="/assets/img/heart.png" alt="heart">

                                          </div>
                                          <span class="cart-item">2</span>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="header__btn ml-20 d-none d-sm-block">
                                    <a href="/sign-in" class="e-btn">로그인</a>
                                 </div>
                                 <div class="sidebar__menu d-xl-none">
                                    <div class="sidebar-toggle-btn ml-30" id="sidebar-toggle">
                                       <span class="line"></span>
                                       <span class="line"></span>
                                       <span class="line"></span>
                                    </div>
                                 </div>
                              </div>
                           </div>

                        </c:when>
                        <c:when test="${not empty sessionScope.memIdInt}">

                           <div class="col-xxl-9 col-xl-9 col-lg-6 col-md-7 col-sm-6 col-6">
                              <div class="header__center align-items-center d-flex justify-content-center">
                                 <div class="main-menu main-menu-3">
                                    <nav id="mobile-menu">
                                       <ul>
                                          <li>
                                             <a href="/aboutus">AboutUs</a>
                                          </li>
                                          <li class="has-dropdown">
                                             <a href="course-grid">학원</a>
                                             <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                             </ul>
                                          </li>
                                          <li class="has-dropdown">
                                             <a href="">게시판</a>
                                             <ul class="submenu">
                                                <li><a href="/board/honestQuestionList">솔직 답변</a></li>
                                                <li><a href="/board/codingBoard">코딩 게시판</a></li>
                                                <li><a href="/board/newsList">뉴스</a></li>
                                                <li><a href="/board/announcement">공지</a></li>
                                             </ul>
                                          </li>
                                          <li>
                                             <a href="/chatbot">챗봇</a>
                                          </li>
                                       </ul>
                                    </nav>
                                 </div>
                                 <!-- 0103 찬주2
                                 메인화면에서의 검색기능과 동일한 부분 
                              -->

                                 <div class="header__search p-relative ml-50 d-none d-md-block">

                                    <form id="main" action=/academy/course-sidebar method="GET">
                                       <input type="text" name="keywords" placeholder="여기서 검색">
                                       <button type="submit"><i class="fad fa-search"></i></button>
                                    </form>
                                    <!-- 검색 끝-->




                                    <div class="header__cart">
                                       <a href="javascript:void(0);" class="cart-toggle-btn">
                                          <div class="header__cart-icon">
                                             <img src="/assets/img/heart.png" alt="heart"/ >
                                          </div>
                                          <span class="cart-item">2</span>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="header__btn ml-20 d-none d-sm-block">
                                   <!--  <div class="usercontainer">
                                       <div class="usernav">
                                         <h3>${sessionScope.memIdString}</h3>
                                         <div class="drop">
                                          <img class="user" src="/assets/img/user.png" alt="user"style="margin-right: 10px;"/>
                                           <span class="online"></span>
                                           <i class="fi-rr-angle-small-down"></i>
                                         </div>
                                       </div>
                                 </div>  -->

                                 <!--마이페이지-->
                                 <div class="header__category d-none d-lg-block">
                                    <nav>
                                       <ul>
                                          <li>
                                             <!-- <a href="course-grid" class="cat-menu d-flex align-items-center"> -->
                                               
                                                <!-- <span>${sessionScope.memIdString}</span> -->
                                                <div class="drop">
                                                   <img class="user" src="/assets/img/user.png" alt="user"style="margin-right: 10px;"/>
                                                    <span class="online"></span>
                                                    <i class="fi-rr-angle-small-down"></i>
                                                  </div>

                                             <!-- </a> -->
                                             <ul class="cat-submenu">
                                                <li><h4 style="margin-left: 10px;">${sessionScope.memIdString}님</h4></li>
                                                <li class="sy" style="margin-left: 10px">${sessionScope.memEmail}</li>
                                                <hr>
                                                <li><a href="/mypage/modify">마이페이지</a></li>
                                                <li><a href="/mypage/myreview">작성글 관리</a></li>
                                                <li><a href="/mypage/lessonreserve">예약 현황</a></li>
                                                <li><a href="/logoutMember">로그아웃</a></li>
                                             </ul>
                                          </li>
                                       </ul>
                                    </nav>
                                 </div>
                 

                                 <div class="sidebar__menu d-xl-none">
                                    <div class="sidebar-toggle-btn ml-30" id="sidebar-toggle">
                                       <span class="line"></span>
                                       <span class="line"></span>
                                       <span class="line"></span>
                                    </div>
                                 </div>
                              </div>
                           </div>

                        </c:when>
                     </c:choose>
                     <!-- JSTL c:when 끝-->

                  </div>
               </div>
            </div>
         </header>
         <!-- header area end -->

      <!-- cart mini area start -->
      <div class="cartmini__area">
         <div class="cartmini__wrapper">
            <div class="cartmini__title">
               <h4>Shopping cart</h4>
            </div>
            <div class="cartmini__close">
               <button type="button" class="cartmini__close-btn"><i class="fal fa-times"></i></button>
            </div>
            <div class="cartmini__widget ">
               <div class="cartmini__inner" style="overflow-x:hidden;">
                  <ul>
                     <c:forEach items="${jjimList}" var="wish">
                     <li>
                        <div class="cartmini__thumb">
                           <a href="#">
                              <img src="/assets/img/lecture/${wish[3]}" alt="">
                           </a>
                        </div>
                        <div class="cartmini__content">
                           <h5><a href="#">${wish[0]} </a></h5>
                           <div class="product-quantity mt-10 mb-10">
                           </div>
                           <div class="product__sm-price-wrapper">
                              <span class="product__sm-price">${wish[3]}</span>
                           </div>
                        </div>
                        <a href="/mypage/deleteJjim?memIdInt=${wish[2]}&jjId=${wish[1]}" class="cartmini__del"><i class="fal fa-times"></i></a>
                     </li>
                     </c:forEach>
                  </ul>
               </div>
               <div class="cartmini__checkout">
     
                  <div class="cartmini__checkout-btn">
                     <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
                  </div>
               </div>
               <div class="cartmini__inner ">
                  <ul>
                     <c:forEach items="${wishList}" var="wish">
                     <li>
                        <div class="cartmini__thumb">
                           <a href="#">
                              <img src="/assets/img/course/${wish[4]}" alt="">
                           </a>
                        </div>
                        <div class="cartmini__content">
                           <h5><a href="#">${wish[0]} </a></h5>
                           <div class="product-quantity mt-10 mb-10">
                           </div>
                           <div class="product__sm-price-wrapper">
                              <span class="product__sm-price">${wish[3]}</span>
                           </div>
                        </div>
                        <a href="/mypage/deleteWish?memIdInt=${wish[2]}&wId=${wish[1]}" class="cartmini__del"><i class="fal fa-times"></i></a>
                     </li>
                     </c:forEach>
                  </ul>
               </div>
               <div class="cartmini__checkout">
     
                  <div class="cartmini__checkout-btn">
                     <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="body-overlay"></div>
      <!-- cart mini area end -->
      <!-- sidebar area start -->
      <div class="sidebar__area">
         <div class="sidebar__wrapper">
            <div class="sidebar__close">
               <button class="sidebar__close-btn" id="sidebar__close-btn">
               <span><i class="fal fa-times"></i></span>
               <span>close</span>
               </button>
            </div>
            <div class="sidebar__content">
               <div class="logo mb-40">
                  <a href="index">
                  <img src="/assets/img/logo/logo.png" alt="logo">
                  </a>
               </div>
               <div class="mobile-menu fix"></div>

               <div class="sidebar__search p-relative mt-40 ">
                  <form action="#">
                     <input type="text" placeholder="Search...">
                     <button type="submit"><i class="fad fa-search"></i></button>
                  </form>
               </div>
               <div class="sidebar__cart mt-30">
                  <a href="#">
                     <div class="header__cart-icon">
                        <svg viewBox="0 0 24 24">
                           <circle class="st0" cx="9" cy="21" r="1"/>
                           <circle class="st0" cx="20" cy="21" r="1"/>
                           <path class="st0" d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6"/>
                        </svg>
                     </div>
                     <span class="cart-item">2</span>
                  </a>
               </div>
            </div>
         </div>
      </div>
      <!-- sidebar area end -->      
      <div class="body-overlay"></div>
      <!-- sidebar area end -->

      </body>
      </html>
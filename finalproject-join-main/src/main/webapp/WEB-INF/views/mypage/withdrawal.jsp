<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Educal – Online Learning and Education HTML5 Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.png" />
    <!-- CSS here -->
    <link rel="stylesheet" href="../assets/css/preloader.css" />
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/meanmenu.css" />
    <link rel="stylesheet" href="../assets/css/animate.min.css" />
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="../assets/css/swiper-bundle.css" />
    <link rel="stylesheet" href="../assets/css/backToTop.css" />
    <link rel="stylesheet" href="../assets/css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="../assets/css/fontAwesome5Pro.css" />
    <link rel="stylesheet" href="../assets/css/elegantFont.css" />
    <link rel="stylesheet" href="../assets/css/default.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/wishlist.css" />

    <style>
      #accordionSidebar {
        background-color: aliceblue;
        border-radius: 20px;
        
      }
      .nav-item span {
        color: #2f4f4f;
        font-weight: bolder;
        margin-left: 10px;
        margin-bottom: 15px;
        font-family: sans-serif;
      }
      .nav-item i {
        color: #2f4f4f;
        font-weight: bolder;
        margin-left: 20px;
      }
      .collapse-item {
        margin-left: 30px;
        margin-top: 10px;
        margin-bottom: 20px;
      }

      .myaccount {
         
         border-radius: 20px;
         height: 100%;
         width: 100%;
         max-width: 650px;         
         margin-right: auto;
         margin-left: auto;
         background-color: white;
      }
      .form-group{
         margin-top:10px;
         margin-left:10px;
      }
      .accounthead h4 {
         font-weight: bolder;
         text-align: center;
         font-size : 50px;
         margin-bottom:20px;
      }

    </style>
  </head>
  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <!-- Add your site or application content here -->

    <!-- pre loader area start -->
    <div id="loading">
      <div id="loading-center">
        <div id="loading-center-absolute">
          <div class="loading-content">
            <img class="loading-logo-text" src="../assets/img/logo/logo-text-2.png" alt="" />
            <div class="loading-stroke">
              <img class="loading-logo-icon" src="../assets/img/logo/logo-icon.png" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- pre loader area end -->

    <!-- back to top start -->
    <div class="progress-wrap">
      <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
    </div>
    <!-- back to top end -->

    <!-- header area start -->
    <header>
      <div
        id="header-sticky"
        class="header__area header__transparent header__padding header__white"
      >
        <div class="container-fluid">
          <div class="row align-items-center">
            <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-2 col-sm-4 col-6">
              <div class="header__left d-flex">
                <div class="logo">
                  <a href="index">
                    <img class="logo-white" src="../assets/img/logo/logo-2.png" alt="logo" />
                    <img class="logo-black" src="../assets/img/logo/logo.png" alt="logo" />
                  </a>
                </div>
                <div class="header__category d-none d-lg-block">
                  <nav>
                    <ul>
                      <li>
                        <a href="course-grid" class="cat-menu d-flex align-items-center">
                          <div class="cat-dot-icon d-inline-block">
                            <svg viewBox="0 0 276.2 276.2">
                              <g>
                                <g>
                                  <path
                                    class="cat-dot"
                                    d="M33.1,2.5C15.3,2.5,0.9,17,0.9,34.8s14.5,32.3,32.3,32.3s32.3-14.5,32.3-32.3S51,2.5,33.1,2.5z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M137.7,2.5c-17.8,0-32.3,14.5-32.3,32.3s14.5,32.3,32.3,32.3c17.8,0,32.3-14.5,32.3-32.3S155.5,2.5,137.7,2.5    z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M243.9,67.1c17.8,0,32.3-14.5,32.3-32.3S261.7,2.5,243.9,2.5S211.6,17,211.6,34.8S226.1,67.1,243.9,67.1z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M32.3,170.5c17.8,0,32.3-14.5,32.3-32.3c0-17.8-14.5-32.3-32.3-32.3S0,120.4,0,138.2S14.5,170.5,32.3,170.5z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M136.8,170.5c17.8,0,32.3-14.5,32.3-32.3c0-17.8-14.5-32.3-32.3-32.3c-17.8,0-32.3,14.5-32.3,32.3    C104.5,156.1,119,170.5,136.8,170.5z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M243,170.5c17.8,0,32.3-14.5,32.3-32.3c0-17.8-14.5-32.3-32.3-32.3s-32.3,14.5-32.3,32.3    C210.7,156.1,225.2,170.5,243,170.5z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M33,209.1c-17.8,0-32.3,14.5-32.3,32.3c0,17.8,14.5,32.3,32.3,32.3s32.3-14.5,32.3-32.3S50.8,209.1,33,209.1z    "
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M137.6,209.1c-17.8,0-32.3,14.5-32.3,32.3c0,17.8,14.5,32.3,32.3,32.3c17.8,0,32.3-14.5,32.3-32.3    S155.4,209.1,137.6,209.1z"
                                  />
                                  <path
                                    class="cat-dot"
                                    d="M243.8,209.1c-17.8,0-32.3,14.5-32.3,32.3c0,17.8,14.5,32.3,32.3,32.3c17.8,0,32.3-14.5,32.3-32.3    S261.6,209.1,243.8,209.1z"
                                  />
                                </g>
                              </g>
                            </svg>
                          </div>
                          <span>Category</span>
                        </a>
                        <ul class="cat-submenu">
                          <li><a href="course-details">English Learning</a></li>
                          <li><a href="course-details">Web Development</a></li>
                          <li><a href="course-details">Logo Design</a></li>
                          <li><a href="course-details">Motion Graphics</a></li>
                          <li><a href="course-details">Video Edition</a></li>
                        </ul>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
            <div class="col-xxl-9 col-xl-9 col-lg-8 col-md-10 col-sm-8 col-6">
              <div class="header__right d-flex justify-content-end align-items-center">
                <div class="main-menu main-menu-3">
                  <nav id="mobile-menu">
                    <ul>
                      <li class="has-dropdown">
                        <a href="index">Home</a>
                        <ul class="submenu">
                          <li><a href="index">Home Style 1</a></li>
                          <li><a href="index-2">Home Style 2</a></li>
                          <li><a href="index-3">Home Style 3</a></li>
                        </ul>
                      </li>
                      <li class="has-dropdown">
                        <a href="course-grid">Courses</a>
                        <ul class="submenu">
                          <li><a href="course-grid">Courses</a></li>
                          <li><a href="course-list">Course List</a></li>
                          <li><a href="course-sidebar">Course sidebar</a></li>
                          <li><a href="course-details">Course Details</a></li>
                        </ul>
                      </li>
                      <li class="has-dropdown">
                        <a href="blog">Blog</a>
                        <ul class="submenu">
                          <li><a href="blog">Blog</a></li>
                          <li><a href="blog-details">Blog Details</a></li>
                        </ul>
                      </li>
                      <li class="has-dropdown">
                        <a href="course-grid">Pages</a>
                        <ul class="submenu">
                          <li><a href="about">About</a></li>
                          <li><a href="instructor">Instructor</a></li>
                          <li><a href="instructor-details">Instructor Details</a></li>
                          <li><a href="event-details">Event Details</a></li>
                          <li><a href="cart">My Cart</a></li>
                          <li><a href="wishlist">My Wishlist</a></li>
                          <li><a href="checkout">checkout</a></li>
                          <li><a href="sign-in">Sign In</a></li>
                          <li><a href="sign-up">Sign Up</a></li>
                          <li><a href="error">Error</a></li>
                        </ul>
                      </li>
                      <li><a href="contact">Contact</a></li>
                    </ul>
                  </nav>
                </div>
                <div class="header__search p-relative ml-50 d-none d-md-block">
                  <form action="#">
                    <input type="text" placeholder="Search..." />
                    <button type="submit"><i class="fad fa-search"></i></button>
                  </form>
                  <div class="header__cart">
                    <a href="javascript:void(0);" class="cart-toggle-btn">
                      <div class="header__cart-icon">
                        <svg viewBox="0 0 24 24">
                          <circle class="st0" cx="9" cy="21" r="1" />
                          <circle class="st0" cx="20" cy="21" r="1" />
                          <path
                            class="st0"
                            d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6"
                          />
                        </svg>
                      </div>
                      <span class="cart-item">2</span>
                    </a>
                  </div>
                </div>
                <div class="header__btn ml-20 d-none d-sm-block">
                  <a href="contact" class="e-btn">Try for free</a>
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
        <div class="cartmini__widget">
          <div class="cartmini__inner">
            <ul>
              <li>
                <div class="cartmini__thumb">
                  <a href="#">
                    <img src="../assets/img/course/sm/cart-1.jpg" alt="" />
                  </a>
                </div>
                <div class="cartmini__content">
                  <h5><a href="#">Strategy law and organization Foundation </a></h5>
                  <div class="product-quantity mt-10 mb-10">
                    <span class="cart-minus">-</span>
                    <input class="cart-input" type="text" value="1" />
                    <span class="cart-plus">+</span>
                  </div>
                  <div class="product__sm-price-wrapper">
                    <span class="product__sm-price">$46.00</span>
                  </div>
                </div>
                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
              </li>
              <li>
                <div class="cartmini__thumb">
                  <a href="#">
                    <img src="../assets/img/course/sm/cart-2.jpg" alt="" />
                  </a>
                </div>
                <div class="cartmini__content">
                  <h5><a href="#">Fundamentals of music theory Learn new</a></h5>
                  <div class="product-quantity mt-10 mb-10">
                    <span class="cart-minus">-</span>
                    <input class="cart-input" type="text" value="1" />
                    <span class="cart-plus">+</span>
                  </div>
                  <div class="product__sm-price-wrapper">
                    <span class="product__sm-price">$32.00</span>
                  </div>
                </div>
                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
              </li>
              <li>
                <div class="cartmini__thumb">
                  <a href="#">
                    <img src="../assets/img/course/sm/cart-3.jpg" alt="" />
                  </a>
                </div>
                <div class="cartmini__content">
                  <h5><a href="#">Strategy law and organization Foundation </a></h5>
                  <div class="product-quantity mt-10 mb-10">
                    <span class="cart-minus">-</span>
                    <input class="cart-input" type="text" value="1" />
                    <span class="cart-plus">+</span>
                  </div>
                  <div class="product__sm-price-wrapper">
                    <span class="product__sm-price">$62.00</span>
                  </div>
                </div>
                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
              </li>
            </ul>
          </div>
          <div class="cartmini__checkout">
            <div class="cartmini__checkout-title mb-30">
              <h4>Subtotal:</h4>
              <span>$113.00</span>
            </div>
            <div class="cartmini__checkout-btn">
              <a href="cart" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
              <a href="checkout" class="e-btn w-100"> <span></span> checkout</a>
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
              <img src="../assets/img/logo/logo.png" alt="logo" />
            </a>
          </div>
          <div class="mobile-menu fix"></div>

          <div class="sidebar__search p-relative mt-40">
            <form action="#">
              <input type="text" placeholder="Search..." />
              <button type="submit"><i class="fad fa-search"></i></button>
            </form>
          </div>
          <div class="sidebar__cart mt-30">
            <a href="#">
              <div class="header__cart-icon">
                <svg viewBox="0 0 24 24">
                  <circle class="st0" cx="9" cy="21" r="1" />
                  <circle class="st0" cx="20" cy="21" r="1" />
                  <path
                    class="st0"
                    d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6"
                  />
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

    <main>
      <!-- page title area start -->
      <section
        class="page__title-area page__title-height page__title-overlay d-flex align-items-center"
        data-background="../assets/img/page-title/page-title-2.jpg"
      >
        <div class="container">
          <div class="row">
            <div class="col-xxl-12">
              <div class="page__title-wrapper mt-110">
                <h3 class="page__title">My Wishlist</h3>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Wishlist</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- page title area end -->

      <!-- 왼쪽 메뉴 표 Strat-->
      
      <section class="cart-area pt-100 pb-100">
         <div class="accounthead">
            <h4>회원정보 수정</h4>
         </div>
        <div class="container">
         
          <div class="row">
            <div class="col-sm-3">
              <div class="left-sidebar">
                <ul
                  class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                  id="accordionSidebar"
                >
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/academyList"
                      data-toggle="collapse"
                      data-target="#collapseOne"
                      aria-expanded="true"
                      aria-controls="collapseOne"
                    >
                      <i class="fas fa-fw fa-address-card"></i> <span>회원 정보 관리</span>
                    </a>
                    <div
                      id="collapseOne"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="academyList">회원정보 수정</a><br />
                        <a class="collapse-item" href="admin/academyRegister">회원 탈퇴</a>
                      </div>
                    </div>
                  </li>

                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/tutorList"
                      data-toggle="collapse"
                      data-target="#collapseTwo"
                      aria-expanded="true"
                      aria-controls="collapseTwo"
                    >
                      <i class="fas fa-fw fa-pencil"></i> <span>작성글 관리</span>
                    </a>
                    <div
                      id="collapseTwo"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="academyList">리뷰관리</a><br />
                        <a class="collapse-item" href="admin/academyRegister">1:1문의</a><br />
                        <a class="collapse-item" href="admin/academyRegister">코딩게시판</a><br />
                        <a class="collapse-item" href="admin/academyRegister">솔직답변</a><br />
                        <a class="collapse-item" href="admin/academyRegister">학원 탈퇴</a>
                      </div>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/tutorList"
                      data-toggle="collapse"
                      data-target="#collapseThree"
                      aria-expanded="true"
                      aria-controls="collapseThree"
                    >
                      <i class="fas fa-heart"></i> <span>WishList</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/lectureList.do"
                      data-toggle="collapse"
                      data-target="#collapseThree"
                      aria-expanded="true"
                      aria-controls="collapseThree"
                    >
                      <i class="fas fa-fw fa-desktop"></i> <span>나의 학습</span>
                    </a>
                    <div
                      id="collapseThree"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="admin/lectureList.do">강의 관리</a><br />
                      </div>
                    </div>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" href="admin/member.do">
                      <i class="fas fa-fw fa-table"></i> <span>튜터등록</span>
                    </a>
                  </li>

                  <!-- Nav Item - Pages Collapse Menu -->
                </ul>
              </div>
            </div>

            <!-- 메인 표-->
            <div class="col-sm-9">              
              <form class="myaccount" action="#">             
                        
                            <div class="sign__wrapper white-bg">                               
                                
                                <div class="sign__form">
                                    <!-- bk 회원가입 버튼 액션-->
                                    <form method="post" id="modifyForm" action="modifyForm">
                                        <div class="sign__input-wrapper mb-25">
                                            <h5>아이디</h5>
                                            <div class="sign__input">
                                                <input
                                                 type="text" 
                                                 placeholder="ID" 
                                                 id="memIdString" 
                                                 name="memIdString"
                                                 required
                                                 tabindex="1"
                                                 aria-required="true"
                                                 readonly
                                                 value="${userInfo.memIdString}"
                                                 />                                                
                                                <i class="fal fa-user"></i>                                                
                                            </div>                                      
                                            
                                        </div>
                                        
                                        <div class="sign__input-wrapper mb-25">
                                          <h5>비밀번호</h5>
                                          <div class="sign__input">
                                              <input type="password"
                                              placeholder="Password"
                                              id="m_pass"
                                              name="memPass"
                                              required
                                              tabindex="2"
                                              aria-required="true"
                                              />
                                              <i class="fal fa-lock"></i>
                                          </div>                                          
                                      </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이름</h5>
                                            <div class="sign__input">
                                                <input type="text"
                                                placeholder="Full name" 
                                                id="m_name" 
                                                name="memName" 
                                                required
                                                tabindex="3"
                                                value=""
                                                aria-required="true"
                                                />
                                                <i class="fal fa-user"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>폰 번호</h5>
                                            <div class="sign__input">
                                                <input type="tel" 
                                                placeholder="Phone number" 
                                                id="m_tel" 
                                                name="memTel" 
                                                required
                                                tabindex="4"
                                                value=""
                                                aria-required=""
                                                />
                                                <i class="fal fa-phone"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이메일</h5>
                                            <div class="sign__input">
                                                <input type="email" 
                                                placeholder="E-mail address" 
                                                id="m_email" 
                                                name="memEmail" 
                                                required
                                                tabindex="5"
                                                value=""
                                                aria-required="true"
                                                />
                                                <i class="fal fa-envelope"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>우편 번호</h5>
                                            <div class="sign__input">
                                                <!-- onclick 을 통해서 주소 찾기 api 가능-->
                                                <input type="text" placeholder="Postal code" id="m_post" name="m_post"  onclick="findAddress()"  readonly  required/>
                                                <i class="fal fa-location"></i>
                                            </div>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>주소</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="Address" id="m_addr" name="m_addr" required/>
                                                <i class="fal fa-location-arrow"></i>
                                            </div>
                                        </div>
                                        <div class="sign__input-wrapper mb-25">
                                            <h5>상세 주소</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="Detailed address" id="m_addr_sub" name="m_addr_sub" required/>
                                                <i class="fal fa-location-arrow"></i>

                                            </div>
                                        </div>

                                

                                        <div class="sign__action d-flex justify-content-between mb-30">
                                            
                                        </div>
                                        <button class="e-btn w-100" type="submit" id="modifyBtn" name="modifyBtn"><span></span> 수정하기 </button>
                                        <div class="sign__new text-center mt-20">
                                            <p>탈퇴를 원하신다면 ? <a href="sign-in"> 탈퇴하기 </a></p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- Cart Area End-->
    </main>

    <!-- footer area start -->
    <footer>
      <div class="footer__area footer-bg">
        <div class="footer__top pt-90 pb-40">
          <div class="container">
            <div class="row">
              <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="footer__widget mb-50">
                  <div class="footer__widget-head mb-22">
                    <div class="footer__logo">
                      <a href="index">
                        <img src="../assets/img/logo/logo-2.png" alt="" />
                      </a>
                    </div>
                  </div>
                  <div class="footer__widget-body">
                    <p>
                      Great lesson ideas and lesson plans for ESL teachers! Educators can customize
                      lesson plans to best.
                    </p>

                    <div class="footer__social">
                      <ul>
                        <li>
                          <a href="#"><i class="social_facebook"></i></a>
                        </li>
                        <li>
                          <a href="#" class="tw"><i class="social_twitter"></i></a>
                        </li>
                        <li>
                          <a href="#" class="pin"><i class="social_pinterest"></i></a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="col-xxl-2 offset-xxl-1 col-xl-2 offset-xl-1 col-lg-3 offset-lg-0 col-md-2 offset-md-1 col-sm-5 offset-sm-1"
              >
                <div class="footer__widget mb-50">
                  <div class="footer__widget-head mb-22">
                    <h3 class="footer__widget-title">Company</h3>
                  </div>
                  <div class="footer__widget-body">
                    <div class="footer__link">
                      <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Courses</a></li>
                        <li><a href="#">Events</a></li>
                        <li><a href="#">Instructor</a></li>
                        <li><a href="#">Career</a></li>
                        <li><a href="#">Become a Teacher</a></li>
                        <li><a href="#">Contact</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-2 col-xl-2 col-lg-2 offset-lg-0 col-md-3 offset-md-1 col-sm-6">
                <div class="footer__widget mb-50">
                  <div class="footer__widget-head mb-22">
                    <h3 class="footer__widget-title">Platform</h3>
                  </div>
                  <div class="footer__widget-body">
                    <div class="footer__link">
                      <ul>
                        <li><a href="#">Browse Library</a></li>
                        <li><a href="#">Library</a></li>
                        <li><a href="#">Partners</a></li>
                        <li><a href="#">News & Blogs</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Tutorials</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-5 col-sm-6">
                <div class="footer__widget footer__pl-70 mb-50">
                  <div class="footer__widget-head mb-22">
                    <h3 class="footer__widget-title">Subscribe</h3>
                  </div>
                  <div class="footer__widget-body">
                    <div class="footer__subscribe">
                      <form action="#">
                        <div class="footer__subscribe-input mb-15">
                          <input type="email" placeholder="Your email address" />
                          <button type="submit">
                            <i class="far fa-arrow-right"></i>
                            <i class="far fa-arrow-right"></i>
                          </button>
                        </div>
                      </form>
                      <p>Get the latest news and updates right at your inbox.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer__bottom">
          <div class="container">
            <div class="row">
              <div class="col-xxl-12">
                <div class="footer__copyright text-center">
                  <p>
                    © 2022 Educal, All Rights Reserved. Design By <a href="index">Theme Pure</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- footer area end -->
    <!-- JS here -->
    <script src="../assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="../assets/js/vendor/waypoints.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/jquery.meanmenu.js"></script>
    <script src="../assets/js/swiper-bundle.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/jquery.fancybox.min.js"></script>
    <script src="../assets/js/isotope.pkgd.min.js"></script>
    <script src="../assets/js/parallax.min.js"></script>
    <script src="../assets/js/backToTop.js"></script>
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/ajax-form.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/wishList.js"></script>
    <!--0106 좋아요 버튼 관련 ajax-->
    <!-- Bootstrap core JavaScript-->
    <script src="../admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
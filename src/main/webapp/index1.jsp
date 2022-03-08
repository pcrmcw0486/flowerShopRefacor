<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>TenTen : Find your flower</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="resources/css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="resources/css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <style>
    	.s {
            width: 400px;
            height: 600px;
        }
    </style>
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="resources/js/jquery-3.2.1.min.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>

    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            }
        });
    </script>    
    
</head>

<body>
<%
 %>
    <!--============================= HEADER =============================-->

	<div class="dark-bg sticky-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand"
							href="<%=request.getContextPath()%>/index.jsp">TenTen</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarNavDropdown"
							aria-controls="navbarNavDropdown" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="icon-menu"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end"
							id="navbarNavDropdown">
							<ul class="navbar-nav">
								<li class="nav-item dropdown"><a class="nav-link" href="#"
									id="navbarDropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> 꽃 검색하기 <span
										class="icon-arrow-down"></span>
								</a>
									<div class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<a class="dropdown-item"
											href="<%=request.getContextPath()%>/Search/search_flang.jsp">꽃말</a>
										<a class="dropdown-item"
											href="<%=request.getContextPath()%>/Search/search_flower.jsp">꽃
											이름</a>
									</div></li>
								<li class="nav-item dropdown"><a class="nav-link" href="#"
									id="navbarDropdownMenuLink1" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> 꽃 추천 <span
										class="icon-arrow-down"></span>
								</a>
									<div class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<a class="dropdown-item"
											href="<%=request.getContextPath()%>/flower/choice.jsp">이런
											상황? 어떤 꽃?</a>
									</div></li>
								<li class="nav-item dropdown"><a class="nav-link" href="#"
									id="navbarDropdownMenuLink2" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Entertainments
										<span class="icon-arrow-down"></span>
								</a>
									<div class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<a class="dropdown-item"
											href="<%=request.getContextPath()%>/game/game.jsp">미니게임</a> <a
											class="dropdown-item"
											href="<%=request.getContextPath()%>/mindTest/mindTest.jsp">심리
											테스트</a>
									</div></li>
								<%
									boolean check = false;
									Enumeration en = session.getAttributeNames();
									int i = 0;
									while (en.hasMoreElements()) {
										i++;
										String name = en.nextElement().toString();
										if (name.equals("valid")) {
											check = (boolean) session.getAttribute(name);
											break;
										}

									}
									if (check == false) {
								%>
								<li class="nav-item"><a class="nav-link"
									href="<%=request.getContextPath()%>/login">로그인</a></li>
								<li><a href="<%=request.getContextPath() %>/WEB-INF/jsp/signup.jsp" class="btn btn-outline-light top-btn"><span
										class="ti-plus"></span> 회원가입</a></li>
								<%
									} else {
										String usr_name = (String)session.getAttribute("ID");
								%>
								<li class="nav-link"><%=usr_name %> 님 환영합니다. </li>
								<li><a href="<%=request.getContextPath() %>/logout.jsp"
									class="btn btn-outline-light top-btn"><span class="ti-plus"></span>
										로그아웃</a></li>
								<%
									}
								%>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
    <!-- SLIDER -->
    <section class="slider d-flex align-items-center">
        <!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-content_wrap">
                                    <h1>Discover your Flower in RecoFlower</h1>
                                    <h5>Let's uncover the best flowers to celebration, love, and respect to your.</h5>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div >
                                <form class="form-wrap" action="SearchByOptions.do" method="post">
                                    <div class="btn-group" role="group" aria-label="Basic example">
                                        <input type="text" name="search_name" placeholder="꽃이나 꽃말을 검색해보세요!" class="btn-group1" style="width:500px; text-align: center" >
                                        <button type="submit" class="btn-form"><span class="icon-magnifier search-icon"></span>검색<i class="pe-7s-angle-right"></i></button>
                                    </div>
                                </form>
                                <div class="slider-link">
                                    <a href="Search/search_flower.jsp">꽃 검색하기</a><span>or</span> <a href="Search/search_flang.jsp">꽃말 검색하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->
    <!--============================= FIND PLACES =============================-->
    <section class="main-block">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>What do you need to find?</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="row find-img-align">
                        <div class="col-md-12">
                            <div class="find-place-img_wrap">
                                <div class="grid">
                                    <figure class="effect-ruby">
                                        <a href = "Search/search_flang.jsp"><img class="s" src="resources/images/find-place2.jpg" class="img-fluid" alt="img13" />
                                        <figcaption>
                                            <h5>꽃말로 찾기</h5>
                                            <p>>></p>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
                
                <div class="col-md-6">
                    <div class="col-md-50">
                    <div class="find-place-img_wrap">
                        <div class="grid">
                            <figure class="effect-ruby">
                                <a href = "flower/choice.jsp"><img class="s" src="resources/images/alstro.jpg" class="img-fluid" alt="img13" /></a>
                                <figcaption>
                                    <h5>상황에 맞는 꽃은? </h5>
                                    <p>>></p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>  
                </div>
            </div>
        </div>
    </section>
    <!--//END FIND PLACES -->
    <!--============================= FEATURED PLACES =============================-->
   <!--- <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Featured Places</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="detail.html">
                            <img src="images/featured1.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating-orange">6.5</span>
                            <div class="featured-title-box">
                                <h6>Burger & Lobster</h6>
                                <p>Restaurant </p> <span>• </span>
                                <p>3 Reviews</p> <span> • </span>
                                <p><span>$$$</span>$$</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>1301 Avenue, Brooklyn, NY 11230</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>+44 20 7336 8898</p>
                                    </li>
                                    <li><span class="icon-link"></span>
                                        <p>https://burgerandlobster.com</p>
                                    </li>

                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                    <span class="ti-bookmark"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="detail.html">
                            <img src="images/featured2.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating-green">9.5</span>
                            <div class="featured-title-box">
                                <h6>Joe’s Shanghai</h6>
                                <p>Restaurant </p> <span>• </span>
                                <p>3 Reviews</p> <span> • </span>
                                <p><span>$$$</span>$$</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>1301 Avenue, Brooklyn, NY 11230</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>+44 20 7336 8898</p>
                                    </li>
                                    <li><span class="icon-link"></span>
                                        <p>https://burgerandlobster.com</p>
                                    </li>

                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                    <span class="ti-bookmark"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="detail.html">
                            <img src="images/featured3.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">3.2</span>
                            <div class="featured-title-box">
                                <h6>Tasty Hand-Pulled Noodles</h6>
                                <p>Restaurant </p> <span>• </span>
                                <p>3 Reviews</p> <span> • </span>
                                <p><span>$$$</span>$$</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>1301 Avenue, Brooklyn, NY 11230</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>+44 20 7336 8898</p>
                                    </li>
                                    <li><span class="icon-link"></span>
                                        <p>https://burgerandlobster.com</p>
                                    </li>

                                </ul>
                                <div class="bottom-icons">
                                    <div class="open-now">OPEN NOW</div>
                                    <span class="ti-heart"></span>
                                    <span class="ti-bookmark"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="#" class="btn btn-danger">VIEW ALL</a>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- END FEATURED PLACES -->
    <!--============================= CATEGORIES =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>심리 테스트</h3>
                    </div>
                </div>
            </div>
        </div>
            <h4 style="text-align: center;" >나랑 가장 잘 맞는 색의 꽃은 무엇일까?</h4> <div class="row justify-content-center"><a href = "mindTest/testColor.jsp" class="btn btn-danger" ><span class="ti-plus"></span> 알아보러 가기</a></div>
            
            <br>
            <h4 style="text-align: center;" >오늘 나는 어떤 나무와 비슷할까?</h4><div class="row justify-content-center"> <a href = "mindTest/testTree.jsp" class="btn btn-danger" ><span class="ti-plus"></span> 알아보러 가기</a></div>
            <br>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
              			<a href="game/game.jsp" class="btn btn-danger"><span class="ti-plus"></span> 미니게임 하러가기</a>
                    </div>
                </div>
            </div>
    </section>
    <!--//END CATEGORIES -->
    <!--============================= ADD LISTING =============================-->
   
   <!--- <section class="main-block">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-listing-wrap">
                        <h2>Reach millions of People</h2>
                        <p>Add your Business infront of millions and earn 3x profits from our listing</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="#" class="btn btn-danger"><span class="ti-plus"></span> ADD LISTING</a>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!--//END ADD LISTING -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 Listing. All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="#"><span class="ti-facebook"></span></a></li>
                            <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
                            <li><a href="#"><span class="ti-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->

</body>

</html>

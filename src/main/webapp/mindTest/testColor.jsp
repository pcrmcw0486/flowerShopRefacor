<%@ page import="flowershop.dto.TestColor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="testColorDAO" class="flowershop.dao.TestColorList" scope="session" />
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-16">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
    <title>Listing &amp; Directory Website Template</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="../resources/css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="../resources/css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="../resources/css/set1.css">
    <!-- Swipper Slider -->
    <link rel="stylesheet" href="../resources/css/swiper.min.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="../resources/css/magnific-popup.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="../resources/css/style.css">
<!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../resources/js/jquery-3.2.1.min.js"></script>
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>

    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>    
    
</head>
<body>
	<%
		ArrayList<TestColor> colorList = testColorDAO.getAllTests();
	%>
	
    <!--============================= HEADER =============================-->
    <%@ include file="../header.jsp" %>
    <!--//END HEADER -->
    <!--============================= BOOKING =============================-->
    <div>
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower2.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower1.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower3.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower3.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower1.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower2.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../resources/images/swipe_flower3.jpg" class="grid image-link">
                        <img src="../resources/images/swipe_flower3.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
    </div>
    <!--//END BOOKING -->
    <!--============================= RESERVE A SEAT =============================-->
    <section class="reserve-block">
        <div class="container">
            <div class="row">
                <div>
                    <h5>색깔 심리테스트</h5>
                </div>
            </div>
        </div>
    </section>
    <!--//END RESERVE A SEAT -->
     <!--============================= DETAIL =============================-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 responsive-wrap">
                    <div class="row light-bg detail-options-wrap">
                    	<%
                    	for (int k = 0; k < colorList.size(); k++) {
    						TestColor colorTest = colorList.get(k);
                    	%>
                    	<div class="col-sm-1 col-lg-1"></div>
                        <div class="col-sm-4 col-lg-4 col-xl-4 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="./testColorResult.jsp?id=<%=colorTest.getColorID() %>" target="colorR">
                                    <img src="./images/<%= colorTest.getColorID() %>.png" class="causes img-fluid" alt="#">
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-1 col-lg-1"></div>
                        <%
                    	}
                        %>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-2"></div>
							<div class="col-md-10">
				                <div class="reserve-seat-block">
				                    <div class="reserve-btn">
				                        <div class="featured-btn-wrap"> 
				                        	<a href="mindTest.jsp">                           	
				                        		<button class="btn btn-danger" type="button">돌아가기</button>
				                       		</a>			                        
				                       	</div>
				                    </div>
				                </div>
				            </div>
	                    </div>
	            	</div>
                </div>
                <iframe style="border-style:none;" src="testColorResult.jsp" name="colorR" class="results col-md-6 responsive-wrap"></iframe>
            </div>
        </div>
    </section>
    <!--//END DETAIL -->
	
	<!--============================= FOOTER =============================-->
    <%@ include file="../footer.jsp" %>
    <!--//END FOOTER -->




    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../resources/js/jquery-3.2.1.min.js"></script>
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>

    <!-- Magnific popup JS -->
    <script src="../resources/js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="../resources/js/swiper.min.js"></script>

    <script>
        $(".map-icon").click(function() {
            $(".map-fix").toggle();
        });
    </script>
    <script>
        // Want to customize colors? go to snazzymaps.com
        function myMap() {
            var maplat = $('#map').data('lat');
            var maplon = $('#map').data('lon');
            var mapzoom = $('#map').data('zoom');
            // Styles a map in night mode.
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {
                    lat: maplat,
                    lng: maplon
                },
                zoom: mapzoom,
                scrollwheel: false
            });
            var marker = new google.maps.Marker({
                position: {
                    lat: maplat,
                    lng: maplon
                },
                map: map,
                title: 'We are here!'
            });
        }
    </script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>
    <script>
    	$(document).ready(function() {
    		$("iframe.results").hide();
    		$("img.causes").click(function() {
    			$("iframe.results").show();
    		});
    		$("iframe.results").click(function() {
    			$(this).hide();
    		});
    	});
    </script>
    <!-- Map JS (Please change the API key below. Read documentation for more info) -->
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap&key=AIzaSyDMTUkJAmi1ahsx9uCGSgmcSmqDTBF9ygg"></script>
</body>
</html>
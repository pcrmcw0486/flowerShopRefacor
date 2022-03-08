<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-16">
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
                <div class="col-md-6">
                    <h5>꽃 피우기 대작전!</h5>
                    <p class="reserve-description">당신의 꽃은 어떤 꽃?</p>
                </div>
            </div>
        </div>
    </section>
    <!--//END RESERVE A SEAT -->
    <!--============================= BOOKING DETAILS =============================-->
    <section class="light-bg booking-details_wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-12 responsive-wrap">
                    <div class="story0 booking-checkbox_wrap">
                        <div class="booking-checkbox" align="center">
                        	<div>
                        		<img style="height:200px;" src="./images/hands.png">
                        	</div>
				            <br>당신은 오늘 길을 가다가 물방울 모양의 씨앗을 주웠습니다.<br>
							씨앗이 자기를 키워달라고 말을 하네요.<br>
							당신은 어쩔 수 없이 씨앗을 들고 집에 갑니다.<br>
                        </div>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-12">
			                    <div class="reserve-seat-block">
			                        <div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="button0 btn btn-danger" type="button">시작하기</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                        </div>
                    </div>
                    <form action="gameResults.jsp" target="games" name="plant" method="post">
                    <div class="story1 booking-checkbox_wrap mt-4">
                    		<h5>1. 씨앗을 어디에 심을까요?</h5>
                        <div class="booking-checkbox" align="center">
							<img style="height:200px;" src="./images/garden.jpg"><br>
							<div class="story">큰 나무와 꽃들이 무럭무럭 자라는 정원<br></div>
							<input type="radio" name="ground" value="00" checked>여기에 심기<br><br>
				
							<img style="height:200px;" src="./images/flowerpot.png"><br>
							<div class="story">아기자기한 꽃들이 자라는 작은 화분<br></div>
							<input type="radio" name="ground" value="16">여기에 심기<br><br>
                        </div>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-12">
			                    <div class="reserve-seat-block">
			                    	<div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="back btn btn-danger" type="button">처음으로</button>
			                            </div>
			                        </div>
			                        <div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="button1 btn btn-danger" type="button">씨앗 심기</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                        </div>
                    </div>
                    <div class="story2 booking-checkbox_wrap mt-4">
                    	<h5>2. 목마른 씨앗에게 간절한 한 방울</h5>
                        <div class="booking-checkbox" align="center">
							<img style="height:200px;" src="./images/liquid_red.jpg">
							<div class="story">울끈불끈 멋진 몸매 토마토를 갈아만든 토마토주스<br></div>
							<input type="radio" name="color" value="00" checked>토마토주스 뿌리기<br><br>
				
							<img style="height:200px;" src="./images/liquid_yellow.jpg">
							<div class="story">아이셔! 상큼한 캘리포니아산 오렌지주스<br></div>
							<input type="radio" name="color" value="04">오렌지주스 뿌리기<br><br>
							
							<img style="height:200px;" src="./images/liquid_white.jpg">
							<div class="story">다른 것들이 있어도 클래식이 최고! 시원한 물</div>
							<input type="radio" name="color" value="08">물 뿌리기<br><br>
							
							<img style="height:200px;" src="./images/liquid_purple.jpg">
							<div class="story">씨앗도 마실 수 있는 무알콜 와인</div>
							<input type="radio" name="color" value="12">와인 뿌리기<br><br>
                        </div>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-12">
			                    <div class="reserve-seat-block">
			                    	<div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="back btn btn-danger" type="button">처음으로</button>
			                            </div>
			                        </div>
			                        <div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="button2 btn btn-danger" type="button">뿌리기</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                        </div>
                    </div>
                    <div class="story3 booking-checkbox_wrap mt-4">
                        <div class="booking-checkbox" align="center">
                        <h5>3. 비료 맛있는 비료</h5>
							<img style="height:200px;" src="./images/fert_spring.png">
							<div class="story">사랑스러움을 가득 담은 러블리 비료</div>
							<input type="radio" name="season" value="00" checked>비료 뿌리기<br><br>
							
							<img style="height:200px;" src="./images/fert_summer.png">
							<div class="story">시원함을 가득 담은 쿨 비료</div>
							<input type="radio" name="season" value="01">비료 뿌리기<br><br>
							
							<img style="height:200px;" src="./images/fert_autumn.png">
							<div class="story">영양분이 가득 들어있어 더 맛있는 영양 비료</div>
							<input type="radio" name="season" value="02">비료 뿌리기<br><br>
							
							<img style="height:200px;" src="./images/fert_winter.png">
							<div class="story">외로워도 슬퍼도 울지 않는 1% 비료</div>
							<input type="radio" name="season" value="03">비료 뿌리기<br><br>
                        </div>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-12">
			                    <div class="reserve-seat-block">
			                    	<div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="back btn btn-danger" type="button">처음으로</button>
			                            </div>
			                        </div>
			                        <div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="finish btn btn-danger" type="submit">꽃 피우기</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                        </div>
                    </div>
                    </form>
                    <div class="story4 booking-checkbox_wrap">
                        <div class="booking-checkbox" align="center">
                        	<iframe style="border-style:none; height:500px;" src="gameResults.jsp" name="games" class="col-md-6 responsive-wrap"></iframe>
                        </div>
                        <div class="booking-checkbox" align="right">
							<div class="col-md-12">
			                    <div class="reserve-seat-block">
			                    	<div class="reserve-btn">
			                            <div class="featured-btn-wrap">                            	
			                            	<button class="back btn btn-danger" type="button">처음으로</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END BOOKING DETAILS -->
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
    		$("div.story1").hide();
    		$("div.story2").hide();
    		$("div.story3").hide();
    		$("div.story4").hide();
    		
    		$("button.button0").click(function() {
    			$("div.story0").hide();
    			$("div.story1").show();
    		});
    		
    		$("button.button1").click(function() {
    			$("div.story1").hide();
    			$("div.story2").show();
    		});
    		
    		$("button.button2").click(function() {
    			$("div.story2").hide();
    			$("div.story3").show();
    		});
    		
    		$("button.finish").click(function() {
    			$("div.story3").hide();
    			$("div.story4").show();
    		});
    		
    		$("button.back").click(function() {
    			location.href="game.jsp";
    		});
    	});
    </script>
</body>

</html>

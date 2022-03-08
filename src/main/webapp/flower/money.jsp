<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
    <title>개업식</title>
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
    <!-- Magnific popup JS -->
    <script src="../resources/js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="../resources/js/swiper.min.js"></script>  
    <style>
    		@font-face { font-family: 'RIDIBatang'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff'); font-weight: normal; font-style: normal; }
           
            .s {
            font-family: RIDIBatang;
            width: 680px;
            height: 620px;
        }
        .container{
            font-family: RIDIBatang;
        	width: 680px;
            height: 1000px;
        }
        .card-header{
             font-family: RIDIBatang;
        	 background-color: white;
        }
        .title{
        	font-family: RIDIBatang;
        }
        
    </style>
    
    
</head>

<body>
    <!--============================= HEADER =============================-->
      	<%@ include file="../header.jsp" %>

    <!--//END HEADER -->
    <!--============================= 제목 쓸곳,,, =============================-->
    <section class="light-bg booking-details_wrap">
        <div class="title">
                <div style="text-align:center;">
                <br><br><br>
                    <h3>🎊개업식에서는🎊</h3>
                    <h3>2가지의 꽃을 추천 드립니다.</h3>
                    <br><br>
            </div>
        </div>
</section>
    <!--//END RESERVE A SEAT -->
    <!--============================= 내용 ============================-->
<section class="light-bg booking-details_wrap">
           <div>
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
				

                
         <div class="swiper-slide">                 
		    <div class="container">
			     <div class="row justify-content-center">
                    <div class="col-7"  >
					          <div class="card">
						            <div class="card-header">
						   				<h4>금전수</h4>
						            </div>
					            <img class="s" id="money" src="../resources/images/money.jpg" alt="금전수"><br>
					            <div class="card-body">
					              <h5 class="card-title">"돈을 불러주는 돈나무"</h5>
					              <p class="card-text">금전수라는 이름은 생김새가 동전을 줄줄이 건 것 같다 하여 중국에서 유래했습니다. 다년간 잘 키우면 꽃을 볼 수 있습니다.</p>
					            </div>
					          </div>
				        </div>
			      </div>
		    </div>
       </div>
       
       
       <div class="swiper-slide">
		    <div class="container">
			     <div class="row justify-content-center">
                    <div class="col-7"  >
					          <div class="card">
						            <div class="card-header">
						   				<h4>해피트리</h4>
						            </div>
					            <img class="s" id="happy" src="../resources/images/happy.jpg" alt="해피트리"><br>
					            <div class="card-body">
					              <h5 class="card-title">"행복을 가져다 주는"</h5>
					              <p class="card-text">두릅나무과의 상록관목으로 중국의 남부지방과 동남아시아에서 주로 분포합니다.</p>
					            </div>
					          </div>
				        </div>
			      </div>
		    </div>
        </div>
        
                </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
    </div>

</section> 
			
    <!--//END BOOKING DETAILS -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container-1">
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
            slidesPerView: 1,
            slidesPerGroup: 1,
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

</body>

</html>

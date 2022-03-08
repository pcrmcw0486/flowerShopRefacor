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
    <title>축하</title>
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
                    <h3>🎉축하하는 마음을 전하고 싶을때는🎉</h3>
                    <h3>4가지의 꽃을 추천 드립니다.</h3>
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
						   				<h4>노란장미</h4>
						            </div>
					            <img class="s" id="yrose" src="../resources/images/yrose.jpg" alt="노란장미"><br>
					            <div class="card-body">
					              <h5 class="card-title">"완벽한 성취"</h5>
					              <p class="card-text">장미과 장미속에 속합니다. 높이는 2~3m이며 잎은 어긋나고 깃 모양으로, 5~6월에 개화합니다.</p>
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
						   				<h4>붉은 안개꽃</h4>
						            </div>
					            <img class="s" id="rgypsophila" src="../resources/images/rgypsophila.jpg" alt="붉은 안개꽃"><br>
					            <div class="card-body">
					              <h5 class="card-title">"기쁨의 순간"</h5>
					              <p class="card-text">안개꽃은 석죽과에 속하는 한해살이풀입니다. 원산지는 캅카스 등 아시아 등지이고 약 30~40cm까지 자랍니다.</p>
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
						   				<h4>팜파스 그라스</h4>
						            </div>
					            <img class="s" id="pampas" src="../resources/images/pampas.jpg" alt="팜파스 그라스"><br>
					            <div class="card-body">
					              <h5 class="card-title">"자랑스럽다"</h5>
					              <p class="card-text">벼과의 코르타데리아속의 여러해살이풀입니다. 원산지는 아르헨티나, 브라질 남부입니다.</p>
					            </div>
					          </div>
				        </div>
			      </div>
		    </div>
       </div>
       
       <div class="swiper-slide">
		    <div class="container">
			      <div class="row">
				        <div class="row justify-content-center">
                    <div class="col-7"  >
						            <div class="card-header">
						   				<h4>포인세티아</h4>
						            </div>
					            <img class="s" id="poinsettia" src="../resources/images/poinsettia.jpg" alt="포인세티아"><br>
					            <div class="card-body">
					              <h5 class="card-title">"축복, 축하합니다"</h5>
					              <p class="card-text">데극과에 속합니다. 개화 시기는 7~9월입니다. 가을부터 겨울까지 적색잎을 띄웁니다.</p>
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

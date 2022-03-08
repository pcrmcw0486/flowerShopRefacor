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
    <title>선택</title>
    <!-- Bootstrap CSS -->
   	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
        <style>
			#1{
				border:1px solid black; 
			}
        </style>
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
</head>

<body>
    <!--============================= HEADER =============================-->
        <%@ include file="../header.jsp" %>
    <!--//END HEADER -->
 
    <!--============================= BOOKING DETAILS =============================-->
    <section class="light-bg booking-details_wrap">
        <form action="recommend.jsp" method="GET">
        <div class="container">
	          <div id="1" style="text-align:center;" >
	          <h2>어떤 꽃을</h2>
	          <h2>추천해 드릴까요?</h2>
	          <br/><br/><br/>
	            <fieldset style = "border:1px solid gray; width: 900px; margin:0 auto;">
	             	<br/>
	                <h4>👩대상🧑<h4>
	                <br/>
	                	 <label class="btn btn-info btn-lg">
						    <input type="radio" name="object" value="연인" /> 연인  
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="object" value="친구" /> 친구 
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="object" value="부모님" /> 부모님
						  </label>
						  <br/><br/>
	            </fieldset>
	            </div>
            	<br><br>
	             <div id="2" style="text-align:center;">
	            <fieldset style = "border:1px solid gray; width: 900px; margin:0 auto;">
	                <br/>
	                <h4>🎉상황🎁</h4>
	                <br/>
	                	<label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="사랑"> 사랑
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="축하" /> 축하 
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="감사" /> 감사
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="위로" /> 위로
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="졸업입학" /> 졸업/입학
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="개업식" /> 개업식
						  </label>
						  <label class="btn btn-info btn-lg">
						    <input type="radio" name="purpose" value="집들이" /> 집들이
						  </label>
						  <br/><br/>
	            </fieldset>
	            <br><br>
	            </div>
            </div>
            			 <div id="in" style="text-align:center;">		
							<input type="submit" value="전송">
							<input type="reset" value="다시작성">
							<p/>
						</div>
        </form>
             <br/>
        </div>
    <br/><br/><br/><br/>
    </section>

    
    <!--//END BOOKING DETAILS -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container-a">
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</body>
    
    
   <%@ include file="../footer.jsp" %>

</html>

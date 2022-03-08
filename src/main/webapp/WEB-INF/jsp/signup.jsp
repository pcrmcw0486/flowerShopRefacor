<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Login V1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="../../resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../resources/css/util.css">
<link rel="stylesheet" type="text/css" href="../../resources/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<a href="../../index.jsp"><img src="../../resources/images/img-01.png"
												   alt="IMG"></a>
				</div>

				<form class="login100-form validate-form" action="signup"
					method="post">
					<span class="login100-form-title"> Member SignUp </span>

					<div class="wrap-input100">
						<input class="input100" type="text" name="id" id="id" placeholder="Id">
						<span class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					
					<div class="wrap-input100" data-validate="Password is required">
						<input class="input100" type="password" name="pw" id=""pw
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100" data-validate="Password is required">
						<input class="input100" type="text" name="name" id="name"
							placeholder="Name"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-user-circle fa-spin"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100" data-validate="Password is required">
						<input class="input100" type="text" name="phoneNumber" id="phoneNumber"
							placeholder="PhoneNumber"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-mobile fa-spin"
							aria-hidden="true"></i>
						</span>
					</div>
						
					<div class="">
						<button type="submit" class="login100-form-btn">SignUp</button>
					</div>

				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="../../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../resources/vendor/bootstrap/js/popper.js"></script>
	<script src="../../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../../resources/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Colorlib">
<meta name="description" content="#">
<meta name="keywords" content="#">
<!-- Favicons -->
<link rel="shortcut icon" href="#">
<!-- Page Title -->
<title>Flower Search &amp; Directory Website Template</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="../../resources/css/bootstrap.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900"
	rel="stylesheet">
<!-- Simple line Icon -->
<link rel="stylesheet"
	href="../../resources/css/simple-line-icons.css">
<!-- Themify Icon -->
<link rel="stylesheet"
	href="../../resources/css/themify-icons.css">
<!-- Hover Effects -->
<link rel="stylesheet"
	href="../../resources/css/set1.css">
<!-- Main CSS -->
<link rel="stylesheet"
	href="../../resources/css/style.css">

<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
	src="../../resources/js/jquery-3.2.1.min.js"></script>
<script src="../../resources/js/popper.min.js"></script>
<script
	src="../../resources/js/bootstrap.min.js"></script>
<style>
@font-face {
	font-family: 'RIDIBatang';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.s {
	font-family: RIDIBatang;
	width: 647px;
	height: 620px;
}

.container {
	font-family: RIDIBatang;
	width: 680px;
	height: 1000px;
}

.card-header {
	font-family: RIDIBatang;
	background-color: white;
}

.title {
	font-family: RIDIBatang;
}
</style>
</head>
<body>
	<!--============================= HEADER =============================-->
	<%@ include file="../header.jsp"%>
	<!--============================= DETAIL =============================-->
	<section>
		<div class="container-fluid card-header">
			<div class="row">
				<div class="col-md-12 responsive-wrap">
					<!--============================= 검색창 =============================-->
					<!--  <form action="SearchByFlang.do" method="post">
						<div class="form-wrap" style="padding: 10px">
							<div class="btn-group" role="group" aria-label="Basic example">
								<input type="text" placeholder="꽃말을 검색해 보세요" name="search_flang"
									class="btn-group1" style="width: 900px; text-align: center;">
								<button type="submit" class="btn-form" style="width: 200px">
									<span class="icon-magnifier search-icon"></span>검색<i
										class="pe-7s-angle-right"></i>
								</button>
							</div>
						</div>
					</form>-->
					<form action="SearchByFlang.do" name="options" method="post">

						<div class="col-md-12 responsive-wrap">
							<!-- 검색 버튼  -->
							<div class="row detail-filter-wrap ">
								<div class="col-md-3 featured-responseive"></div>
								<div class="col-md-5 featured-responsive">
									<input type="text"
										style="border: 2px solid pink; border-radius: 5px; width: 100%; text-align: center; color: black; font-size: 20px"
										placeholder="꽃말로 검색하기" class="btn-group1 card-header"
										name="search_flang">
								</div>
								<div class="col-md-4 featured-responsive">
									<button type="submit" class="btn-form center-block"
										style="border-radius: 5px">
										<span class="icon-magnifier search-icon"></span>검색
									</button>
								</div>
							</div>
						</div>
					</form>
					<!--============================= 키워드 버튼 =============================-->
					<form action="SearchByKeyword.do" method="post">
						<div class="mb-4 pb-2 ">
							<div class="container-fluid col-md-6">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="0">
										희망
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="1">
										사랑
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="2">
										우정
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox" name="keyword" value="3">
										기쁨
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="4">
										감사
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="5">
										성취
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="6">
										축하
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="7">
										행복
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox" name="keyword" value="8">
										축복
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="9">
										자랑
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="10">
										걱정
									</label>
								</div>
								<div class="btn-group" data-toggle="buttons">

									<label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="11">
										슬픔
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox" " name="keyword" value="12">
										위로
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="13">
										시작
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="14">
										존경
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox" name="keyword" value="15">
										응원
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="16">
										재물
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="17">
										분노
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="18">
										질투
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="19">최선
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox"  name="keyword" value="20">
										건강
									</label> <label class="btn btn-primary btn-lg"> <input
										type="checkbox" autocomplete="off" name="keyword" value="21">
										아름다움
									</label>
								</div>
							</div>
							<p></p>
							<div class="row container-fluid">
								<div class="col-md-5"></div>
								<div class="col-md-3">
									<button type="submit" class="btn-form "
										style="width: 200px; text-align: center; border-radius: 5px">
										<span class="icon-magnifier search-icon"> 키워드 검색</span>
									</button>
								</div>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="search_result.jsp" flush="false" />


	<!--//END DETAIL -->
	<!--============================= FOOTER =============================-->
	<%@ include file="../footer.jsp"%>
</body>

</html>

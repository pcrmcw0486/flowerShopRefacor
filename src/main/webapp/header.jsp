<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Colorlib">
<meta name="description" content="#">
<meta name="keywords" content="#">
<!-- Page Title -->
<title>TenTen : Find your flower</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900"
	rel="stylesheet">
<!-- Simple line Icon -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/simple-line-icons.css">
<!-- Themify Icon -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/themify-icons.css">
<!-- Hover Effects -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/set1.css">
<!-- Main CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">
<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>

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

	<div class="dark-bg sticky-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand"
							href="/">TenTen</a>
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
									System.out.println("header : " + request.getContextPath());
								%>
								<%
									boolean check = false;
									Enumeration<String> en = session.getAttributeNames();
									int j = 0;
									while (en.hasMoreElements()) {
										j++;
										String name = en.nextElement().toString();
										if (name.equals("valid")) {
											check = (boolean) session.getAttribute("valid");
											break;
										}

									}
									System.out.println("check " + check);
									if (check == false) {
								%>
								<li class="nav-item"><a class="nav-link"
									href="<%=request.getContextPath()%>/login.jsp">로그인</a></li>
								<li><a href="<%=request.getContextPath()%>/WEB-INF/jsp/signup.jsp" class="btn btn-outline-light top-btn"><span
										class="ti-plus"></span> 회원가입</a></li>
								<%
									} else {
										String usr_name = (String)session.getAttribute("USER_NAME");
								%>
								<li class="nav-item dropdown"> <%=usr_name%>환영합니다. </li>
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Game" %>
<jsp:useBean id="gameDAO" class="dao.GameResult" scope="session" />

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
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
    <style>
    	img {
    		height:200px;
    	}
    </style>
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

<body align="center">
<%
	ArrayList<Game> gameResults = gameDAO.getAllTests();
	request.setCharacterEncoding("utf-8");

	String ground = request.getParameter("ground");
	String color = request.getParameter("color");
	String season = request.getParameter("season");
		
	int id1 = 0, id2 = 0, id3 = 0;
	
	id1 = Integer.parseInt(ground);
	id2 = Integer.parseInt(color);
	id3 = Integer.parseInt(season);
	
	int id0 = id1 + id2 + id3;

	Game result = gameResults.get(id0);
	%>
	
	<div class="story0 booking-checkbox_wrap">
        <div class="booking-checkbox" align="center">
        <%
			if (id0 == 5 || id0 == 7 || id0 == 14 || id0 == 15 || id0 == 27) {
        %>
	        <div>
				<img src="./images/dead.jpg">
			</div>
			<br>
			<div>이런! 식물이 죽었어요ㅜㅜ</div>
		<%
			}
			else {
		%>
			<div>
				<img src="<%=result.getImage() %>">
			</div>
			<br>
			<div>짠! "<%=result.getResult() %>"입니다. 당신의 꽃이예요!</div>
		<%
			}
		%>
		</div>
    </div>
</body>
</html>
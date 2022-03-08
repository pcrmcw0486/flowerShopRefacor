<%@ page import="flowershop.flowerSearch.model.FlowerDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List flowerList = (List) request.getAttribute("SearchResult");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <style>
    		@font-face { font-family: 'RIDIBatang'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff'); font-weight: normal; font-style: normal; }
           
            .s {
            font-family: RIDIBatang;
            width: 647px;
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
	<hr>
	<div class="row light-bg  detail-options-wrap">
	<%
		if (flowerList != null) {
			for (int i = 0; i < flowerList.size(); i++) {
				FlowerDTO result = (FlowerDTO) flowerList.get(i);
				System.out.println("test : " + result.getFname());
				
	%>
	<div class="col-sm-8 col-md-4 col-lg-4 col-xl-4 featured-responsive">
		<div class="featured-place-wrap">
			<img src="<%=request.getContextPath() %>/resources/images/<%=result.getImage_Path() %>" 
				class="img-fluid" alt="<%= result.getFname()%>"> 
				<div class="featured-title-box card-header">
					<h6><%= result.getFname() %></h6>
					<p>꽃말 : <%= result.getDescription() %></p>
					<!-- <p>3 Reviews</p>
					<span> â¢ </span>
					<p>
						<span>$$$</span>$$
					</p>
					<ul>
						<li><span class="icon-location-pin"></span>
							<p>1301 Avenue, Brooklyn, NY 11230</p></li>
						<li><span class="icon-screen-smartphone"></span>
							<p>+44 20 7336 8898</p></li>
						<li><span class="icon-link"></span>
							<p>https://burgerandlobster.com</p></li>

					</ul> -->
					<div class="bottom-icons">
						<span class="ti-heart"></span> <span class="ti-bookmark"></span>
					</div>
				</div>
			
		</div>
	</div>
	<%
		}
		}
	%>
	<hr>

	<!--    ============================= 검색 결과 =============================
        			
                        <div class="col-sm-4 col-lg-4 col-xl-4 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="detail.html">
                                    <img src="images/featured2.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating-green">9.5</span>
                                    <div class="featured-title-box">
                                        <h6>Joeâs Shanghai</h6>
                                        <p>Restaurant </p> <span>â¢ </span>
                                        <p>3 Reviews</p> <span> â¢ </span>
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

                        <div class="col-sm-4 col-lg-4 col-xl-4 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="detail.html">
                                    <img src="images/featured3.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating">3.2</span>
                                    <div class="featured-title-box">
                                        <h6>Tasty Hand-Pulled Noodles</h6>
                                        <p>Restaurant </p> <span>â¢ </span>
                                        <p>3 Reviews</p> <span> â¢ </span>
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
                        <div class="col-sm-4 col-lg-4 col-xl-4 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="detail.html">
                                    <img src="images/featured4.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating-green">9.5</span>
                                    <div class="featured-title-box">
                                        <h6>Pizza - Cicis</h6>
                                        <p>Restaurant </p> <span>â¢ </span>
                                        <p>3 Reviews</p> <span> â¢ </span>
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
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    </div>
</body>
</html>
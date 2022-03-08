<%@ page import="flowershop.dto.TestColor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="testColorDAO" class="flowershop.dao.TestColorList" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>심리테스트</title>
<style>
	img {
		width:200px;
	}
</style>
</head>
<body>
	<%
		String id = request.getParameter("id");
		TestColor testColor = testColorDAO.getTestColorByID(id);
	%>
	<div class="container-fluid">
        <div class="row">
 			<div class="col-md-6 responsive-wrap">
 				<div class="row light-bg detail-options-wrap">
                    <div class="col-sm-3 col-lg-3 col-xl-3 featured-responsive">
                    	<div class="featured-place-wrap">
	                    	<img src="<%=testColor.getRecPhoto() %>">
                    	</div>
                    </div>
 				</div>
 			</div>
 			<div>
 				<h2><%=testColor.getColorNum() %>번 식물의 색</h2>
 			</div>
 			<div>
 				을 선택한 당신은 <%=testColor.getColorPerson() %>입니다.
				<p><%=testColor.getColorDescription() %></p>
 			</div>
 			<div>
 				이런 당신에게 추천하는 식물은 <strong>"<%=testColor.getRecName() %>"</strong>입니다.
 			</div>
        </div>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="flowershop.dto.TestTree" %>
<jsp:useBean id="testTreeDAO" class="flowershop.dao.TestTreeList" scope="session" />

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
		TestTree testTree = testTreeDAO.getTestTreeByID(id);
	%>

	<div class="container-fluid">
        <div class="row">
 			<div class="col-md-6 responsive-wrap">
 				<div class="row light-bg detail-options-wrap">
                    <div class="col-sm-3 col-lg-3 col-xl-3 featured-responsive">
                    	<div class="featured-place-wrap">
	                    	<img src="<%=testTree.getRecPhoto() %>">
                    	</div>
                    </div>
 				</div>
 			</div>
 			<div>
 				<h2><%=testTree.getTreeNum() %>번 나무</h2>
 			</div>
 			<div>
 				를 선택한 당신은 <%=testTree.getTreePerson() %>입니다.
				<p><%=testTree.getTreeDescription() %></p>
 			</div>
 			<div>
 				이런 당신에게 추천하는 식물은 <strong>"<%=testTree.getRecName() %>"</strong>입니다.
 			</div>
        </div>
    </div>
</body>
</html>
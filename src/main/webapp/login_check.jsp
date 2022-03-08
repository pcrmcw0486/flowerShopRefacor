<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ page import ="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//int status = Integer.parseInt(request.getParameter("status"));

		System.out.println("in check status");
		String status = "";
		if (request.getParameter("status") == null) {
			System.out.println("?! in login_check status param null");
			response.sendRedirect(request.getContextPath());
		} else {
			status = request.getParameter("status");
		}
		System.out.println(request.getParameter("status"));
		switch (status) {
		case "100":
			session.setAttribute("ID", request.getParameter("ID"));
			session.setAttribute("validate", 100);
			response.sendRedirect("index.html");
			// 세션설정
			break;
		case "404":
			session.setAttribute("validate", 404);
			response.sendRedirect("index.html");
			break;
		case "405":
			session.setAttribute("validate", 405);
			response.sendRedirect("index.html");
			break;
		default:
			response.sendRedirect(request.getContextPath());
		}
	%>
</body>
</html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>

<html>
<head>
<title>대상과 목적별 추천기능</title>
</head>
<body>
	  <div id="1" style="text-align:center;" >
		<%
			String[] str = new String[2]; 
			
			String[] obj = request.getParameterValues("object");
			for (String o : obj) {
				//out.println(o + "에게" );
				str[0] = o;
			}
		
			String[] pur = request.getParameterValues("purpose");
			for (String p : pur) {
				//out.println(p + "를 표현하기 위해서는" );
				str[1]=p;
			}
		%>
		<%if(str[0].equals("연인")==true && str[1].equals("사랑")==true) {%>
 		<%@ include file = "tulip.jsp" %>
 		<%}else if(str[0].equals("연인")==true && str[1].equals("감사")==true){%>
 		<%@ include file = "dahlia.jsp" %>
 		<%}else if(str[0].equals("친구")==true && str[1].equals("사랑")==true){%>
 		<%@ include file = "accacia.jsp" %>
 		<%}else if(str[0].equals("친구")==true && str[1].equals("감사")==true){%>
 		<%@ include file = "campanula.jsp" %>
 		<%}else if(str[0].equals("부모님")==true && str[1].equals("사랑")==true){%>
 		<%@ include file = "cotton.jsp" %>
 		<%}else if(str[0].equals("부모님")==true && str[1].equals("감사")==true){%>
 		<%@ include file = "carnation.jsp" %>
 		<%}else if(str[1].equals("축하")==true){%>
 		<%@ include file = "yrose.jsp" %>
 		<%}else if(str[1].equals("위로")==true){%>
 		<%@ include file = "merygold.jsp" %>
 		<%}else if(str[1].equals("졸업입학")==true){%>
 		<%@ include file = "freesia.jsp" %>
 		<%}else if(str[1].equals("개업식")==true){%>
 		<%@ include file = "money.jsp" %>
 		<%}else if(str[1].equals("집들이")==true){%>
 		<%@ include file = "bang.jsp" %>
 		<%}%>
	</div>
</body>
</html>
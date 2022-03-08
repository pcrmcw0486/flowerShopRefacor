package flowershop.UserInfo.controller;


import flowershop.UserInfo.model.UserDAO;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Slf4j
@WebServlet(name = "userInfo", urlPatterns = "/home/*")
public class UserInfoController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	// <%=request.getContextPath()%>
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		log.info("requestURI : {}", RequestURI);
		log.info("contextPath : {}", request.getContextPath());
		log.info("command : {} ", command);
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		if (command.equals("/login.action")) {
			log.info("login.action");
			int check = requestLogin(request);
			HttpSession session = request.getSession();
			System.out.println(check);
			switch (check) {
			case 200:
				session.setAttribute("ID", request.getParameter("ID"));
				session.setAttribute("valid", true);
				session.setAttribute("status", check);///
				response.sendRedirect("index.jsp");
				break;
			case 404:
			case 405:
				session.setAttribute("valid", false);
				session.setAttribute("status", check);
				session.setAttribute("ID", request.getParameter("ID"));
				RequestDispatcher rdd = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
				rdd.forward(request, response);
				break;
			default:
				break;
			}

			/// response.sendRedirect(request.getContextPath());
		}else if (command.contentEquals("/signup.action")){
			log.info("signup.action");
			requestSignUp(request);
			HttpSession session = request.getSession();
			session.setAttribute("valid", true);
			response.sendRedirect("index.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
	}

	public void requestSignUp(HttpServletRequest request) {
		UserDAO dao = UserDAO.getInstnace();
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String Name = request.getParameter("Name");
		String Phone = request.getParameter("phoneNumber");
		dao.SignUp(ID, PW, Name, Phone);
	}
	public int requestLogin(HttpServletRequest request) {
		UserDAO dao = UserDAO.getInstnace();
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		if (ID == null)
			ID = "";
		if (PW == null)
			PW = "";
		System.out.println("ID : " + ID + " PW : " + PW);
		int check = dao.loginCheck(ID, PW, request);
		System.out.println("requestLogin : " + check);
		request.setAttribute("status", String.valueOf(check));
		return 200;
	}

}

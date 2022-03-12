package flowershop.flowerSearch.Controller;



import flowershop.flowerSearch.model.FlowerDAO;
import flowershop.flowerSearch.model.FlowerDTO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="searchControllerJSP", urlPatterns = "*.do")
public final class SearchController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(request, response);
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		System.out.println("here");
		System.out.println(command);
		if(command.equals("/Search/SearchByOptions.do") ) {
			requestSearchByOptions(request);
			RequestDispatcher rd = request.getRequestDispatcher("/Search/search_flower.jsp");
			rd.forward(request, response);
		}else if(command.equals("/SearchByOptions.do")){
			requestSearchByOptions(request);
			RequestDispatcher rd = request.getRequestDispatcher("/Search/search_flower.jsp");
			rd.forward(request, response);
		}else if(command.equals("/Search/SearchByKeyword.do")) {
			System.out.println("in search by keyword");
			requestSearchByKeyword(request);
			RequestDispatcher rd = request.getRequestDispatcher("search_flang.jsp");
			rd.forward(request,response);
			
		}else if(command.equals("/Search/SearchByFlang.do")) {
			System.out.println("in search by falng");
			requestSearchByFlang(request);
			RequestDispatcher rd = request.getRequestDispatcher("search_flang.jsp");
			rd.forward(request,response);
		}
	};

	public void requestSearchByOptions(HttpServletRequest request) {
		FlowerDAO dao = FlowerDAO.getInstnace();
		List<FlowerDTO> flowerlist = new ArrayList<FlowerDTO>();
		
		System.out.println("search by option !");
		//request?? ???? ?????? ?? ??????
		String[] season_param = request.getParameterValues("season");
		String[] color_param = request.getParameterValues("color");
		String search_name = request.getParameter("search_name");
		flowerlist = dao.serachByOptions(search_name, season_param, color_param);
		request.setAttribute("SearchResult", flowerlist);
		request.setAttribute("type", 0);
	}
	
	public void requestSearchByKeyword(HttpServletRequest request) {
		FlowerDAO dao = FlowerDAO.getInstnace();
		List<FlowerDTO> flowerlist = new ArrayList<FlowerDTO>();
		
		//request?? ???? ?????? ?? ??????
		System.out.println("----------------------");
		System.out.println("request here!");
		String[] keyword_param= request.getParameterValues("keyword");
		System.out.println(keyword_param);
		flowerlist = dao.serachByKeyword(keyword_param);
		request.setAttribute("SearchResult", flowerlist);
		request.setAttribute("type", 1);
		System.out.println("----------------------");
	}
	
	public void requestSearchByFlang(HttpServletRequest request) {
		FlowerDAO dao = FlowerDAO.getInstnace();
		List<FlowerDTO> flowerlist = new ArrayList<FlowerDTO>();
		
		
		//request?? ???? ?????? ?? ??????
		String search_flang = request.getParameter("search_flang");
		flowerlist = dao.serachByFlang(search_flang);
		request.setAttribute("SearchResult", flowerlist);
		request.setAttribute("type", 2);
	}
}

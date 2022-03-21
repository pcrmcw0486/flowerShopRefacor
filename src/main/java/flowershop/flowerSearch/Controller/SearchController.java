package flowershop.flowerSearch.Controller;

import flowershop.flowerSearch.model.FlowerDAO;
import flowershop.flowerSearch.model.FlowerDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/Search")
public class SearchController {

    @GetMapping("/search_flang")
    public String searchByFlangForm() {
        //==>SearchByFlang.do ( 꽃말 typing)
        //SearchByKeyword.do (keyword 클릭)
        return "/Search/search_flang";
    }

    @PostMapping("/SearchByKeyword")
    public String searchByKeyword(HttpServletRequest request){
        requestSearchByKeyword(request);
        return "/Search/search_flang";
    }

    @PostMapping("/SearchByFlang")
    public String searchByFlang(HttpServletRequest request) {
        requestSearchByFlang(request);
        return "/Search/search_flang";
    }


    //꽃 이름 검색
    @GetMapping("/search_flower")   // => searchByOptions.do
    public String searchByFnameForm() {
        return "/Search/search_flower";
    }

    @PostMapping("/SearchByOptions")
    public String searchByOptions(HttpServletRequest request) {
        log.info("searchByOptions contextPath: {}",request.getContextPath());
        requestSearchByOptions(request);
        return "/Search/search_flower";
    }


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

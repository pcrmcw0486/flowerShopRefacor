package flowershop.UserInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class tempController {
    @GetMapping("/")
    public String welcome() {
        return "index";
    }

    @GetMapping("/posts/choice")
    public String recommendForm(String object, String purpose) {
        return "/posts/choice";
    }

    @GetMapping("/posts/recommend")
    public String recommendBySituation(String object, String purpose) {
        return "/posts/recommend";
    }
}

package flowershop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class tempController {
    @GetMapping("/")
    public String welcome() {
        System.out.println("welcome");
        return "index";
    }
}

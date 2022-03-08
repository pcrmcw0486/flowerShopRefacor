package flowershop.UserInfo.controller;

import flowershop.UserInfo.domain.User;
import flowershop.UserInfo.domain.UserForm;
import flowershop.UserInfo.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@Slf4j
public class UserController {

    private final UserService userService;

    @GetMapping(path = "/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping(path = "login")
    public String login(String ID, String PW) {
        Long savedId = userService.login(ID, PW);
        if (savedId == null) {
            log.info("login 실패");
            return "login";
        }
        log.info("login 성공");
        return "redirect:/";
    }

    @GetMapping(path = "/signup")
    public String signUpForm(){return "signup";}

    @PostMapping(path="/signup")
    public String signUp(@Valid UserForm userForm, BindingResult result) {
        if (result.hasErrors()) {
            log.info("회원 가입 Form 부족");
            return "signup";
        }
        User user = new User();
        //TODO 추후에 변경
        user.setID(userForm.getId());
        user.setPW(userForm.getPw());
        user.setName(userForm.getName());
        user.setPhoneNum(userForm.getPhoneNumber());
        Long joinId = userService.join(user);
        if(joinId == null) {
            log.info("회원 가입 실패");
            return "signup";
        }
        log.info("회원 가입 성공");
        return "redirect:/";
    }
}

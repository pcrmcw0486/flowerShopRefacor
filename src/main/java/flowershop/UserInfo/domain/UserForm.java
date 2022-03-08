package flowershop.UserInfo.domain;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class UserForm {
    @NotEmpty(message = "ID를 입력하세요.")
    private String id;
    @NotEmpty(message = "PW를 입력하세요.")
    private String pw;
    @NotEmpty(message = "이름을 입력하세요.")
    private String name;
    @NotEmpty(message = "휴대전화를 입력하세요.")
    private String phoneNumber;
}

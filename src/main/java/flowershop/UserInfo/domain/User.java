package flowershop.UserInfo.domain;


import lombok.Data;

import java.time.LocalDate;

@Data
public class User {
    private Long uId;
    private String ID;
    private String PW;
    private String name;
    private Gender gender;
    private String phoneNum;
    private LocalDate birthDate;
    private String address;
    private String gameStatus;
}

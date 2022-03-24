package flowershop.UserInfo.domain;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Getter @Setter
@Table(name="UserInfo")  //예약어 User조심.
public class User {
    @Id
    @GeneratedValue
    @Column(name= "user_id")
    private Long uId;

    private String ID;
    private String PW;
    private String name;
    private String phoneNum;
    private LocalDate birthDate;
}

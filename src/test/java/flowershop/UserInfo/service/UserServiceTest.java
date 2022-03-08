package flowershop.UserInfo.service;

import flowershop.UserInfo.domain.User;
import flowershop.UserInfo.repository.MemoryUserRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;


class UserServiceTest {

    MemoryUserRepository userRepository = new MemoryUserRepository();
    UserService userService = new UserService(userRepository);
    String ID = "pcrmcw0486";
    String PW = "123123";
    @AfterEach
    void afterEach() {
        userRepository.clearStorage();
    }

    @Test
    @DisplayName("회원가입 성공")
    void joinSuccess() {
        //given
        User user= new User();
        user.setID(ID);
        //when
        Long successUID = userService.join(user);
        User savedUser = userRepository.findById(successUID).get();
        //then
        assertThat(user).isEqualTo(savedUser);
        assertThat(user.getUId()).isEqualTo(savedUser.getUId());
        assertThat(user.getID()).isEqualTo(savedUser.getID());
    }

    @Test
    @DisplayName("회원 가입 실패 (중복 ID)")
    void joinFail() {
        //given
        User userA = new User();
        userA.setID(ID);
        User userB = new User();
        userB.setID(ID);
        //when
        Long savedId = userService.join(userA);
        Long failId = userService.join(userB);
        //then
        assertThat(savedId).isEqualTo(0);
        assertThat(failId).isNull();
    }

    @Test
    @DisplayName("로그인 성공")
    void login() {
        //given
        User user = new User();
        user.setID(ID);
        user.setPW(PW);
        Long savedId = userService.join(user);
        //when
        Long loginId = userService.login(ID, PW);
        //then
        assertThat(savedId).isEqualTo(0);
        assertThat(savedId).isEqualTo(loginId);
        assertThat(loginId).isNotNull();
    }

    @Test
    @DisplayName("로그인 실패 : 올바르지 않은 ID")
    public void duplicateID() throws Exception{
        //given
        User user = new User();
        user.setID(ID);
        user.setPW(PW);
        userService.join(user);
        //when
        Long loginId = userService.login("", "");
        //then
        assertThat(loginId).isNull();
    }

    @Test
    @DisplayName("로그인 실패 : 올바르지 않은 PW")
    public void invalidPW() throws Exception{
        //given
        User user = new User();
        user.setID(ID);
        user.setPW(PW);
        userService.join(user);
        //when
        Long loginId = userService.login(ID, "");
        //then
        assertThat(loginId).isNull();
    }
}
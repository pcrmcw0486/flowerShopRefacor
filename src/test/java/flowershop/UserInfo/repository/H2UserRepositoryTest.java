package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.transaction.Transactional;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class H2UserRepositoryTest {

    @Autowired H2UserRepository h2UserRepository;

    @Test
    @Transactional
    //@Rollback(value = false)
    void save() {
        //given
        User user = new User();
        user.setID("test");
        user.setPW("test");
        //when
        User savedUser = h2UserRepository.save(user);
        //then
        assertEquals(user,savedUser);
    }


}
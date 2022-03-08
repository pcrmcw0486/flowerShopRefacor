package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

class MemoryUserRepositoryTest {

    private MemoryUserRepository memoryUserRepository = new MemoryUserRepository();

    @AfterEach
    void afterEach() {memoryUserRepository.clearStorage();}

    @Test
    void save() {
        //given
        User user = new User();
        user.setID("pcrmcw0486");
        user.setPhoneNum("010-1234-1234");
        //when
        User savedUser = memoryUserRepository.save(user);
        //then
        Assertions.assertThat(savedUser.getUId()).isEqualTo(0);
        Assertions.assertThat(user.getUId()).isEqualTo(savedUser.getUId());
        Assertions.assertThat(user.getID()).isEqualTo(savedUser.getID());
    }

    @Test
    void findByName() {
         //given
        String id = "pcrmcw0486";
        User user = new User();
        user.setID(id);
        user.setPhoneNum("010-1234-1234");
        memoryUserRepository.save(user);
        //when
        User findUser = memoryUserRepository.findByName(id).orElse(null);
        //then
        Assertions.assertThat(findUser).isNotNull();
        Assertions.assertThat(findUser.getUId()).isEqualTo(user.getUId());
        Assertions.assertThat(findUser.getID()).isEqualTo(user.getID());
    }

    @Test
    void findById() {
        //given
        User user = new User();
        user.setID("pcrmcw0486");
        //when
        User savedUser = memoryUserRepository.save(user);
        User findUser = memoryUserRepository.findById(user.getUId()).get();
        //then
        Assertions.assertThat(savedUser).isEqualTo(findUser);
        Assertions.assertThat(savedUser.getID()).isEqualTo(findUser.getID());
        Assertions.assertThat(findUser.getUId()).isEqualTo(0);
        Assertions.assertThat(findUser.getUId()).isEqualTo(findUser.getUId());
    }
}
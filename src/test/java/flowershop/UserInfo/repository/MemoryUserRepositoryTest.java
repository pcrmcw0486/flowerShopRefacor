package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MemoryUserRepositoryTest {

    @Autowired
    MemoryUserRepository memoryUserRepository;

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
    @DisplayName("user ID 로 찾기")
    void findByName() {
         //given
        String id = "pcrmcw0486";
        User user = new User();
        user.setID(id);
        user.setPhoneNum("010-1234-1234");
        memoryUserRepository.save(user);
        //when
        List<User> result = memoryUserRepository.findByName(id);
        //then
        Assertions.assertThat(result.size()).isEqualTo(1);
        User findUser = result.get(0);
        Assertions.assertThat(findUser.getUId()).isEqualTo(user.getUId());
        Assertions.assertThat(findUser.getID()).isEqualTo(user.getID());
    }

    @Test
    @DisplayName("User PK 로 찾기")
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
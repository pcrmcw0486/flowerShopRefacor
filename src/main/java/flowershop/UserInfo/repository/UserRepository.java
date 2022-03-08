package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository {
    User save(User user);

    Optional<User> findByName(String id);

    Optional<User> findById(Long id);

}

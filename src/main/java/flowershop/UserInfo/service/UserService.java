package flowershop.UserInfo.service;

import flowershop.UserInfo.repository.UserRepository;
import flowershop.UserInfo.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository userRepository;

    //TODO : 예외처리
    public Long join(User user) {
        Optional<User> result = userRepository.findByName(user.getID());
        if (result.isEmpty()) {
            userRepository.save(user);
            return user.getUId();
        }
        return null;
    }

    //TODO : 예외처리
    public Long login(String ID, String PW) {
        Optional<User> result = userRepository.findByName(ID);
        if (result.isPresent()) {
            User user = result.get();
            if (user.getPW().equals(PW)) {
                return user.getUId();
            }
            return null;
        }
        return null;
    }
}

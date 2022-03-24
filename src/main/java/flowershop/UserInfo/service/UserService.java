package flowershop.UserInfo.service;

import flowershop.UserInfo.repository.UserRepository;
import flowershop.UserInfo.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Transactional(readOnly = true)
@Service
public class UserService {
    private final UserRepository userRepository;

    //TODO : 예외처리
    @Transactional
    public Long join(User user) {
        List<User> result = userRepository.findByName(user.getID());
        if (result.isEmpty()) {
            userRepository.save(user);
            return user.getUId();
        }
        return null;
    }

    //TODO : 예외처리
    public Long login(String ID, String PW) {
        List<User> result = userRepository.findByName(ID);
        if (result.size()==1) {
            User user = result.get(0);
            if (user.getPW().equals(PW)) {
                return user.getUId();
            }
            return null;
        }
        return null;
    }
}

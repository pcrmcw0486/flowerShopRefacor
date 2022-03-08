package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Repository
public class MemoryUserRepository implements UserRepository{
    private static final Map<Long, User> storage = new HashMap<Long, User>();
    private static long sequence = 0L;

    @Override
    public User save(User user) {
        user.setUId(sequence++);
        storage.put(user.getUId(), user);
        return user;
    }

    @Override
    public Optional<User> findByName(String ID) {
        return storage.values().stream()
                .filter(user -> user.getID().equals(ID))
                .findAny();
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.ofNullable(storage.get(id));
    }

    public void clearStorage(){
        storage.clear();
        sequence = 0L;
    }
}

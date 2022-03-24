package flowershop.UserInfo.repository;

import flowershop.UserInfo.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import java.util.List;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class H2UserRepository implements UserRepository{

    private final EntityManager em;

    @Override
    public User save(User user) {
        em.persist(user);
        return user;
    }

    @Override
    public List<User> findByName(String id) {
        return em.createQuery("select u from User u where u.ID= :id",User.class)
                .setParameter("id",id)
                .getResultList();
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.ofNullable(em.find(User.class, id));
    }
}

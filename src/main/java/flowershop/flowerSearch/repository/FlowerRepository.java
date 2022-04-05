package flowershop.flowerSearch.repository;

import flowershop.flowerSearch.domain.Flower;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
@RequiredArgsConstructor
public class FlowerRepository {
    private final EntityManager em;

    public void save(Flower flower) {
        em.persist(flower);
    }
}

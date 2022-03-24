package flowershop.flowerSearch.repository;

import flowershop.flowerSearch.domain.Flower;
import flowershop.flowerSearch.domain.FlowerSeason;
import flowershop.flowerSearch.domain.Season;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
@RequiredArgsConstructor
public class FlowerSeasonRepository {
    private final EntityManager em;

    public void save(FlowerSeason flowerSeason) {
        em.persist(flowerSeason);
    }
}

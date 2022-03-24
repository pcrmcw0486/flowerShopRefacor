package flowershop.flowerSearch.repository;

import flowershop.flowerSearch.domain.Season;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
@RequiredArgsConstructor
public class SeasonRepository {
    private final EntityManager em;

    public Season save(Season season) {
        em.persist(season);
        return season;
    }


}

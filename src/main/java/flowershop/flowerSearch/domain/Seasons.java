package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

import static javax.persistence.FetchType.*;

@Entity
@NoArgsConstructor
@Getter
public class Seasons {
    @EmbeddedId
    private SeasonId id;

    @MapsId(value = "flowerId")
    @ManyToOne(fetch = LAZY)
    private Flower flower;

    public Seasons(Flower flower, Season seasons) {
        this.id = new SeasonId(flower.getId(), seasons);
        this.flower = flower;
    }
}

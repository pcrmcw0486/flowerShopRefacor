package flowershop.flowerSearch.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class FlowerSeason {
    @Id
    @GeneratedValue
    private Long fsId;

    @ManyToOne
    @JoinColumn(name = "flower_id")
    private Flower flower;

    @ManyToOne
    @JoinColumn(name="season_id")
    private Season season;

}

package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Data
@NoArgsConstructor
public class SeasonId implements Serializable {
    FlowerId flowerId;
    Season season;

    public SeasonId(FlowerId flowerId, Season season) {
        this.flowerId = flowerId;
        this.season = season;
    }
}

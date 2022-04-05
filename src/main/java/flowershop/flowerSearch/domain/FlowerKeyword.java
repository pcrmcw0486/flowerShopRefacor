package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashMap;
import java.util.HashSet;

import static javax.persistence.FetchType.*;


@Entity
@NoArgsConstructor
@Data
public class FlowerKeyword {

    @EmbeddedId
    private FlowerKeywordId id;

    @MapsId(value = "flowerId")
    @ManyToOne(fetch = LAZY)
    private Flower flower;

    public FlowerKeyword(Flower flower, Keyword keyword) {
        this.id = new FlowerKeywordId(flower.getId(), keyword);
        this.flower = flower;
    }
}

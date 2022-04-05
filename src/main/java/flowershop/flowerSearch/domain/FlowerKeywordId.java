package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.io.Serializable;

@Embeddable
@NoArgsConstructor
@Data
public class FlowerKeywordId implements Serializable {

    private FlowerId flowerId;

    @Enumerated(EnumType.STRING)
    private Keyword keyword;

    public FlowerKeywordId(FlowerId flowerId, Keyword keyword) {
        this.flowerId = flowerId;
        this.keyword = keyword;
    }
}

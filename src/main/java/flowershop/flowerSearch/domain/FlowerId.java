package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.awt.*;
import java.io.Serializable;

@Data
@Embeddable
@NoArgsConstructor
public class FlowerId implements Serializable {

    @Column(name = "flower_id")
    private String flowerName;

    @Column(name="color")
    @Enumerated(EnumType.STRING)
    private Color color;

    public FlowerId(String flowerName, Color color) {
        this.flowerName = flowerName;
        this.color = color;
    }
}

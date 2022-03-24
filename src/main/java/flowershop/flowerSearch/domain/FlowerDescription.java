package flowershop.flowerSearch.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class FlowerDescription {
    @Id
    @GeneratedValue
    @Column(name = "flowerDescription_id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "flower_id")
    private Flower fLower;

    @ManyToOne
    @JoinColumn(name="color_id")
    private Color color;

    private String flowerLang;
    private String imageUrl;
}

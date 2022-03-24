package flowershop.flowerSearch.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter @Setter
public class Categorized {

    @Id
    @GeneratedValue
    @Column(name = "category_id")
    private Long id;
    @ManyToOne
    @JoinColumn(name = "flower_id")
    private Flower flower;

    @ManyToOne
    @JoinColumn(name = "keyword_id")
    private Keyword keyword;

    @ManyToOne
    @JoinColumn(name= "color_id")
    private Color color;

}

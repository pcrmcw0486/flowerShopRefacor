package flowershop.flowerSearch.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Getter @Setter
public class Color {
    @Id @GeneratedValue
    @Column(name="color_id")
    private Long id;
    @Column(name="color_name")
    private String colorName;
}

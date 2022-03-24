package flowershop.flowerSearch.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Getter
@Setter
public class Keyword {

    @Id
    @GeneratedValue
    @Column(name="keyword_id")
    private Long id;

    @Column(name="keyword_name")
    private String meaning;
}

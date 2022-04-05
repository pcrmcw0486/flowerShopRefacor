package flowershop.flowerSearch.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@Entity
@NoArgsConstructor
public class Flower {

    @EmbeddedId
    private FlowerId id;

    private String symbol;
    private String imageUrl;

    @OneToMany(mappedBy = "flower", cascade = CascadeType.ALL)
    List<FlowerKeyword> keywords = new ArrayList<>();

    @OneToMany(mappedBy = "flower", cascade = CascadeType.ALL)
    List<Seasons> seasons = new ArrayList<>();

    public Flower(FlowerId id, String symbol, String imageUrl) {
        this.id = id;
        this.symbol = symbol;
        this.imageUrl = imageUrl;
    }

    public Flower(FlowerId id, FlowerFeatureDTO feature) {
        this.id = id;
        this.imageUrl = feature.getUrl();
        this.symbol = feature.getSymbol();
        for (Keyword keyword : feature.getKeywords()) {
            setKeywords(keyword);
        }
    }

    public void setKeywords(Keyword keyword){
        FlowerKeyword flowerKeyword = new FlowerKeyword(this, keyword);
        this.keywords.add(flowerKeyword);
    }

    public void setSeasons(List<Season> seasonList) {
        for (Season season : seasonList) {
            Seasons seasonEntity = new Seasons(this, season);
            seasons.add(seasonEntity);
        }
    }
}

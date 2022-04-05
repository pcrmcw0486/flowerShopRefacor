package flowershop.flowerSearch.domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class FlowerFeatureDTO {
    private Color color;
    private String url;
    private String symbol;
    private List<Keyword> keywords = new ArrayList<>();
}

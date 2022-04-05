package flowershop.flowerSearch.domain;

import lombok.Data;

import java.util.ArrayList;

@Data
public class FlowerDTO {
    private String flowerName;
    private ArrayList<Season> seasons = new ArrayList<>();
    private ArrayList<FlowerFeatureDTO> features = new ArrayList<>();


}

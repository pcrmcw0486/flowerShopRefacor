package flowershop.flowerSearch.repository;

import flowershop.flowerSearch.domain.*;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class FlowerRepositoryTest {

    @Autowired
    FlowerRepository flowerRepository;

    static boolean flag = false;


    @BeforeEach
    @Transactional
    @Rollback(value = false)
    @Test
    void beforeEach() {
        if (!flag) {
            FlowerDTO flowerDTO1 = makeFeature("flower1");
        }
        flag = true;
    }

    private FlowerDTO makeFeature(String name) {
        FlowerDTO flowerDTO = new FlowerDTO();
        flowerDTO.setFlowerName(name);

        ArrayList<Season> seasons = new ArrayList<>();
        seasons.add(Season.Spring);

        ArrayList<FlowerFeatureDTO> features = new ArrayList<>();
        FlowerFeatureDTO feature1 = new FlowerFeatureDTO();
        feature1.setColor(Color.RED);
        feature1.setUrl("url1");
        feature1.setSymbol("symbol1");
        ArrayList<Keyword> keywords1 = new ArrayList<>();
        keywords1.add(Keyword.keyword1);
        keywords1.add(Keyword.keyword2);
        feature1.setKeywords(keywords1);
        features.add(feature1);

        flowerDTO.setFeatures(features);
        flowerDTO.setSeasons(seasons);
        return flowerDTO;
    }

    @Test
    @Transactional
    @Rollback(value = false)
    void save() {
        FlowerDTO flowerDTO1 = makeFeature("flower1");
        System.out.println(flowerDTO1);
        System.out.println("=-==-=-=-=-=-=-=");
//        ArrayList<Flower> flowers = new ArrayList<>();
        for (FlowerFeatureDTO feature : flowerDTO1.getFeatures()) {
            FlowerId flowerID = new FlowerId(flowerDTO1.getFlowerName(), feature.getColor());
            Flower flower = new Flower(flowerID, feature);
            flower.setSeasons(flowerDTO1.getSeasons());
//            flowers.add(flower);
            flowerRepository.save(flower);
        }
    }

}
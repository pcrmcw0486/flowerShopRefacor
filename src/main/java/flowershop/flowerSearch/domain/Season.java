package flowershop.flowerSearch.domain;

import javax.swing.*;

public enum Season {
    Spring("봄"),
    Summer("여름"),
    Fall("가을"),
    Winter("겨울");


    private String koSeason;

    Season(String koSeason) {
        this.koSeason = koSeason;
    }
}

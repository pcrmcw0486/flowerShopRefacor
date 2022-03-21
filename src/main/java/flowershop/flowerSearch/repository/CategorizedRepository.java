package flowershop.flowerSearch.repository;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class CategorizedRepository {
    private Long flowerId;
    private Integer keywordId;
    private Integer colorId;
}

package lk.kavishmanjitha.softlogic_web_service.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;

@Entity
@Data
public class Product {
    @Id
    private int id;
    private String title;
    private String description;
    private BigDecimal price;
    private String category;
    private String image;
}

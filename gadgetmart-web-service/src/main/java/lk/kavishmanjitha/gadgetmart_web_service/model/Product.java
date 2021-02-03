package lk.kavishmanjitha.gadgetmart_web_service.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;

@Data
public class Product {
    private int id;
    private String title;
    private String description;
    private BigDecimal price;
    private String category;
    private String image;
    private String source;
}

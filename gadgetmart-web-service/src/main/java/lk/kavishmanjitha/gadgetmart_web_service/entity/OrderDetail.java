package lk.kavishmanjitha.gadgetmart_web_service.entity;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class OrderDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private int oId;
    private String title;
    private String description;
    private BigDecimal price;
    private String category;
    private String image;
    private int qty;
    private double subTotal;
}

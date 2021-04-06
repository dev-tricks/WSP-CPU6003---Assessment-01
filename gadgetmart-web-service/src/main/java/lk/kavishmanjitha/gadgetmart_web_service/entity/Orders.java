package lk.kavishmanjitha.gadgetmart_web_service.entity;

import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private int uId;
    private int bId;
    private int sId;
    private String createDate;
    private String status;
    private BigDecimal totalPrice;
    private BigDecimal totalItemQty;
    private String note;

}

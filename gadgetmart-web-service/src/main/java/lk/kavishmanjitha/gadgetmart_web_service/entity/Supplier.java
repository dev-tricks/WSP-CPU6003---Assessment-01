package lk.kavishmanjitha.gadgetmart_web_service.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Supplier {
    @Id
    private int id;
    private String companyName;
    private String productApi;
    private String address;
    private String telephone;
    private String mobile;
    private String fax;
    private String email;
    private String webSite;
}

package lk.kavishmanjitha.gadgetmart_web_service.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class ShippingAddress {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;
  private String firstName;
  private String lastName;
  private String phone;
  private String address1;
  private String address2;
  private String company;
  private String country;
  private String city;
  private String postcode;
  private String state;

}

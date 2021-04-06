package lk.kavishmanjitha.gadgetmart_web_service.model;

import java.util.List;

import javax.persistence.Entity;

import lk.kavishmanjitha.gadgetmart_web_service.entity.BillingAddress;
import lk.kavishmanjitha.gadgetmart_web_service.entity.OrderDetail;
import lk.kavishmanjitha.gadgetmart_web_service.entity.ShippingAddress;
import lombok.Data;

@Data
public class Order {

  private List<OrderDetail> orderDetails;
  private BillingAddress billingAddress;
  private ShippingAddress shippingAddress;
}

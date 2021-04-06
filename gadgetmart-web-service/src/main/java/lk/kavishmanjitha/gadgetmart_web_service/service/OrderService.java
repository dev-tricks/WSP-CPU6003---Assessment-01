package lk.kavishmanjitha.gadgetmart_web_service.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lk.kavishmanjitha.gadgetmart_web_service.entity.BillingAddress;
import lk.kavishmanjitha.gadgetmart_web_service.entity.OrderDetail;
import lk.kavishmanjitha.gadgetmart_web_service.entity.Orders;
import lk.kavishmanjitha.gadgetmart_web_service.entity.ShippingAddress;
import lk.kavishmanjitha.gadgetmart_web_service.model.Order;
import lk.kavishmanjitha.gadgetmart_web_service.repository.BillingAddressRepository;
import lk.kavishmanjitha.gadgetmart_web_service.repository.OrderDetailRepository;
import lk.kavishmanjitha.gadgetmart_web_service.repository.OrderRepository;
import lk.kavishmanjitha.gadgetmart_web_service.repository.ShippingAddressRepository;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class OrderService {

  final BillingAddressRepository billingAddressRepository;
  final ShippingAddressRepository shippingAddressRepository;
  final OrderRepository orderRepository;
  final OrderDetailRepository orderDetailRepository;

  public void createOrder(final Order order) {

    final BillingAddress saveBillingAddress = billingAddressRepository
        .save(order.getBillingAddress());
    final ShippingAddress saveShippingAddress = shippingAddressRepository
        .save(order.getShippingAddress());

    final Orders orders = new Orders();
    orders.setUId(1);
    orders.setBId(saveBillingAddress.getId());
    orders.setSId(saveShippingAddress.getId());
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    orders.setCreateDate(sdf.format(new Date()));
    orders.setStatus("ORDER_CREATED");
    orders.setTotalPrice(new BigDecimal(order.getOrderDetails().size()));
    orders.setTotalItemQty(new BigDecimal(order.getOrderDetails().size()));
    orders.setNote("");

    final Orders saveOrders = orderRepository.save(orders);

    for (final OrderDetail orderDetail : order.getOrderDetails()) {
      orderDetail.setOId(saveOrders.getId());
      orderDetailRepository.save(orderDetail);
    }
  }
}

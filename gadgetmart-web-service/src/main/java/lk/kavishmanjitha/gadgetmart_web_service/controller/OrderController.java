package lk.kavishmanjitha.gadgetmart_web_service.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lk.kavishmanjitha.gadgetmart_web_service.model.Order;
import lk.kavishmanjitha.gadgetmart_web_service.model.Product;
import lk.kavishmanjitha.gadgetmart_web_service.service.OrderService;
import lombok.AllArgsConstructor;

@RestController
@CrossOrigin
@RequestMapping("/api/gadgetmart/v1/order")
@AllArgsConstructor
public class OrderController {

  @Autowired
  private OrderService orderService;

  @PostMapping("/create")
  void createOrder(@RequestBody Order order) {
    orderService.createOrder(order);
  }
}

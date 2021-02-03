package lk.kavishmanjitha.softlogic_web_service.controller;

import lk.kavishmanjitha.softlogic_web_service.entity.Product;
import lk.kavishmanjitha.softlogic_web_service.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping
@CrossOrigin
@RestController
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/product-list")
    List<Product> productList() {
        return productService.productList();
    }
}

package lk.kavishmanjitha.gadgetmart_web_service.controller;

import lk.kavishmanjitha.gadgetmart_web_service.model.Product;
import lk.kavishmanjitha.gadgetmart_web_service.service.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/gadgetmart/v1/product")
@AllArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/list")
    List<Product> productList() {
        return productService.productList();
    }
}

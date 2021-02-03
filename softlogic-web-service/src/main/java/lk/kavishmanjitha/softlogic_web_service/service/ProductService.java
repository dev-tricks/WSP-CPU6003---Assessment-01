package lk.kavishmanjitha.softlogic_web_service.service;

import lk.kavishmanjitha.softlogic_web_service.entity.Product;
import lk.kavishmanjitha.softlogic_web_service.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> productList() {
        return productRepository.findAll();
    }
}

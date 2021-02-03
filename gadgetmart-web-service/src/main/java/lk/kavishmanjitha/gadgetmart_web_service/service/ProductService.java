package lk.kavishmanjitha.gadgetmart_web_service.service;

import lk.kavishmanjitha.gadgetmart_web_service.entity.Supplier;
import lk.kavishmanjitha.gadgetmart_web_service.model.Product;
import lk.kavishmanjitha.gadgetmart_web_service.repository.SupplierRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class ProductService {

    private final SupplierRepository supplierRepository;

    private List<Product> getProductsByApi(final String apiEndPoint, final String source) {
        List<Product> productList = new ArrayList<>();
        final RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Product[]> response = restTemplate.getForEntity(apiEndPoint, Product[].class);
        if (response.getStatusCode() == HttpStatus.OK) {
            final Product[] products = response.getBody();
            for (final Product product : products) {
                product.setSource(source);
                productList.add(product);
            }
        } else {
            throw new RuntimeException("something went wrong company name : " + source);
        }
        return productList;
    }

    public List<Product> productList() {
        List<Product> productList = new ArrayList<>();
        final List<Supplier> allActiveSuppliers = supplierRepository.findAll();
        for (final Supplier supplier : allActiveSuppliers) {
            final List<Product> products = getProductsByApi(supplier.getProductApi(), supplier.getCompanyName());
            productList.addAll(products);
        }
        return productList;
    }
}

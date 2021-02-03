package lk.kavishmanjitha.softlogic_web_service.repository;

import lk.kavishmanjitha.softlogic_web_service.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}

package lk.kavishmanjitha.gadgetmart_web_service.repository;

import lk.kavishmanjitha.gadgetmart_web_service.entity.Supplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Integer> {

}

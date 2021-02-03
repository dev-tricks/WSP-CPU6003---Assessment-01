package lk.kavishmanjitha.gadgetmart_web_service.service;

import lk.kavishmanjitha.gadgetmart_web_service.entity.Supplier;
import lk.kavishmanjitha.gadgetmart_web_service.repository.SupplierRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class SupplierService {

    private final SupplierRepository supplierRepository;

    public List<Supplier> supplierList() {
        return supplierRepository.findAll();
    }

    public Supplier saveOrUpdateSupplier(final Supplier supplier) {
        return supplierRepository.save(supplier);
    }

}

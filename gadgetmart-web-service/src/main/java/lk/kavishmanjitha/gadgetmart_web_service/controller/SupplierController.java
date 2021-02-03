package lk.kavishmanjitha.gadgetmart_web_service.controller;

import lk.kavishmanjitha.gadgetmart_web_service.entity.Supplier;
import lk.kavishmanjitha.gadgetmart_web_service.service.SupplierService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/gadgetmart/v1/supplier")
@AllArgsConstructor
public class SupplierController {

    private final SupplierService supplierService;

    @GetMapping("/list")
    public List<Supplier> supplierList() {
        return supplierService.supplierList();
    }

    @PostMapping("/save")
    public Supplier saveOrUpdateSupplier(final Supplier supplier) {
        return supplierService.saveOrUpdateSupplier(supplier);
    }

}


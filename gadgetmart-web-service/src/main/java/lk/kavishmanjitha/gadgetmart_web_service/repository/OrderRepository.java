package lk.kavishmanjitha.gadgetmart_web_service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import lk.kavishmanjitha.gadgetmart_web_service.entity.Orders;

@Repository
public interface OrderRepository extends JpaRepository<Orders, Integer> {

}

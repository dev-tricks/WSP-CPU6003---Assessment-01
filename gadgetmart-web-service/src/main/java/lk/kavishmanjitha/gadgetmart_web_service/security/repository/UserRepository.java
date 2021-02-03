package lk.kavishmanjitha.gadgetmart_web_service.security.repository;

import lk.kavishmanjitha.gadgetmart_web_service.security.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

  User findOneByUsername(String username);
}

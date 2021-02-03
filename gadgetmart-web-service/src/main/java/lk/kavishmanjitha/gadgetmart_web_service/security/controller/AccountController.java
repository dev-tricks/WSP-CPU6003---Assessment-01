package lk.kavishmanjitha.gadgetmart_web_service.security.controller;

import java.security.Principal;

import lk.kavishmanjitha.gadgetmart_web_service.security.entities.User;
import lk.kavishmanjitha.gadgetmart_web_service.security.services.UserService;
import lk.kavishmanjitha.gadgetmart_web_service.security.util.CustomErrorType;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/gadgetmart/v1/account")
@CrossOrigin
@AllArgsConstructor
public class AccountController {

    private final UserService userService;

    @PostMapping("/register")
    public ResponseEntity<?> createUser(final @RequestBody User user) {
        if (userService.loadUserByUsername(user.getUsername()) != null) {
            return new ResponseEntity(
                    new CustomErrorType("user with username " + user.getUsername() + "already exist "),
                    HttpStatus.CONFLICT);
        }
        return new ResponseEntity<User>(userService.save(user), HttpStatus.CREATED);
    }

    @RequestMapping("/login")
    public Principal user(final Principal principal) {
        return principal;
    }
}

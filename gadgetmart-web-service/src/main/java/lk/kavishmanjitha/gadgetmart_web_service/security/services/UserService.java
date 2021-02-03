package lk.kavishmanjitha.gadgetmart_web_service.security.services;

import lk.kavishmanjitha.gadgetmart_web_service.security.repository.UserRepository;
import lk.kavishmanjitha.gadgetmart_web_service.security.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
        return userRepository.findOneByUsername(username);
    }

    public User save(final User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.saveAndFlush(user);
    }
}

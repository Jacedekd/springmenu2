package com.alatoo.menu.services;

import com.alatoo.menu.models.User;
import com.alatoo.menu.models.enums.Role;
import com.alatoo.menu.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) {
        String userEmail = user.getEmail();
        if (userRepository.findByEmail(userEmail) != null) return false;

        if (userEmail.equals("admin@gmail.com")) {
            user.setActive(true);
            user.getRoles().add(Role.ROLE_ADMIN);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            log.info("Saving new User with email: {}", userEmail);
            userRepository.save(user);
        }
        else {
            user.setActive(true);
            user.getRoles().add(Role.ROLE_USER);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            log.info("Saving new User with email: {}", userEmail);
            userRepository.save(user);
        }

        return true;

    }

    public List<User> list() {
        return userRepository.findAll();
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

}

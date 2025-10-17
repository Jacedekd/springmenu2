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
import java.util.Random;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final EmailService emailService;

    public boolean createUser(User user) {
        String userEmail = user.getEmail();
        if (userRepository.findByEmail(userEmail) != null) return false;

        if (userEmail.equals("azizkazanbaev@gmail.com")) {
            user.setActive(true);
            user.getRoles().add(Role.ROLE_ADMIN);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            log.info("Saving new User with email: {}", userEmail);
            userRepository.save(user);

        }
        else {
            user.setActive(false); // Устанавливаем active=false до подтверждения email
            user.getRoles().add(Role.ROLE_USER);
            user.setPassword(passwordEncoder.encode(user.getPassword()));

            // Генерируем 6-значный код подтверждения
            String verificationCode = String.format("%06d", new Random().nextInt(999999));
            user.setVerificationCode(verificationCode);

            log.info("Saving new User with email: {}", userEmail);
            userRepository.save(user);

            // Отправляем код на email
            String subject = "Подтверждение Email";
            String body = "Ваш код подтверждения: " + verificationCode;
            emailService.sendEmail(userEmail, subject, body);
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


    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public void save(User user) {
        userRepository.save(user);
    }



}

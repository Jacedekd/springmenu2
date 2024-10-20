package com.alatoo.menu.controllers;

//import ch.qos.logback.core.model.Model;
import com.alatoo.menu.models.User;
import com.alatoo.menu.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(User user, Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/verify?email=" + user.getEmail();
    }


    @GetMapping("/verify")
    public String verifyPage(@RequestParam("email") String email, Model model, Principal principal) {
        model.addAttribute("email", email);
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "verify";
    }

    @PostMapping("/verify")
    public String verifyUser(@RequestParam("email") String email, @RequestParam("code") String code, Model model) {
        User user = userService.findByEmail(email);
        if (user == null) {
            model.addAttribute("errorMessage", "Пользователь не найден");
            return "verify";
        }
        if (user.getVerificationCode() != null && user.getVerificationCode().equals(code)) {
            user.setActive(true);
            user.setVerificationCode(null);
            userService.save(user);
            return "redirect:/login";
        } else {
            model.addAttribute("errorMessage", "Неверный код подтверждения");
            model.addAttribute("email", email);
            return "verify";
        }
    }


}

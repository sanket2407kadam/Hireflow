package com.sksolution.hireflow.controller;

import com.sksolution.hireflow.entity.User;
import com.sksolution.hireflow.service.UserService;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    // =========================
    // REGISTER
    // =========================

    @GetMapping("/register")
    public String showRegisterPage(Model model) {

        model.addAttribute("user", new User());

        return "register";
    }


    @PostMapping("/register")
    public String registerUser(
            @ModelAttribute User user,
            Model model) {

        boolean registered =
                userService.registerUser(user);

        if (!registered) {

            model.addAttribute(
                    "error",
                    "Email already registered. Please use another email."
            );

            return "register";
        }

        return "redirect:/login";
    }


    // =========================
    // LOGIN
    // =========================

    @GetMapping("/login")
    public String showLoginPage() {

        return "login";
    }


    @PostMapping("/login")
    public String loginUser(
            @RequestParam String email,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        Optional<User> userOptional =
                userService.loginUser(email, password);

        if (userOptional.isEmpty()) {

            model.addAttribute(
                    "error",
                    "Invalid email or password."
            );

            return "login";
        }

        User user = userOptional.get();

        // Store user in session
        session.setAttribute("loggedInUser", user);

        return "redirect:/dashboard";
    }


    // =========================
    // LOGOUT
    // =========================

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }
}
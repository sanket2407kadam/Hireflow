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

    // =====================================================
    // REGISTER PAGE
    // =====================================================

    @GetMapping("/register")
    public String showRegisterPage(Model model) {

        model.addAttribute("user", new User());

        return "register";
    }

    // =====================================================
    // REGISTER USER
    // =====================================================

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

    // =====================================================
    // LOGIN PAGE
    // =====================================================

    @GetMapping("/login")
    public String showLoginPage() {

        return "login";
    }

    // =====================================================
    // LOGIN USER
    // =====================================================

    @PostMapping("/login")
    public String loginUser(
            @RequestParam String email,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        // =================================================
        // ADMIN LOGIN
        // =================================================

        if ("admin@gmail.com".equalsIgnoreCase(email)
                && "admin@123".equals(password)) {

            User admin = new User();

            admin.setId(0L);
            admin.setName("Administrator");
            admin.setEmail("admin@gmail.com");
            admin.setPassword("admin@123");
            admin.setRole("ADMIN");

            session.setAttribute(
                    "loggedInUser",
                    admin
            );

            return "redirect:/admin/dashboard";
        }

        // =================================================
        // NORMAL USER LOGIN
        // =================================================

        Optional<User> userOptional =
                userService.loginUser(
                        email,
                        password
                );

        // Invalid login
        if (userOptional.isEmpty()) {

            model.addAttribute(
                    "error",
                    "Invalid email or password."
            );

            return "login";
        }

        User user = userOptional.get();

        // Store user in session
        session.setAttribute(
                "loggedInUser",
                user
        );

        // =================================================
        // ROLE CHECK
        // =================================================

        if ("ADMIN".equalsIgnoreCase(user.getRole())) {

            return "redirect:/admin/dashboard";
        }

        return "redirect:/dashboard";
    }

    // =====================================================
    // PROFILE PAGE
    // =====================================================

    @GetMapping("/profile")
    public String profile(
            HttpSession session,
            Model model) {

        User user =
                (User) session.getAttribute("loggedInUser");

        // User not logged in
        if (user == null) {
            return "redirect:/login";
        }

        model.addAttribute("user", user);

        return "profile";
    }

    // =====================================================
    // UPDATE PROFILE
    // =====================================================

    @PostMapping("/profile/update")
    public String updateProfile(
            @RequestParam String name,
            @RequestParam String email,
            HttpSession session,
            Model model) {

        User sessionUser =
                (User) session.getAttribute("loggedInUser");

        // User not logged in
        if (sessionUser == null) {
            return "redirect:/login";
        }

        // =================================================
        // ADMIN PROFILE
        // =================================================

        if ("ADMIN".equalsIgnoreCase(sessionUser.getRole())) {

            sessionUser.setName(name);

            session.setAttribute(
                    "loggedInUser",
                    sessionUser
            );

            model.addAttribute(
                    "user",
                    sessionUser
            );

            model.addAttribute(
                    "success",
                    "Profile updated successfully."
            );

            return "profile";
        }

        // =================================================
        // NORMAL USER
        // =================================================

        Optional<User> existingUser =
                userService.findByEmail(email);

        // Email belongs to another user
        if (existingUser.isPresent()
                && !existingUser.get()
                .getId()
                .equals(sessionUser.getId())) {

            model.addAttribute(
                    "user",
                    sessionUser
            );

            model.addAttribute(
                    "error",
                    "This email is already registered."
            );

            return "profile";
        }

        // Update profile
        sessionUser.setName(name);
        sessionUser.setEmail(email);

        User updatedUser =
                userService.updateUser(sessionUser);

        // Update session
        session.setAttribute(
                "loggedInUser",
                updatedUser
        );

        model.addAttribute(
                "user",
                updatedUser
        );

        model.addAttribute(
                "success",
                "Profile updated successfully."
        );

        return "profile";
    }

    // =====================================================
    // SETTINGS PAGE
    // =====================================================

    @GetMapping("/settings")
    public String settings(
            HttpSession session,
            Model model) {

        User user =
                (User) session.getAttribute("loggedInUser");

        // User not logged in
        if (user == null) {
            return "redirect:/login";
        }

        model.addAttribute(
                "user",
                user
        );

        return "settings";
    }

    // =====================================================
    // CHANGE PASSWORD
    // =====================================================

    @PostMapping("/settings/update-password")
    public String updatePassword(
            @RequestParam String currentPassword,
            @RequestParam String newPassword,
            @RequestParam String confirmPassword,
            HttpSession session,
            Model model) {

        User user =
                (User) session.getAttribute("loggedInUser");

        // User not logged in
        if (user == null) {
            return "redirect:/login";
        }

        // =================================================
        // CHECK NEW PASSWORD
        // =================================================

        if (newPassword == null
                || newPassword.trim().isEmpty()) {

            model.addAttribute(
                    "error",
                    "New password cannot be empty."
            );

            model.addAttribute(
                    "user",
                    user
            );

            return "settings";
        }

        // =================================================
        // CONFIRM PASSWORD
        // =================================================

        if (!newPassword.equals(confirmPassword)) {

            model.addAttribute(
                    "error",
                    "New password and confirm password do not match."
            );

            model.addAttribute(
                    "user",
                    user
            );

            return "settings";
        }

        // =================================================
        // UPDATE PASSWORD
        // =================================================

        boolean updated =
                userService.updatePassword(
                        user.getId(),
                        currentPassword,
                        newPassword
                );

        if (!updated) {

            model.addAttribute(
                    "error",
                    "Current password is incorrect."
            );

            model.addAttribute(
                    "user",
                    user
            );

            return "settings";
        }

        // Update password inside session object
        user.setPassword(newPassword);

        session.setAttribute(
                "loggedInUser",
                user
        );

        model.addAttribute(
                "success",
                "Password changed successfully."
        );

        model.addAttribute(
                "user",
                user
        );

        return "settings";
    }

    // =====================================================
    // LOGOUT
    // =====================================================

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }
}